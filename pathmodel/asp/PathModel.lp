#include <incmode>.

 %*
Search of metabolic pathways
allowing to reach  output metabolites from a set of input metabolites
*%

#script (python)
import clingo
import hashlib

def name_metabolite(reactant_name, reaction_name, domain_reference):
	"""
	Rename new metabolite inferred.
	"""
	name = str(reactant_name) + str(reaction_name) + str(domain_reference)
	name = name .encode('utf8')
	hash_name = str(int(hashlib.sha1(name).hexdigest(), 16) % (10 ** 8))
	new_product_inferred = "Prediction_" + str(hash_name)
	return new_product_inferred

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

% A side chain in a compound M is a maximal suite of carbons starting from atom number 1. It ends at atom number End
sidechain(M,1,End):-  atom(M,End,carb); atom(M,End+1,A); A!=carb; atom(M,X,carb):X=1..End.
%sidechain(M,Start1+1,End):-  atom(M,End,carb), atom(M,End+1,A), A!=carb, 
%	atom(M,Start1,B), B!=carb, Start1>0, atom(M,X,carb): X=Start1+1..End-1.

%*
Definition of domain
domain(MoleculeName, DomainName)

Definition of sterane
Based on the wikipedia structure: https://fr.wikipedia.org/wiki/St%C3%A9rane#/media/File:Steran_num_ABCD.svg
One exception the bound between carbone 7 and carbone 8 has variable for the bond type to include the 7-dehydrocholesterol
because of the double bond instead of the single.
*%
domain(MoleculeName, sterane) :- atom(MoleculeName,Atome1,carb), atom(MoleculeName,Atome2,carb), atom(MoleculeName,Atome3,carb),
									atom(MoleculeName,Atome4,carb), atom(MoleculeName,Atome5,carb), atom(MoleculeName,Atome6,carb),
									atom(MoleculeName,Atome7,carb), atom(MoleculeName,Atome8,carb), atom(MoleculeName,Atome9,carb),
									atom(MoleculeName,Atome10,carb), atom(MoleculeName,Atome11,carb), atom(MoleculeName,Atome12,carb),
									atom(MoleculeName,Atome13,carb), atom(MoleculeName,Atome14,carb), atom(MoleculeName,Atome15,carb),
									atom(MoleculeName,Atome16,carb), atom(MoleculeName,Atome17,carb),
									bond(MoleculeName,BondType1,Atome1,Atome2), bond(MoleculeName,BondType8,Atome1,Atome10), bond(MoleculeName,BondType15,Atome2,Atome3),
									bond(MoleculeName,BondType2,Atome3,Atome4), bond(MoleculeName,BondType9,Atome4,Atome5), bond(MoleculeName,BondType16,Atome5,Atome6),
									bond(MoleculeName,BondType3,Atome5,Atome10), bond(MoleculeName,BondType10,Atome6,Atome7), bond(MoleculeName,BondType17,Atome7,Atome8),
									bond(MoleculeName,BondType4,Atome8,Atome9), bond(MoleculeName,BondType11,Atome8,Atome14), bond(MoleculeName,BondType18,Atome9,Atome10),
									bond(MoleculeName,BondType5,Atome9,Atome11), bond(MoleculeName,BondType12,Atome11,Atome12), bond(MoleculeName,BondType19,Atome12,Atome13),
									bond(MoleculeName,BondType6,Atome13,Atome14), bond(MoleculeName,BondType13,Atome13,Atome17), bond(MoleculeName,BondType20,Atome14,Atome15),
									bond(MoleculeName,BondType7,Atome15,Atome16), bond(MoleculeName,BondType14,Atome16,Atome17).

% Definition of a cyclohexene
domain(MoleculeName, cyclohexene) :- atom(MoleculeName,Atome1,carb), atom(MoleculeName,Atome2,carb), atom(MoleculeName,Atome3,carb),
									atom(MoleculeName,Atome4,carb), atom(MoleculeName,Atome5,carb), atom(MoleculeName,Atome6,carb),
									bond(MoleculeName,double,Atome1,Atome2), bond(MoleculeName,single,Atome2,Atome3), bond(MoleculeName,single,Atome3,Atome4),
									bond(MoleculeName,single,Atome4,Atome5), bond(MoleculeName,single,Atome5,Atome6), bond(MoleculeName,single,Atome1,Atome6).

