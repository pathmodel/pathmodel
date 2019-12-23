#include <incmode>.

 %*
Search of metabolic pathways
allowing to reach  output metabolites from a set of input metabolites
*%

#script (lua)

function concat(reaction_name, mz)
	return "Prediction_" .. tostring(mz) .. "_" .. tostring(reaction_name)
end

#end.

#program base.

%* General definitions
%%%%%%%%%%%%%%%%%%%%%%%
*%

%*
Chemical variable:
valence(Atom type, Number of valence)
*%
valence(carb, 4). valence(nitr, 3). valence(oxyg, 2). valence(phos, 5).

% Symmetric bonds.
bond2(A,B,C,D):- bond(A,B,C,D).
bond2(A,B,C,D):- bond(A,B,D,C).

%* Definition of input and output from reaction
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*%

reactionType(TypeOfReaction):- reaction(TypeOfReaction,_,_).
output_metabolite(MoleculeName):- reaction(_,_,MoleculeName).
input_metabolite(MoleculeName):- atom(MoleculeName,_,_); not output_metabolite(MoleculeName).
metabolite(MoleculeName):- atom(MoleculeName,_,_).

#program step(t).

%* Test to see difference between two molecules
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*%
%*
difmolecules(MoleculeName1, MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber,direct):-
		    bond(MoleculeName1, BondType, FirstAtomNumber, SecondAtomNumber),
		not bond(MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber), testeddif(MoleculeName1, MoleculeName2).

testeddif("z-palythenic acid", "palythene").
testeddif("4α-methylcholest-8(9),14,24,trien-3β-ol", "4α-methylzymosterol").
testeddif(B,A):-testeddif(A,B).

*%

%* Browse reactions
%%%%%%%%%%%%%%%%%%%%
Move from molecule A to molecule B using reaction(ReactionName,A,B). A pathway is here described as the path from a molecule to another through reactions.
Use to check if we have achieved our goal.
*%

% Create metabolite, bond, atom and reaction of the inferred metabolite.
metabolite(NewMoleculeName):- predictmetabolite(NewMoleculeName, t).

atom(MoleculeName,AtomNumber,AtomType):- predictmetabolite(MoleculeName, t), newatom(MoleculeName,AtomNumber,AtomType).

bond(MoleculeName,BondType,FirstAtom,SecondAtom):- predictmetabolite(MoleculeName, t), newbond(MoleculeName,BondType,FirstAtom,SecondAtom).

bond2(MoleculeName,BondType,FirstAtom,SecondAtom):- predictmetabolite(MoleculeName, t), newbond2(MoleculeName,BondType,FirstAtom,SecondAtom).

moleculeMZ(MoleculeName, MZRatio):-  predictmetabolite(MoleculeName, t), newmoleculeMZ(MoleculeName, MZRatio).

newreaction(Reaction,ReactantInferred,NewProduct):- analogicalReasoningInference(Reaction,ReactantInferred,NewProduct), reached(ReactantInferred, t-1).

newreaction(Reaction,ReactantInferred,NewProduct):- deductiveReasoningInference(Reaction,ReactantInferred,NewProduct), reached(ReactantInferred, t-1).

reaction(Reaction,ReactantInferred,NewProduct):- analogicalReasoningInference(Reaction,ReactantInferred,NewProduct), reached(ReactantInferred, t-1).

reaction(Reaction,ReactantInferred,NewProduct):- deductiveReasoningInference(Reaction,ReactantInferred,NewProduct), reached(ReactantInferred, t-1).

% Intialize source.
reached(MoleculeName, t):- source(MoleculeName), t==1.

reached(KnownProduct, t):- source(KnownReactant), reaction(ReactionName, KnownReactant, KnownProduct), reached(KnownReactant, t-1).

% Add product found by inference methods.
source(ProductInferred):- source(Reactant), reaction(ReactionName, Reactant, ProductInferred), reached(ProductInferred, t).

inferred(pathway(Molecule1,Molecule2), t):- reaction(ReactionName,Molecule1,Molecule2), reached(Molecule2, t).
inferred(pathway(Molecule1,ProductInferred), t):- reaction(ReactionName,Molecule2,ProductInferred), reached(ProductInferred, t), inferred(pathway(Molecule1,Molecule2), t-1).
% Error with inferred (need to keep older inferred?)
inferred(pathway(Molecule1,ProductInferred), t):-inferred(pathway(Molecule1,ProductInferred), t-1).


