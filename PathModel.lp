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
	Rename new metabolite infered.
	"""
	name = str(reactant_name) + str(reaction_name) + str(domain_reference)
	hash_name = str(int(hashlib.sha1(name).hexdigest(), 16) % (10 ** 8))
	new_product_infered = "Prediction_" + str(hash_name)
	return new_product_infered

#end.

#program base.

%* General definitions
%%%%%%%%%%%%%%%%%%%%%%%
*%

%*
Chemical variable:
valence(Atom type, Number of valence)
*%
valence(carb, 4). valence(nitr, 3). valence(oxyg, 2).

%atom provides the atom numbers in a compound
atom(MoleculeName, AtomNumber):- component(MoleculeName, AtomNumber, _). 

% A side chain in a compound M is a maximal suite of carbons starting from atom number 1. It ends at atom number End
sidechain(M,1,End):-  component(M,End,carb); component(M,End+1,A); A!=carb; component(M,X,carb):X=1..End.
%sidechain(M,Start1+1,End):-  component(M,End,carb), component(M,End+1,A), A!=carb, 
%	component(M,Start1,B), B!=carb, Start1>0, component(M,X,carb): X=Start1+1..End-1.

%*
Definition of domain
class(MoleculeName, DomainName)

Definition of sterane
Based on the wikipedia structure: https://fr.wikipedia.org/wiki/St%C3%A9rane#/media/File:Steran_num_ABCD.svg
One exception the bound between carbone 7 and carbone 8 has variable for the bond type to include the 7-dehydrocholesterol
because of the double bond instead of the simple.
*%
class(MoleculeName, sterane) :- component(MoleculeName,Atome1,carb), component(MoleculeName,Atome2,carb), component(MoleculeName,Atome3,carb),
									component(MoleculeName,Atome4,carb), component(MoleculeName,Atome5,carb), component(MoleculeName,Atome6,carb),
									component(MoleculeName,Atome7,carb), component(MoleculeName,Atome8,carb), component(MoleculeName,Atome9,carb),
									component(MoleculeName,Atome10,carb), component(MoleculeName,Atome11,carb), component(MoleculeName,Atome12,carb),
									component(MoleculeName,Atome13,carb), component(MoleculeName,Atome14,carb), component(MoleculeName,Atome15,carb),
									component(MoleculeName,Atome16,carb), component(MoleculeName,Atome17,carb),
									link(MoleculeName,BondType1,Atome1,Atome2), link(MoleculeName,BondType8,Atome1,Atome10), link(MoleculeName,BondType15,Atome2,Atome3),
									link(MoleculeName,BondType2,Atome3,Atome4), link(MoleculeName,BondType9,Atome4,Atome5), link(MoleculeName,BondType16,Atome5,Atome6),
									link(MoleculeName,BondType3,Atome5,Atome10), link(MoleculeName,BondType10,Atome6,Atome7), link(MoleculeName,BondType17,Atome7,Atome8),
									link(MoleculeName,BondType4,Atome8,Atome9), link(MoleculeName,BondType11,Atome8,Atome14), link(MoleculeName,BondType18,Atome9,Atome10),
									link(MoleculeName,BondType5,Atome9,Atome11), link(MoleculeName,BondType12,Atome11,Atome12), link(MoleculeName,BondType19,Atome12,Atome13),
									link(MoleculeName,BondType6,Atome13,Atome14), link(MoleculeName,BondType13,Atome13,Atome17), link(MoleculeName,BondType20,Atome14,Atome15),
									link(MoleculeName,BondType7,Atome15,Atome16), link(MoleculeName,BondType14,Atome16,Atome17).

% Definition of a cyclohexene
class(MoleculeName, cyclohexene) :- component(MoleculeName,Atome1,carb), component(MoleculeName,Atome2,carb), component(MoleculeName,Atome3,carb),
									component(MoleculeName,Atome4,carb), component(MoleculeName,Atome5,carb), component(MoleculeName,Atome6,carb),
									link(MoleculeName,double,Atome1,Atome2), link(MoleculeName,simple,Atome2,Atome3), link(MoleculeName,simple,Atome3,Atome4),
									link(MoleculeName,simple,Atome4,Atome5), link(MoleculeName,simple,Atome5,Atome6), link(MoleculeName,simple,Atome1,Atome6).

class(MoleculeName, glycine, Atome5) :- component(MoleculeName,Atome1,carb), component(MoleculeName,Atome2,carb), component(MoleculeName,Atome3,oxyg),
								component(MoleculeName,Atome4,oxyg), component(MoleculeName,Atome5,nitr),
								link(MoleculeName,simple,Atome1,Atome2),  link(MoleculeName,simple,Atome2,Atome3), link(MoleculeName,double,Atome2,Atome4),
								link(MoleculeName,simple,Atome5,Atome1), not class(MoleculeName, threonine, Atome5), not class(MoleculeName, serine, Atome5).


class(MoleculeName, threonine, Atome7) :- component(MoleculeName,Atome1,carb), component(MoleculeName,Atome2,carb), component(MoleculeName,Atome3,oxyg),
								component(MoleculeName,Atome4,carb), component(MoleculeName,Atome5,oxyg), component(MoleculeName,Atome6,oxyg),
								component(MoleculeName,Atome7,nitr), component(MoleculeName,Atome8,carb),
								link(MoleculeName,simple,Atome1,Atome2),  link(MoleculeName,simple,Atome2,Atome3), link(MoleculeName,simple,Atome2,Atome8),
								link(MoleculeName,simple,Atome1,Atome4),
								link(MoleculeName,double,Atome4,Atome5), link(MoleculeName,simple,Atome4,Atome6), link(MoleculeName,simple,Atome7,Atome1).


class(MoleculeName, serine, Atome7) :- component(MoleculeName,Atome1,carb), component(MoleculeName,Atome2,carb), component(MoleculeName,Atome3,oxyg),
								component(MoleculeName,Atome4,carb), component(MoleculeName,Atome5,oxyg), component(MoleculeName,Atome6,oxyg),
								component(MoleculeName,Atome7,nitr),
								link(MoleculeName,simple,Atome1,Atome2),  link(MoleculeName,simple,Atome2,Atome3), link(MoleculeName,simple,Atome1,Atome4),
								link(MoleculeName,double,Atome4,Atome5), link(MoleculeName,simple,Atome4,Atome6), link(MoleculeName,simple,Atome7,Atome1),
								Atome2 != Atome4, not class(MoleculeName, threonine, Atome7).

class(MoleculeName, ethanolamine, Atome7) :- component(MoleculeName,Atome1,carb), component(MoleculeName,Atome2,carb), component(MoleculeName,Atome3,oxyg),
								component(MoleculeName,Atome7,nitr),
								link(MoleculeName,simple,Atome1,Atome2),  link(MoleculeName,simple,Atome2,Atome3), link(MoleculeName,simple,Atome7,Atome1),
								not class(MoleculeName, threonine, Atome7), not class(MoleculeName, serine, Atome7), not class(MoleculeName, glycine, Atome7).

%* Definition of atomic masses
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*%

%*
m_hydr = 1.0074, m_carb = 12.0107,  m_oxyg = 15.9994 ,  m_nitr=14.0067.
*%
%énumérer les liens de chaque atome C,N,O, et de rajouter autant de H pour que nb_H = valence (atome) - nb_link(atome), sachant que valence(oxyg)=2, valence(nitr)=3 et valence(carb)=4.

%*
mz(newcompound)=nb_carb(newcompound) x m_carb + nb_oxyg(newcompound) x m_oxyg + nb_nitr(newcompound) x m_nitr + nb_hydr(newcompound) x m_hydr
*%

% M/Q Ratio
% numberBonds provides the number of link for each atom.
% numberBonds(Molecule's name, Atom Number, Number of bonds for the corresponding atom number)
numberBonds(MoleculeName, AtomNumber, NumberOfBonds) :-  NumberOfBonds=#sum{2, SecondAtomNumber: link(MoleculeName, double, AtomNumber, SecondAtomNumber);
																2, SecondAtomNumber: link(MoleculeName, double, SecondAtomNumber, AtomNumber);
																1, SecondAtomNumber: link(MoleculeName, BoundType, AtomNumber, SecondAtomNumber), BoundType != double;
																1, SecondAtomNumber: link(MoleculeName, BoundType, SecondAtomNumber, AtomNumber), BoundType != double}; atom(MoleculeName, AtomNumber).
																
% numberHydrogens provides the number of hydrogens associated with each atoms.
% numberHydrogens(MoleculeName, AtomNumber, number of Hydrogen bonded with the atom)
numberHydrogens(MoleculeName, AtomNumber, ValenceNumber - NumberOfBonds) :- numberBonds(MoleculeName, AtomNumber, NumberOfBonds), component(MoleculeName, AtomNumber, AtomeType), valence(AtomeType, ValenceNumber).

% moleculeComposition shows the number of Carbon, Hydrogen, Oxygen and Nitrogen in the molecule.
% moleculeComposition(MoleculeName, Number of Carbon, Number of Hydrogen, Number of Oxygen, Number of Nitrogen)
moleculeComposition(MoleculeName, NumberCarbon, NumberHydrogen, NumberOxygen, NumberNitrogen) :- NumberHydrogen=#sum{NumberHydrogenAtom, AtomNumber: numberHydrogens(MoleculeName, AtomNumber, NumberHydrogenAtom)},
													NumberCarbon=#sum{1, AtomNumber: component(MoleculeName, AtomNumber , carb)}, NumberOxygen=#sum{1, AtomNumber: component(MoleculeName, AtomNumber , oxyg)},
													NumberNitrogen=#sum{1, AtomNumber: component(MoleculeName, AtomNumber , nitr)}, atom(MoleculeName, AtomeNumber).

% moleculeNbAtoms provides the total number of atoms in a compound.
moleculeNbAtoms(MoleculeName, NumberCarbon + NumberHydrogen + NumberOxygen + NumberNitrogen):- moleculeComposition(MoleculeName, NumberCarbon, NumberHydrogen, NumberOxygen, NumberNitrogen).

% moleculeNbComponents provides the total number of atoms in a compound.
moleculeNbComponents(MoleculeName, NumberCarbon + NumberOxygen + NumberNitrogen):- moleculeComposition(MoleculeName, NumberCarbon, NumberHydrogen, NumberOxygen, NumberNitrogen).

% numberTotalLinks provides the number of link in a molecule.
numberTotalLinks(MoleculeName,NumberTotalOfLinks):-  NumberTotalOfLinks=#sum{1,SecondAtomNumber : link(MoleculeName, BoundType, AtomNumber, SecondAtomNumber);
																			1,SecondAtomNumber: link(MoleculeName, BoundType, SecondAtomNumber, AtomNumber)}; metabolite(MoleculeName).

% moleculeMZ computes the M/Q ratio for each molecule.
% moleculeMZ(MoleculeName, M/Q ratio*10000)
% Because in ASP there is no decimal, all the atomic masses have been multiplied by 10 0000. If you want the real M/Q ratio divide the M/Q ratio by 10 0000.
% Approximation like at PubChem: 120110*NumberCarbon + 10080*NumberHydrogen + 159990*NumberOxygen + 140070*NumberNitrogen
% 120107*NumberCarbon + 100794*NumberHydrogen + 159994*NumberOxygen + 140067*NumberNitrogen
% 1200960*NumberCarbon + 100784*NumberHydrogen + 1599903*NumberOxygen + 1400643*NumberNitrogen (here multiplied by 100 000) <- from https://www.degruyter.com/downloadpdf/j/pac.2016.88.issue-3/pac-2015-0305/pac-2015-0305.pdf
% 1201160*NumberCarbon + 100811*NumberHydrogen + 1599977*NumberOxygen + 1400728*NumberNitrogen (here multiplied by 100 000) <- from https://www.degruyter.com/downloadpdf/j/pac.2016.88.issue-3/pac-2015-0305/pac-2015-0305.pdf
moleculeMZ(MoleculeName, 120107*NumberCarbon + 10074*NumberHydrogen + 159994*NumberOxygen + 140067*NumberNitrogen) :- moleculeComposition(MoleculeName, NumberCarbon, NumberHydrogen, NumberOxygen, NumberNitrogen).

%* Definition of input and output from reaction
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*%

reactiontype(TypeOfReaction):- reaction(TypeOfReaction,_,_,_,_,_).
reactionType(TypeOfReaction):- reaction(TypeOfReaction,_,_).
output_metabolite(M):- reaction(_,_,_,_,_,M).
output_metabolite(MoleculeName):- reaction(_,_,MoleculeName).
input_metabolite(MoleculeName):- component(MoleculeName,_,_); not output_metabolite(MoleculeName).
metabolite(MoleculeName):- component(MoleculeName,_,_).

#program step(t).

%* Test to see difference between two molecules
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*%
%*
difmolecules(MoleculeName1, MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber,direct):- link(MoleculeName1, BondType, FirstAtomNumber, SecondAtomNumber),
					not link(MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber), MoleculeName1="z-palythenic acid", MoleculeName2="palythene".
difmolecules(MoleculeName1, MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber,reverse):- link(MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber),
					not link(MoleculeName1, BondType, FirstAtomNumber, SecondAtomNumber), MoleculeName1="z-palythenic acid", MoleculeName2="palythene".

difmolecules(MoleculeName1, MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber,direct):- link(MoleculeName1, BondType, FirstAtomNumber, SecondAtomNumber),
					not link(MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber), MoleculeName1="4α-methylcholest-8(9),14,24,trien-3β-ol", MoleculeName2="4α-methylzymosterol".
difmolecules(MoleculeName1, MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber,reverse):- link(MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber),
					not link(MoleculeName1, BondType, FirstAtomNumber, SecondAtomNumber), MoleculeName1="4α-methylcholest-8(9),14,24,trien-3β-ol", MoleculeName2="4α-methylzymosterol".
*%
%* Browse reactions
%%%%%%%%%%%%%%%%%%%%
Move from molecule A to molecule B using reaction(ReactionName,A,B). A pathway is here described as the path from a moleucle to another through reactions.
Use to check if we have achieved our goal.
*%

source(ProductInfered):- reached(ProductInfered, t-1).

reached(MoleculeName, t):- source(MoleculeName).

% Create metabolite, link, component and reaction of the infered metabolite.
metabolite(NewMoleculeName):- testmetabolite(NewMoleculeName, t-1).

component(MoleculeName,AtomNumber,AtomType):- testmetabolite(MoleculeName, t-1), newcomponent(MoleculeName,AtomNumber,AtomType).

link(MoleculeName,BondType,FirstAtom,SecondAtom):- testmetabolite(MoleculeName, t-1), newlink(MoleculeName,BondType,FirstAtom,SecondAtom).

reaction(Reaction,ReactantInfered,NewProduct):- newreaction(Reaction,ReactantInfered,NewProduct), reached(NewProduct, t-1).

infered(pathway(Molecule1,Molecule2), t):- reaction(ReactionName,Molecule1,Molecule2), reached(Molecule2, t-1).
infered(pathway(Molecule1,ProductInfered), t):- reaction(ReactionName,Molecule2,ProductInfered), reached(ProductInfered, t-1), infered(pathway(Molecule1,Molecule2), t-1).

%*
solution(M1,M2,t):- infered(pathway(M1, M2),t).
solution(M1,M3,t):- infered(pathway(M2,M3),t+1), infered(pathway(M1,M2),t).
*%


%* Metabolite Inference Method
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*%

% Rule to infer new punctual metabolites: new metabolite @g(ReactantInfered, Reaction), can be the product of metabolite ReactantInfered by reaction Reaction.
% This method work with reasoning with analogy. Using known reactions, the method will use these reactions to infer new reaction between molecules.
% The reaction sites are defined with the ReactionCreation.lp script.
% First we search for a reference reaction. Then we take two metabolite and look if the reference reaction doesn't exist between them.
% A known reaction is used to infer a new reaction between a known molecule and a new molecule.

newmetaboliteName(@name_metabolite(ReactantInfered, Reaction, Domain),ReactantInfered, Reaction, Domain):- reaction(Reaction,ReactantReference,ProductReference); metabolite(ReactantInfered);
							% Check if the three molecules have the same domain.
							class(ReactantInfered,Domain);class(ProductInfered,Domain);class(ProductReference,Domain);
							% Check if reaction site are present in each molecule.
							siteBeforeReaction(Reaction,ReactantInfered);siteBeforeReaction(Reaction,ReactantReference);siteAfterReaction(Reaction,ProductReference).

newmetabolite(MoleculeName):- newmetaboliteName(MoleculeName,ReactantInfered, Reaction, Domain).

% Create new metabolite components and links.

newcomponent(MoleculeName,AtomNumber,AtomType):-component(ReactantInfered,AtomNumber,AtomType), not diffAtomBeforeReaction(Reaction,AtomNumber,AtomType),newmetaboliteName(MoleculeName,ReactantInfered, Reaction,Domain).
newcomponent(MoleculeName,AtomNumber,AtomType):- diffAtomAfterReaction(Reaction,AtomNumber,AtomType),newmetaboliteName(MoleculeName,ReactantInfered, Reaction,Domain).

newlink(MoleculeName,BondType,FirstAtom,SecondAtom):-link(ReactantInfered,BondType,FirstAtom,SecondAtom), not diffLinkBeforeReaction(Reaction,BondType,FirstAtom,SecondAtom),newmetaboliteName(MoleculeName,ReactantInfered,Reaction,Domain).
newlink(MoleculeName,BondType,FirstAtom,SecondAtom):- diffLinkAfterReaction(Reaction,BondType,FirstAtom,SecondAtom),newmetaboliteName(MoleculeName,ReactantInfered, Reaction,Domain).

% newatom provides the atom numbers in a compound.
newatom(MoleculeName, AtomNumber):- newcomponent(MoleculeName, AtomNumber, _).

% Compute MZ for new metabolite.
newnumberBonds(MoleculeName, AtomNumber, NumberOfBonds):-  NumberOfBonds=#sum{2, SecondAtomNumber: newlink(MoleculeName, double, AtomNumber, SecondAtomNumber);
																2, SecondAtomNumber: newlink(MoleculeName, double, SecondAtomNumber, AtomNumber);
																1, SecondAtomNumber: newlink(MoleculeName, BoundType, AtomNumber, SecondAtomNumber), BoundType != double;
																1, SecondAtomNumber: newlink(MoleculeName, BoundType, SecondAtomNumber, AtomNumber), BoundType != double}; newatom(MoleculeName, AtomNumber).


% numberHydrogens provides the number of hydrogens associated with each atoms.
% numberHydrogens(MoleculeName, AtomNumber, number of Hydrogen bonded with the atom)
newnumberHydrogens(MoleculeName, AtomNumber, ValenceNumber - NumberOfBonds) :- newnumberBonds(MoleculeName, AtomNumber, NumberOfBonds), newcomponent(MoleculeName, AtomNumber, AtomeType), valence(AtomeType, ValenceNumber).

% moleculeComposition shows the number of Carbon, Hydrogen, Oxygen and Nitrogen in the molecule.
% moleculeComposition(MoleculeName, Number of Carbon, Number of Hydrogen, Number of Oxygen, Number of Nitrogen)
newmoleculeComposition(MoleculeName, NumberCarbon, NumberHydrogen, NumberOxygen, NumberNitrogen) :- NumberHydrogen=#sum{NumberHydrogenAtom, AtomNumber: newnumberHydrogens(MoleculeName, AtomNumber, NumberHydrogenAtom)},
													NumberCarbon=#sum{1, AtomNumber: newcomponent(MoleculeName, AtomNumber , carb)}, NumberOxygen=#sum{1, AtomNumber: newcomponent(MoleculeName, AtomNumber , oxyg)},
													NumberNitrogen=#sum{1, AtomNumber: newcomponent(MoleculeName, AtomNumber , nitr)}, newatom(MoleculeName, AtomeNumber).

%moleculeNbAtoms provides the total number of atoms in a compound
newmoleculeNbAtoms(MoleculeName, NumberCarbon + NumberHydrogen + NumberOxygen + NumberNitrogen):- newmoleculeComposition(MoleculeName, NumberCarbon, NumberHydrogen, NumberOxygen, NumberNitrogen),
																					newmetabolite(MoleculeName).

% moleculeMZ computes the M/Q ratio for each new molecule.
% moleculeMZ(MoleculeName, M/Q ratio*10000)
% Because in ASP there is no decimal, all the atomic masses have been multiplied by 10 0000. If you want the real M/Q ratio divide the M/Q ratio by 10 0000.
newmoleculeMZ(MoleculeName, 120107*NumberCarbon + 10074*NumberHydrogen + 159994*NumberOxygen + 140067*NumberNitrogen) :- newmoleculeComposition(MoleculeName, NumberCarbon, NumberHydrogen, NumberOxygen, NumberNitrogen),
																					newmetabolite(MoleculeName).

newmoleculeNbComponents(MoleculeName, NumberCarbon + NumberOxygen + NumberNitrogen):- newmoleculeComposition(MoleculeName, NumberCarbon, NumberHydrogen, NumberOxygen, NumberNitrogen).

newnumberTotalLinks(MoleculeName,NumberTotalOfLinks):-  NumberTotalOfLinks=#sum{1,SecondAtomNumber : newlink(MoleculeName, BoundType, AtomNumber, SecondAtomNumber);
																			1, SecondAtomNumber: newlink(MoleculeName, BoundType, SecondAtomNumber, AtomNumber)}; newmetabolite(MoleculeName).

% Check if new metabolites aren't known molecules.
alreadyKnownComponent(NewMoleculeName):- newmetabolite(NewMoleculeName); metabolite(KnownMolecule);
												% Check the number of components between the new metabolite and all the known molecules.
												newmoleculeNbComponents(NewMoleculeName, NumberComponents); moleculeNbComponents(KnownMolecule, NumberComponentsRef);
												NumberComponents==NumberComponentsRef;
												% Check the number of links between the new metabolite and all the known molecules.
												newnumberTotalLinks(NewMoleculeName,NumberTotalOfLinks); numberTotalLinks(KnownMolecule,NumberTotalOfLinksRef);
												NumberTotalOfLinks==NumberTotalOfLinksRef;
												% Check that all components are similar from the components of a known molecule.
												newcomponent(NewMoleculeName,AtomNumber,AtomType): component(KnownMolecule,AtomNumber,AtomType);
												% Check that all links are similar from the links of a known molecule.
												newlink(NewMoleculeName, BondType, FirstAtomNumber, SecondAtomNumber): link(KnownMolecule, BondType, FirstAtomNumber, SecondAtomNumber).

% Filtering using MZ and already known metabolites.
% Keep only new metabolite having the MZ required.
testmetabolite(NewMoleculeName, t):- newmetabolite(NewMoleculeName), newmoleculeMZ(NewMoleculeName,MZFilter), mzfiltering(MZFilter),
									not alreadyKnownComponent(NewMoleculeName),metabolite(KnownMolecule).

% Create newreaction from infered metabolite.
newreaction(Reaction,ReactantInfered,NewProduct):- testmetabolite(NewProduct, t-1),newmetaboliteName(NewProduct,ReactantInfered,Reaction,Domain).

% Create the siteBeforeReaction for the new metabolite.
siteBeforeReaction(ReactionType,MoleculeName):- reactionType(ReactionType); newmetabolite(MoleculeName); testmetabolite(MoleculeName, t);
                                                    newcomponent(MoleculeName,AtomNumber,AtomType): diffAtomBeforeReaction(ReactionType, AtomNumber, AtomType);
			                                        newlink(MoleculeName,BondType,FirstAtomNumber,SecondAtomNumber):
                                                        diffLinkBeforeReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber);
                                                    not newlink(MoleculeName,BondType,FirstAtomNumber,SecondAtomNumber):
                                                        diffLinkAfterReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber).

% Create the siteAfterReaction for the new metabolite.
siteAfterReaction(ReactionType,MoleculeName):- reactionType(ReactionType); newmetabolite(MoleculeName); testmetabolite(MoleculeName, t);
                                                    newcomponent(MoleculeName,AtomNumber,AtomType): diffAtomAfterReaction(ReactionType, AtomNumber, AtomType);
			                                        newlink(MoleculeName,BondType,FirstAtomNumber,SecondAtomNumber):
                                                        diffLinkAfterReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber);
                                                    not newlink(MoleculeName,BondType,FirstAtomNumber,SecondAtomNumber):
                                                        diffLinkBeforeReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber).

% New metabolite found by the Metabolite Inference Method can be reach.
reached(ProductInfered, t):- testmetabolite(ProductInfered, t), not reached(ProductInfered, t-1),newmetaboliteName(ProductInfered,Reactant,Reaction,Domain).

% New metabolite is associated to the domain of its reactant.
class(ProductInfered,Domain):- testmetabolite(ProductInfered, t),newmetaboliteName(ProductInfered,Reactant,Reaction,Domain).

%* Reaction Inference Method
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*%

% Rule to infer new punctual reactions: metabolite ProductInfered can be the product of metabolite ReactantInfered by reaction Reaction.
% This method work with reasoning with analogy. Using known reactions, the method will use these reactions to infer new reaction between molecules.
% The reaction sites are defined with the ReactionCreation.lp script.
% First we search for a reference reaction. Then we take two metabolite and look if the reference reaction doesn't exist between them.
% We also check if the two metabolites are not the same.
% In a second point we check if the four molecules (two molecules from reference reaction and two tested metabolites) have a domain in common.
% Then we search in one of the two metabolites if it contains a region corresponding to the site of reaction of the ReactantReference (the site that will be modified by the reaction).
% We also search in the other metabolite if it contains a region corresponding to the site of reaction of the ProductReference (the site modified by the reaction).
% And we check if all atoms and links are the same between ReactantInfered and ProductInfered, except from the atoms and links implied in the reaction

newreaction(Reaction,ReactantInfered,ProductInfered):- reaction(Reaction,ReactantReference,ProductReference); metabolite(ReactantInfered); metabolite(ProductInfered); source(ReactantInfered);
							not reaction(Reaction,ReactantInfered,ProductInfered); ReactantInfered != ProductInfered;
							% Check if the four molecules have the same domain.
							class(ReactantInfered,Domain);class(ProductInfered,Domain);class(ReactantReference,Domain);class(ProductReference,Domain);
							% Check if reaction site are present in each molecule.
							siteBeforeReaction(Reaction,ReactantInfered);siteBeforeReaction(Reaction,ReactantReference);siteAfterReaction(Reaction,ProductInfered);siteAfterReaction(Reaction,ProductReference);
							% Four comparisons to check if other than reaction site ReactantInfered == ProductInfered:
							% Check if atoms of ReactantInfered mapped from atoms of ProductInfered.
							component(ReactantInfered,AtomNumber,AtomType):component(ProductInfered,AtomNumber,AtomType), not diffAtomAfterReaction(Reaction,AtomNumber,AtomType);
							% Check if atoms of ProductInfered mapped from atoms of ReactantInfered.
							component(ProductInfered,AtomNumber,AtomType):component(ReactantInfered,AtomNumber,AtomType), not diffAtomBeforeReaction(Reaction,AtomNumber,AtomType);
							% Check if links of ReactantInfered mapped from links of ProductInfered.
							link(ReactantInfered,BondType,FirstAtom,SecondAtom):link(ProductInfered,BondType,FirstAtom,SecondAtom), not diffLinkAfterReaction(Reaction,BondType,FirstAtom,SecondAtom);
							% Check if links of ProductInfered mapped from links of ReactantInfered.
							link(ProductInfered,BondType,FirstAtom,SecondAtom):link(ReactantInfered,BondType,FirstAtom,SecondAtom), not diffLinkBeforeReaction(Reaction,BondType,FirstAtom,SecondAtom).

% Product found by the Reaction Inference Method can be reach.
reached(ProductInfered, t):- newreaction(Reaction,Reactant,ProductInfered), source(Reactant), not reached(ProductInfered, t-1).

% Defining the result of generic reactions
% Generic method which is supposed to replace all the methods below.
% Map all the atom of Reactant in Product except atoms occuring in reaction.
component(ProductName,AtomNumber,AtomType):- reaction(Reaction,ReactantName,ProductName); component(ReactantName,AtomNumber,AtomType); not diffAtomBeforeReaction(Reaction,AtomNumber,AtomType).
% Map atoms in the reaction.
component(ProductName,AtomNumber,AtomType):- reaction(Reaction,ReactantName,ProductName); component(ReactantName,AtomNumber,AtomType); diffAtomAfterReaction(Reaction,AtomNumber,AtomType).
% Map all the links of Reactant in Product except links occruing in reaction.
link(ProductName,BondType,FirstAtomeNumber,SecondAtomeNumber):- reaction(Reaction,ReactantName,ProductName); link(ReactantName,BondType,FirstAtomeNumber,SecondAtomeNumber);
																	not diffLinkBeforeReaction(Reaction,BondType,FirstAtomeNumber,SecondAtomeNumber).
% Map links in the reaction.
link(ProductName,BondType,FirstAtomeNumber,SecondAtomeNumber):- reaction(Reaction,ReactantName,ProductName); diffLinkAfterReaction(Reaction,BondType,FirstAtomeNumber,SecondAtomeNumber).

% Compound P resulting from the C5_desaturation of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P
component(P,I,A):- reaction(c5_desaturation,R,P); component(R,I,A).
% the 5-6 link is transformed from simple in R to double in P
link(P,double,5,6):-reaction(c5_desaturation,R,P); link(R,simple,5,6).
% all other links from R are mapped to P
link(P,T,I,J):-reaction(c5_desaturation,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simple,5,6).

% Compound P resulting from the C22_desaturation of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P
component(P,I,A):- reaction(c22_desaturation,R,P); component(R,I,A).
% the 22-23 link is transformed from simple in R to double in P
link(P,double,22,23):-reaction(c22_desaturation,R,P); link(R,simple,22,23).
% all other links from R are mapped to P
link(P,T,I,J):-reaction(c22_desaturation,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simple,22,23).

% Compound P resulting from the delta7reduction of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P
component(P,I,A):- reaction(delta7reduction,R,P); component(R,I,A).
% the 7-8 link is transformed from double in R to simple in P
link(P,simple,7,8):-reaction(delta7reduction,R,P); link(R,double,7,8).
% all other links from R are mapped to P
link(P,T,I,J):-reaction(delta7reduction,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,double,7,8).

% Compound P resulting from the delta24_25_reduction of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P
component(P,I,A):- reaction(delta24_25_reduction,R,P); component(R,I,A).
% the 24-29 link is transformed from double in R to simple in P
link(P,simple,24,25):-reaction(delta24_25_reduction,R,P); link(R,double,24,25).
% all other links from R are mapped to P
link(P,T,I,J):-reaction(delta24_25_reduction,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,double,24,25).

% Compound P resulting from the delta24_241_reduction of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P
component(P,I,A):- reaction(delta24_241_reduction,R,P); component(R,I,A).
% the 24-241 link is transformed from double in R to simple in P
link(P,simple,24,241):-reaction(delta24_241_reduction,R,P); link(R,double,24,241).
% all other links from R are mapped to P
link(P,T,I,J):-reaction(delta24_241_reduction,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,double,24,241).

% Compound P resulting from the cyclopropylsterol_isomerisation of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P
component(P,I,A):- reaction(cyclopropylsterol_isomerisation,R,P); component(R,I,A).
% the 8-9 link is transformed from simple in R to double in P
link(P,double,8,9):-reaction(cyclopropylsterol_isomerisation,R,P); link(R,simple,8,9).
% all other links from R are mapped to P, except the 9-19 one
link(P,T,I,J):-reaction(cyclopropylsterol_isomerisation,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simple,8,9); not link(R,simpleR,9,19).

% Compound P resulting from the c14_reduction of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P
component(P,I,A):- reaction(c14_reduction,R,P); component(R,I,A).
% the 14-15 link is transformed from double in R to simple in P
link(P,simple,14,15):-reaction(c14_reduction,R,P); link(R,double,14,15).
% all other links from R are mapped to P
link(P,T,I,J):-reaction(c14_reduction,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,double,14,15).

% Compound P resulting from the hydrogenation of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P, escept oxyg 22 and 23
component(P,I,A):- reaction(hydrogenation,R,P); component(R,I,A); not component (R,22..23,oxyg).
% all links from R are mapped to P, escept the 21-22 and 21-23 ones
link(P,T,I,J):-reaction(hydrogenation,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,double,21,22); not link(R,simple,21,23).

% Compound P resulting from the c14_demethylation of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P, except carb 29
component(P,I,A):- reaction(c14_demethylation,R,P); component(R,I,A); not component (R,30,carb).
% the 14-15 link is transformed from simple in R to double in P
link(P,double,14,15):-reaction(c14_demethylation,R,P); link(R,simple,14,15).
% all links from R are mapped to P, except the 14-30 one
link(P,T,I,J):-reaction(c14_demethylation,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simpleS,14,30); link(R,simple,14,15).

% Compound P resulting from the c4_c29_demethylation of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P, except carb 29
component(P,I,A):- reaction(c4_c29_demethylation,R,P); component(R,I,A); not component (R,29,carb).
% all links from R are mapped to P, except the 18-21 one
link(P,T,I,J):-reaction(c4_c29_demethylation,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simpleR,4,29).

% Compound P resulting from the c4_c28_demethylation of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P, except carb 29
component(P,I,A):- reaction(c4_c28_demethylation,R,P); component(R,I,A); not component (R,28,carb).
% all links from R are mapped to P, except the 18-21 one
link(P,T,I,J):-reaction(c4_c28_demethylation,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simpleS,4,28).

% Compound P resulting from the demethylation of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P, except carb 21
component(P,I,A):- reaction(demethylation,R,P); component(R,I,A); not component (R,21,carb).
% all links from R are mapped to P, except the 18-21 one
link(P,T,I,J):-reaction(demethylation,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simple,18,21).

% Compound P resulting from the c8_isomerase of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P, except carb 29
component(P,I,A):- reaction(c8_isomerase,R,P); component(R,I,A).
% the 8-9 link is transformed from simple in R to double in P
link(P,simple,8,9):-reaction(c8_isomerase,R,P); link(R,double,8,9).
% the 7-8 link is transformed from simple in R to double in P
link(P,double,7,8):-reaction(c8_isomerase,R,P); link(R,simple,7,8).
% all links from R are mapped to P
link(P,T,I,J):-reaction(c8_isomerase,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simple,8,9); link(R,double,7,8).

% Compound P resulting from the dehydration of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P, escept oxyg 20
component(P,I,A):- reaction(dehydration,R,P); component(R,I,A); not component (R,20,oxyg).
% all links from R are mapped to P, escept the 18-19 and 19-20
link(P,T,I,J):-reaction(dehydration,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simple,18,19); not link(R,simple,19,20).
% the 18-19 link is transformed from simple in R to double in P
link(P,double,18,19):-reaction(dehydration,R,P); link(R,simple,18,19).

% Compound P resulting from the decarboxylation of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P, escept carb 21, oxyg 22 and 23
component(P,I,A):- reaction(demethylation,R,P); component(R,I,A); I!=21; I!=22; I!=23.
% all links from R are mapped to P, escept 18-21, 21-22 and 22-23
link(P,T,I,J):-reaction(demethylation,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simple,18,21); not link(R,double,21,22); not link(R,simple,21,23).

% Compound P resulting from the hydrolyse of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% all atoms from R are mapped to P, except carb 18, oxyg 19 and 24
component(P,I,A):- reaction(hydrolyse,R,P); component(R,I,A); not component (R,18..19,carb); not component (R,24,carb).
% all links from R are mapped to P, except 10-18, 18-19 and 19-24
link(P,T,I,J):-reaction(hydrolyse,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simple,10,18); link(R,double,18,19); link(R,simple,19,24).

% Compound P resulting from the transfer of an aminoacid AA on C3 from compound R 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% all atoms from R are mapped to P, except oxyg 10, which is replaced by nitr 5 of the aminoacid
component(P,I,A):- reaction("aminoacid_C-3_transfer",R,AA,P); component(R,I,A); I!=10.
component(P,10,nitr):- reaction("aminoacid_C-3_transfer",_,_,P).
% all links from R are mapped to P except for oxyg 10
link(P,T,I,J):-reaction("aminoacid_C-3_transfer",R,AA,P); link(R,T,I,J); link(R,T,I,J); I!=10; J!=10.
% atoms and links from aminoacid are transferred at position 10 except nitr 5
component(P,N+1,carb):-reaction("aminoacid_C-3_transfer",_,_,P); moleculeNbComponents(R,N); production(P). 
component(P,N+2,carb):-reaction("aminoacid_C-3_transfer",_,_,P); moleculeNbComponents(R,N); production(P). 
component(P,N+3,oxyg):-reaction("aminoacid_C-3_transfer",_,_,P); moleculeNbComponents(R,N); production(P). 
component(P,N+4,carb):-reaction("aminoacid_C-3_transfer",_,_,P); component(AA,6,carb); component(AA,7,oxyg); moleculeNbComponents(R,N); production(P). 
component(P,N+5,oxyg):-reaction("aminoacid_C-3_transfer",_,_,P); component(AA,6,carb); component(AA,7,oxyg); moleculeNbComponents(R,N); production(P). 
component(P,N+5,oxyg):-reaction("aminoacid_C-3_transfer",_,_,P); component(AA,6,carb); component(AA,7,oxyg); moleculeNbComponents(R,N); production(P). 
component(P,N+4,oxyg):-reaction("aminoacid_C-3_transfer",_,"glycine",P); moleculeNbComponents(R,N); production(P). 
component(P,N+I-1,A):- reaction("aminoacid_C-3_transfer",R,AA,P); component(R,I,A); I>7; moleculeNbComponents(R,N);  production(P). 

#program check(t).
:- goal(F), query(t), not infered(F,t).

#show newreaction/3.
%#show component/3.
%#show solution/3.
%#show input_metabolite/1.
%#show output_metabolite/1.
%#show reaction/3.
%#show newreaction/3.
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