domain(MoleculeName, glycine, Atome5) :- atom(MoleculeName,Atome1,carb), atom(MoleculeName,Atome2,carb), atom(MoleculeName,Atome3,oxyg),
								atom(MoleculeName,Atome4,oxyg), atom(MoleculeName,Atome5,nitr),
								bond(MoleculeName,single,Atome1,Atome2),  bond(MoleculeName,single,Atome2,Atome3), bond(MoleculeName,double,Atome2,Atome4),
								bond(MoleculeName,single,Atome5,Atome1), not domain(MoleculeName, threonine, Atome5), not domain(MoleculeName, serine, Atome5).


domain(MoleculeName, threonine, Atome7) :- atom(MoleculeName,Atome1,carb), atom(MoleculeName,Atome2,carb), atom(MoleculeName,Atome3,oxyg),
								atom(MoleculeName,Atome4,carb), atom(MoleculeName,Atome5,oxyg), atom(MoleculeName,Atome6,oxyg),
								atom(MoleculeName,Atome7,nitr), atom(MoleculeName,Atome8,carb),
								bond(MoleculeName,single,Atome1,Atome2),  bond(MoleculeName,single,Atome2,Atome3), bond(MoleculeName,single,Atome2,Atome8),
								bond(MoleculeName,single,Atome1,Atome4),
								bond(MoleculeName,double,Atome4,Atome5), bond(MoleculeName,single,Atome4,Atome6), bond(MoleculeName,single,Atome7,Atome1).


domain(MoleculeName, serine, Atome7) :- atom(MoleculeName,Atome1,carb), atom(MoleculeName,Atome2,carb), atom(MoleculeName,Atome3,oxyg),
								atom(MoleculeName,Atome4,carb), atom(MoleculeName,Atome5,oxyg), atom(MoleculeName,Atome6,oxyg),
								atom(MoleculeName,Atome7,nitr),
								bond(MoleculeName,single,Atome1,Atome2),  bond(MoleculeName,single,Atome2,Atome3), bond(MoleculeName,single,Atome1,Atome4),
								bond(MoleculeName,double,Atome4,Atome5), bond(MoleculeName,single,Atome4,Atome6), bond(MoleculeName,single,Atome7,Atome1),
								Atome2 != Atome4, not domain(MoleculeName, threonine, Atome7).

domain(MoleculeName, ethanolamine, Atome7) :- atom(MoleculeName,Atome1,carb), atom(MoleculeName,Atome2,carb), atom(MoleculeName,Atome3,oxyg),
								atom(MoleculeName,Atome7,nitr),
								bond(MoleculeName,single,Atome1,Atome2),  bond(MoleculeName,single,Atome2,Atome3), bond(MoleculeName,single,Atome7,Atome1),
								not domain(MoleculeName, threonine, Atome7), not domain(MoleculeName, serine, Atome7), not domain(MoleculeName, glycine, Atome7).


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
Move from molecule A to molecule B using reaction(ReactionName,A,B). A pathway is here described as the path from a moleucle to another through reactions.
Use to check if we have achieved our goal.
*%

% Create metabolite, bond, atom and reaction of the inferred metabolite.
metabolite(NewMoleculeName):- testmetabolite(NewMoleculeName, t).

atom(MoleculeName,AtomNumber,AtomType):- testmetabolite(MoleculeName, t), newatom(MoleculeName,AtomNumber,AtomType).

bond(MoleculeName,BondType,FirstAtom,SecondAtom):- testmetabolite(MoleculeName, t), newbond(MoleculeName,BondType,FirstAtom,SecondAtom).

bond2(MoleculeName,BondType,FirstAtom,SecondAtom):- testmetabolite(MoleculeName, t), newbond2(MoleculeName,BondType,FirstAtom,SecondAtom).

moleculeMZ(MoleculeName, MZRatio) :-  testmetabolite(MoleculeName, t), newmoleculeMZ(MoleculeName, MZRatio).

reaction(Reaction,ReactantInferred,NewProduct):- newreaction(Reaction,ReactantInferred,NewProduct), reached(ReactantInferred, t-1).

% Intialize source.
reached(MoleculeName, t):- source(MoleculeName), t==1.

reached(KnownProduct, t):- source(KnownReactant), reaction(ReactionName, KnownReactant, KnownProduct), reached(KnownReactant, t-1).