%* Metabolite Inference Method
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*%

% Analogical reasoning: Using all known reactions between two metabolites, new metabolites are created from a known metabolite.
% The known metabolite must share a domain with the two other molecules and if it has the same site before reaction than the reactant,
% then a new metablolite is created by analogy by taking the structure of the known metabolite and the change made by the reaction on the two other molecules.
% This new metabolite is compared to the database to check if it is not a known metabolite and filtered using its MZ ratio.

% Rule to infer new punctual metabolites: new metabolite @g(ReactantInferred, Reaction), can be the product of metabolite ReactantInferred by reaction Reaction.
% This method works with analogy reasoning. Using known reactions, the method will use these reactions to infer new reactions between molecules.
% The reaction sites are defined with the ReactionCreation.lp script.
% First we search for a reference reaction. Then we take two metabolite and look if the reference reaction doesn't exist between them.
% A known reaction is used to infer a new reaction between a known molecule and a new molecule.

newmetaboliteName(@concat(Reaction, MZHypothetic),ReactantInferred,Reaction,Domain):-
							reaction(Reaction,ReactantReference,ProductReference); metabolite(ReactantInferred); reached(ReactantInferred, t);
							% Check if the three molecules have the same domain.
							domain(ReactantInferred,Domain);domain(ReactantReference,Domain);domain(ProductReference,Domain);
							% Check if reaction site are present in each molecule.
							siteBeforeReaction(Reaction,ReactantInferred);siteBeforeReaction(Reaction,ReactantReference);siteAfterReaction(Reaction,ProductReference);
							% Check if the reactant to infer is in the organism.
							not absentmolecules(ReactantInferred);
							reactionMZ(Reaction,ReactionMZ);
							moleculeMZ(ReactantInferred, ReactantInferredMZ);
							MZHypothetic = ReactantInferredMZ - ReactionMZ.

% Compute an hypothetic MZ for new molecule.
hypotheticMZ(MoleculeName, MZHypothetic):- newmetaboliteName(MoleculeName,ReactantInferred,Reaction,Domain), reactionMZ(Reaction,ReactionMZ),
								moleculeMZ(ReactantInferred, ReactantInferredMZ),
								MZHypothetic = ReactantInferredMZ - ReactionMZ.

possibleMetabolite(MoleculeName,ReactantInferred, Reaction, Domain):- newmetaboliteName(MoleculeName,ReactantInferred, Reaction, Domain),
																		hypotheticMZ(MoleculeName,MZFilter), mzfiltering(MZFilter).

newmetabolite(MoleculeName):- possibleMetabolite(MoleculeName,ReactantInferred, Reaction, Domain).

% Create new metabolite atoms and bonds.

newatom(MoleculeName,AtomNumber,AtomType):- atom(ReactantInferred,AtomNumber,AtomType), not diffAtomBeforeReaction(Reaction,AtomNumber,AtomType),possibleMetabolite(MoleculeName,ReactantInferred, Reaction,Domain).
newatom(MoleculeName,AtomNumber,AtomType):- diffAtomAfterReaction(Reaction,AtomNumber,AtomType),possibleMetabolite(MoleculeName,ReactantInferred, Reaction,Domain).

newbond(MoleculeName,BondType,FirstAtom,SecondAtom):- bond(ReactantInferred,BondType,FirstAtom,SecondAtom), not diffBondBeforeReaction(Reaction,BondType,FirstAtom,SecondAtom),possibleMetabolite(MoleculeName,ReactantInferred,Reaction,Domain).
newbond(MoleculeName,BondType,FirstAtom,SecondAtom):- diffBondAfterReaction(Reaction,BondType,FirstAtom,SecondAtom),possibleMetabolite(MoleculeName,ReactantInferred, Reaction,Domain).

newbond2(MoleculeName,BondType,FirstAtom,SecondAtom):- newbond(MoleculeName,BondType,FirstAtom,SecondAtom).
newbond2(MoleculeName,BondType,FirstAtom,SecondAtom):- newbond(MoleculeName,BondType,SecondAtom,FirstAtom).

% Compute MZ for new metabolite.