% Add product found by inference methods.
source(ProductInferred):- source(Reactant), reaction(ReactionName, Reactant, ProductInferred), reached(ProductInferred, t).

inferred(pathway(Molecule1,Molecule2), t):- reaction(ReactionName,Molecule1,Molecule2), reached(Molecule2, t).
inferred(pathway(Molecule1,ProductInferred), t):- reaction(ReactionName,Molecule2,ProductInferred), reached(ProductInferred, t), inferred(pathway(Molecule1,Molecule2), t-1).
% Error with inferred (need to keep older inferred?)
inferred(pathway(Molecule1,ProductInferred), t):-inferred(pathway(Molecule1,ProductInferred), t-1).

%*
solution(M1,M2,t):- inferred(pathway(M1, M2),t).
solution(M1,M3,t):- inferred(pathway(M2,M3),t+1), inferred(pathway(M1,M2),t).
*%


%* Metabolite Inference Method
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*%

% Rule to infer new punctual metabolites: new metabolite @g(ReactantInferred, Reaction), can be the product of metabolite ReactantInferred by reaction Reaction.
% This method work with reasoning with analogy. Using known reactions, the method will use these reactions to infer new reaction between molecules.
% The reaction sites are defined with the ReactionCreation.lp script.
% First we search for a reference reaction. Then we take two metabolite and look if the reference reaction doesn't exist between them.
% A known reaction is used to infer a new reaction between a known molecule and a new molecule.

newmetaboliteName(@name_metabolite(ReactantInferred, Reaction, Domain),ReactantInferred, Reaction, Domain):-
							reaction(Reaction,ReactantReference,ProductReference); metabolite(ReactantInferred); reached(ReactantInferred, t);
							% Check if the three molecules have the same domain.
							domain(ReactantInferred,Domain);domain(ReactantReference,Domain);domain(ProductReference,Domain);
							% Check if reaction site are present in each molecule.
							siteBeforeReaction(Reaction,ReactantInferred);siteBeforeReaction(Reaction,ReactantReference);siteAfterReaction(Reaction,ProductReference).

% Compute an hypothetic MZ for new molecule.
hypotheticMZ(MoleculeName, MZHypothetic):- newmetaboliteName(MoleculeName,ReactantInferred,Reaction,Domain), reactionMZ(Reaction,ReactionMZ),
								moleculeMZ(ReactantInferred, ReactantInferredMZ),
								MZHypothetic = ReactantInferredMZ - ReactionMZ.

possibleMetabolite(MoleculeName,ReactantInferred, Reaction, Domain):- newmetaboliteName(MoleculeName,ReactantInferred, Reaction, Domain),
																		hypotheticMZ(MoleculeName,MZFilter), mzfiltering(MZFilter).

newmetabolite(MoleculeName):- possibleMetabolite(MoleculeName,ReactantInferred, Reaction, Domain).

% Create new metabolite atoms and bonds.

newatom(MoleculeName,AtomNumber,AtomType):-atom(ReactantInferred,AtomNumber,AtomType), not diffAtomBeforeReaction(Reaction,AtomNumber,AtomType),possibleMetabolite(MoleculeName,ReactantInferred, Reaction,Domain).
newatom(MoleculeName,AtomNumber,AtomType):- diffAtomAfterReaction(Reaction,AtomNumber,AtomType),possibleMetabolite(MoleculeName,ReactantInferred, Reaction,Domain).

newbond(MoleculeName,BondType,FirstAtom,SecondAtom):-bond(ReactantInferred,BondType,FirstAtom,SecondAtom), not diffBondBeforeReaction(Reaction,BondType,FirstAtom,SecondAtom),possibleMetabolite(MoleculeName,ReactantInferred,Reaction,Domain).
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
% Because in ASP there is no decimal, all the atomic masses have been multiplied by 10 0000. If you want the real M/Z ratio divide the M/Z ratio by 10 0000.
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
testmetabolite(NewMoleculeName, t):- newmetabolite(NewMoleculeName), newmoleculeMZ(NewMoleculeName, MZFilter), mzfiltering(MZFilter),
									not alreadyKnownMolecule(NewMoleculeName).

% Create newreaction from inferred metabolite.
newreaction(Reaction,ReactantInferred,NewProduct):- testmetabolite(NewProduct, t), possibleMetabolite(NewProduct,ReactantInferred,Reaction,Domain).