% numberHydrogens provides the number of hydrogens associated with each atoms.
% numberHydrogens(MoleculeName, AtomNumber, number of Hydrogen bonded with the atom)
newnumberHydrogens(MoleculeName, AtomNumber, NumberHydrogen) :-
	NumberOfBonds2={newbond2(MoleculeName, double, AtomNumber, SecondAtomNumber)};
	NumberOfBonds1=#sum{1, SecondAtomNumber, BoundType: newbond2(MoleculeName, BoundType, AtomNumber, SecondAtomNumber), BoundType != double};
	newatom(MoleculeName, AtomNumber, AtomeType);
	valence(AtomeType, ValenceNumber);
	NumberHydrogen=ValenceNumber - NumberOfBonds1- 2*NumberOfBonds2; NumberHydrogen=0..ValenceNumber.

% moleculeComposition shows the number of Carbon, Hydrogen, Oxygen and Nitrogen in the molecule.
% moleculeComposition(MoleculeName, Number of Carbon, Number of Hydrogen, Number of Oxygen, Number of Nitrogen)
newmoleculeComposition(MoleculeName, NumberCarbon, NumberHydrogen, NumberOxygen, NumberNitrogen, NumberPhosphorus) :-
	NumberHydrogen=#sum{NumberHydrogenAtom, AtomNumber: newnumberHydrogens(MoleculeName, AtomNumber, NumberHydrogenAtom)},
	NumberCarbon={newatom(MoleculeName, AtomNumber , carb)},
	NumberOxygen={newatom(MoleculeName, AtomNumber , oxyg)},
	NumberNitrogen={newatom(MoleculeName, AtomNumber , nitr)},
	NumberPhosphorus={newatom(MoleculeName, AtomNumber , phos)},
	newmetabolite(MoleculeName).

%moleculeNbAtoms provides the total number of atoms in a compound
newmoleculeNbAtoms(MoleculeName, NumberCarbon + NumberHydrogen + NumberOxygen + NumberNitrogen + NumberPhosphorus):-
	newmoleculeComposition(MoleculeName, NumberCarbon, NumberHydrogen, NumberOxygen, NumberNitrogen, NumberPhosphorus),
	newmetabolite(MoleculeName).

% moleculeMZ computes the M/Z ratio for each new molecule.
% moleculeMZ(MoleculeName, M/Z ratio*10000)
% Because in ASP there is no decimal, all the atomic masses have been multiplied by 10 0000. If you want the real M/Z ratio, divide the M/Z ratio by 10 0000.
newmoleculeMZ(MoleculeName, 120107*NumberCarbon + 10074*NumberHydrogen + 159994*NumberOxygen + 140067*NumberNitrogen + 309738*NumberPhosphorus) :-
		newmoleculeComposition(MoleculeName, NumberCarbon, NumberHydrogen, NumberOxygen, NumberNitrogen, NumberPhosphorus),
		newmetabolite(MoleculeName).

newmoleculeNbAtoms(MoleculeName, NumberCarbon + NumberOxygen + NumberNitrogen + NumberPhosphorus):- newmoleculeComposition(MoleculeName, NumberCarbon, _, NumberOxygen, NumberNitrogen, NumberPhosphorus).

newnumberTotalBonds(MoleculeName,NumberTotalOfBonds):-  NumberTotalOfBonds={newbond(MoleculeName, BoundType, AtomNumber, SecondAtomNumber)}; newmetabolite(MoleculeName).

% Check if new molecules have the same MZ than already known molecules.
possibleKnownMolecule(NewMoleculeName):- newmoleculeMZ(NewMoleculeName,NewMoleculeMZ), moleculeMZ(KnownMolecule,KnownMoleculeMZ),
											NewMoleculeMZ==KnownMoleculeMZ.

% Check if new molecules aren't known molecules.
alreadyKnownMolecule(NewMoleculeName):- possibleKnownMolecule(NewMoleculeName); metabolite(KnownMolecule);
												% Check the number of atoms between the new metabolite and all the known molecules.
												newmoleculeNbAtoms(NewMoleculeName, NumberOfAtoms); moleculeNbAtoms(KnownMolecule, NumberOfAtomsInRef);
												NumberOfAtoms==NumberOfAtomsInRef;
												% Check the number of bonds between the new metabolite and all the known molecules.
												newnumberTotalBonds(NewMoleculeName,NumberTotalOfBonds); numberTotalBonds(KnownMolecule,NumberTotalOfBonds);
												% Check that all atoms are similar from the atoms of a known molecule.
												newatom(NewMoleculeName,AtomNumber,AtomType): atom(KnownMolecule,AtomNumber,AtomType);
												% Check that all bonds are similar from the bonds of a known molecule.
												newbond(NewMoleculeName, BondType, FirstAtomNumber, SecondAtomNumber): bond(KnownMolecule, BondType, FirstAtomNumber, SecondAtomNumber).

% Filtering using M/Z and already known metabolites.
% Keep only new metabolite having the M/Z required.
predictmetabolite(NewMoleculeName, t):- newmetabolite(NewMoleculeName), newmoleculeMZ(NewMoleculeName, MZFilter), mzfiltering(MZFilter),
									not alreadyKnownMolecule(NewMoleculeName).

predictatom(MoleculeName,AtomNumber,AtomType):- newatom(MoleculeName,AtomNumber,AtomType), predictmetabolite(MoleculeName, t).

predictbond(MoleculeName,BondType,FirstAtom,SecondAtom):- newbond(MoleculeName,BondType,FirstAtom,SecondAtom), predictmetabolite(MoleculeName, t).

% Create newreaction from inferred metabolite.
analogicalReasoningInference(Reaction,ReactantInferred,NewProduct):- predictmetabolite(NewProduct, t), possibleMetabolite(NewProduct,ReactantInferred,Reaction,Domain).

% Create the siteBeforeReaction for the new metabolite.
siteBeforeReaction(ReactionType,MoleculeName):- reactionType(ReactionType); newmetabolite(MoleculeName); predictmetabolite(MoleculeName, t);
                                                    newatom(MoleculeName,AtomNumber,AtomType): diffAtomBeforeReaction(ReactionType, AtomNumber, AtomType);
			                                        newbond(MoleculeName,BondType,FirstAtomNumber,SecondAtomNumber):
                                                        diffBondBeforeReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber);
                                                    not newbond(MoleculeName,BondType,FirstAtomNumber,SecondAtomNumber):
                                                        diffBondAfterReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber).

% Create the siteAfterReaction for the new metabolite.
siteAfterReaction(ReactionType,MoleculeName):- reactionType(ReactionType); newmetabolite(MoleculeName); predictmetabolite(MoleculeName, t);
                                                    newatom(MoleculeName,AtomNumber,AtomType): diffAtomAfterReaction(ReactionType, AtomNumber, AtomType);
			                                        newbond(MoleculeName,BondType,FirstAtomNumber,SecondAtomNumber):
                                                        diffBondAfterReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber);
                                                    not newbond(MoleculeName,BondType,FirstAtomNumber,SecondAtomNumber):
                                                        diffBondBeforeReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber).

% New metabolite found by the Metabolite Inference Method can be reach.
reached(ProductInferred, t):- predictmetabolite(ProductInferred, t), possibleMetabolite(ProductInferred,Reactant,Reaction,Domain), reached(Reactant, t).

% New metabolite is associated to the domain of its reactant.
domain(ProductInferred,Domain):- predictmetabolite(ProductInferred, t), possibleMetabolite(ProductInferred,Reactant,Reaction,Domain).

%* Reaction Inference Method
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*%

% Deductive reasoning: a reaction between two molecules (reference). These two molecules share a chemical (like sterane for sterol) domain with two other molecules (to infer).
% One molecule to infer has the same chemical structure (atoms + bonds) on the reaction site than the reactant of reference (site before reaction).
% And the other molecule to infer has the same structure than the product of reference (site after reaction).
% And the two molecules to infer have the same structure except for the reaction site.
% Then the reaction between reference is inferred between the two molecules to infer.