% Create the siteBeforeReaction for the new metabolite.
siteBeforeReaction(ReactionType,MoleculeName):- reactionType(ReactionType); newmetabolite(MoleculeName); testmetabolite(MoleculeName, t);
                                                    newatom(MoleculeName,AtomNumber,AtomType): diffAtomBeforeReaction(ReactionType, AtomNumber, AtomType);
			                                        newbond(MoleculeName,BondType,FirstAtomNumber,SecondAtomNumber):
                                                        diffBondBeforeReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber);
                                                    not newbond(MoleculeName,BondType,FirstAtomNumber,SecondAtomNumber):
                                                        diffBondAfterReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber).

% Create the siteAfterReaction for the new metabolite.
siteAfterReaction(ReactionType,MoleculeName):- reactionType(ReactionType); newmetabolite(MoleculeName); testmetabolite(MoleculeName, t);
                                                    newatom(MoleculeName,AtomNumber,AtomType): diffAtomAfterReaction(ReactionType, AtomNumber, AtomType);
			                                        newbond(MoleculeName,BondType,FirstAtomNumber,SecondAtomNumber):
                                                        diffBondAfterReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber);
                                                    not newbond(MoleculeName,BondType,FirstAtomNumber,SecondAtomNumber):
                                                        diffBondBeforeReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber).

% New metabolite found by the Metabolite Inference Method can be reach.
reached(ProductInferred, t):- testmetabolite(ProductInferred, t), possibleMetabolite(ProductInferred,Reactant,Reaction,Domain), reached(Reactant, t).

% New metabolite is associated to the domain of its reactant.
domain(ProductInferred,Domain):- testmetabolite(ProductInferred, t), possibleMetabolite(ProductInferred,Reactant,Reaction,Domain).

%* Reaction Inference Method
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*%

% Rule to infer new punctual reactions: metabolite ProductInferred can be the product of metabolite ReactantInferred by reaction Reaction.
% This method work with reasoning with analogy. Using known reactions, the method will use these reactions to infer new reaction between molecules.
% The reaction sites are defined with the ReactionCreation.lp script.
% First we search for a reference reaction. Then we take two metabolite and look if the reference reaction doesn't exist between them.
% We also check if the two metabolites are not the same.
% In a second point we check if the four molecules (two molecules from reference reaction and two tested metabolites) have a domain in common.
% Then we search in one of the two metabolites if it contains a region corresponding to the site of reaction of the ReactantReference (the site that will be modified by the reaction).
% We also search in the other metabolite if it contains a region corresponding to the site of reaction of the ProductReference (the site modified by the reaction).
% And we check if all atoms and bonds are the same between ReactantInferred and ProductInferred, except from the atoms and bonds implied in the reaction

newreaction(Reaction,ReactantInferred,ProductInferred):- reaction(Reaction,ReactantReference,ProductReference); metabolite(ReactantInferred); metabolite(ProductInferred); reached(ReactantInferred, t);
							not reaction(Reaction,ReactantInferred,ProductInferred); ReactantInferred != ProductInferred;
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
%#show alreadyKnownMolecule/1.
%#show testmetabolite/2.
%#show input_metabolite/1.
%#show output_metabolite/1.
%#show reaction/3.
%#show domain/2.
%#show moleculeMZ/2.

%* Expected output

newreaction(c22_desaturation,"cholesterol", "22-dehydrocholesterol"). #### Already OK

# Hypothese 1 (minimize unkown steps)
newreaction(dehydration,"palythinol","palythine").

# Hypothese 2 (minimize unkown reaction types)
newreaction(decarboxylation,"shinorine","asterina-330").  #### Already present (extracted from "Mycosporine-Like Amino Acids: Relevant Secondary Metabolites. Chemical and Ecological Aspects" Carreto & Carignan 2011)
newreaction(dehydration,"asterina-330","hypothetic_MAA_1").  #### Already OK
hypothetic_MAA_1
newreaction(decarboxylation,"porphyra-334","hypothetic_MAA_2").  #### Already OK
hypothetic_MAA_2
mz(hypothetic_MAA_1)=270,2720  #### Already OK
mz(hypothetic_MAA_2)=302,3117  #### Already OK
*%