% Rule to infer new punctual reactions: metabolite ProductInferred can be the product of metabolite ReactantInferred by reaction Reaction.
% This method works with reasoning with analogy. Using known reactions, the method will use these reactions to infer new reaction between molecules.
% The reaction sites are defined with the ReactionCreation.lp script.
% First we search for a reference reaction. Then we take two metabolites and look if the reference reaction doesn't exist between them.
% We also check if the two metabolites are not the same.
% In a second point we check if the four molecules (two molecules from reference reaction and two tested metabolites) have a domain in common.
% Then we search in one of the two metabolites if it contains a region corresponding to the site of reaction of the ReactantReference (the site that will be modified by the reaction).
% We also search in the other metabolite if it contains a region corresponding to the site of reaction of the ProductReference (the site modified by the reaction).
% And we check if all atoms and bonds are the same between ReactantInferred and ProductInferred, except from the atoms and bonds implied in the reaction

deductiveReasoningInference(Reaction,ReactantInferred,ProductInferred):- reaction(Reaction,ReactantReference,ProductReference); metabolite(ReactantInferred); metabolite(ProductInferred); reached(ReactantInferred, t);
							not reaction(Reaction,ReactantInferred,ProductInferred); ReactantInferred != ProductInferred;
							% Check the two molecules to infer are not present in the organism.
							not absentmolecules(ReactantInferred); not absentmolecules(ProductInferred);
							% Check if the four molecules have the same domain.
							domain(ReactantInferred,Domain);domain(ProductInferred,Domain);domain(ReactantReference,Domain);domain(ProductReference,Domain);
							% Check if reaction site are present in each molecule.
							siteBeforeReaction(Reaction,ReactantInferred);siteBeforeReaction(Reaction,ReactantReference);siteAfterReaction(Reaction,ProductInferred);siteAfterReaction(Reaction,ProductReference);
							% Four comparisons to check if other than reaction site ReactantInferred == ProductInferred:
							% Check if atoms of ReactantInferred mapped from atoms of ProductInferred.
							atom(ReactantInferred,AtomNumber,AtomType):atom(ProductInferred,AtomNumber,AtomType), not diffAtomAfterReaction(Reaction,AtomNumber,AtomType);
							% Check if atoms of ProductInferred mapped from atoms of ReactantInferred.
							atom(ProductInferred,AtomNumber,AtomType):atom(ReactantInferred,AtomNumber,AtomType), not diffAtomBeforeReaction(Reaction,AtomNumber,AtomType);
							% Check if bonds of ReactantInferred mapped from bonds of ProductInferred.
							bond(ReactantInferred,BondType,FirstAtom,SecondAtom):bond(ProductInferred,BondType,FirstAtom,SecondAtom), not diffBondAfterReaction(Reaction,BondType,FirstAtom,SecondAtom);
							% Check if bonds of ProductInferred mapped from bonds of ReactantInferred.
							bond(ProductInferred,BondType,FirstAtom,SecondAtom):bond(ReactantInferred,BondType,FirstAtom,SecondAtom), not diffBondBeforeReaction(Reaction,BondType,FirstAtom,SecondAtom).

% Defining the result of generic reactions
% Generic method which is supposed to replace all the methods below.
% Map all the atom of Reactant in Product except atoms occuring in reaction.
atom(ProductName,AtomNumber,AtomType):- reaction(Reaction,ReactantName,ProductName); atom(ReactantName,AtomNumber,AtomType); not diffAtomBeforeReaction(Reaction,AtomNumber,AtomType).
% Map atoms in the reaction.
atom(ProductName,AtomNumber,AtomType):- reaction(Reaction,ReactantName,ProductName); atom(ReactantName,AtomNumber,AtomType); diffAtomAfterReaction(Reaction,AtomNumber,AtomType).
% Map all the bonds of Reactant in Product except bonds occruing in reaction.
bond(ProductName,BondType,FirstAtomeNumber,SecondAtomeNumber):- reaction(Reaction,ReactantName,ProductName); bond(ReactantName,BondType,FirstAtomeNumber,SecondAtomeNumber);
																	not diffBondBeforeReaction(Reaction,BondType,FirstAtomeNumber,SecondAtomeNumber).
% Map bonds in the reaction.
bond(ProductName,BondType,FirstAtomeNumber,SecondAtomeNumber):- reaction(Reaction,ReactantName,ProductName); diffBondAfterReaction(Reaction,BondType,FirstAtomeNumber,SecondAtomeNumber).

#program check(t).
:- goal(F), query(t), not inferred(F,t).

#show newreaction/3.
#show reaction/3.
#show inferred/2.
#show predictatom/3.
#show predictbond/4.
