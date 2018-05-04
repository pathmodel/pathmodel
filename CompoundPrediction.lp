 %*
Prediction of new metabolite.
*%

%*
Python script creating name for new metabolite.
It uses the reaction name and the metabolite use to infer the new metabolite.
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
	r = "Prediction_" + str(hash_name)
	return r

#end.

% Known atom
atom(MoleculeName, AtomNumber):- component(MoleculeName, AtomNumber, _).

% Compute the number of bonds.
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

% moleculeNbComponents provides the total number of atoms in a compound.
moleculeNbComponents(MoleculeName, NumberCarbon + NumberOxygen + NumberNitrogen):- moleculeComposition(MoleculeName, NumberCarbon, NumberHydrogen, NumberOxygen, NumberNitrogen).

% numberTotalLinks provides the number of link in a molecule.
numberTotalLinks(MoleculeName,NumberTotalOfLinks):-  NumberTotalOfLinks=#sum{1,SecondAtomNumber : link(MoleculeName, BoundType, AtomNumber, SecondAtomNumber);
																			1,SecondAtomNumber: link(MoleculeName, BoundType, SecondAtomNumber, AtomNumber)}; metabolite(MoleculeName).
%*
Chemical variable:
valence(Atom type, Number of valence)
*%
valence(carb, 4). valence(nitr, 3). valence(oxyg, 2).

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



metabolite(MoleculeName):- component(MoleculeName,_,_).

%* Metabolite Inference Method
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*%

% Rule to infer new punctual metabolites: new metabolite @g(ReactantInfered, Reaction), can be the product of metabolite ReactantInfered by reaction Reaction.
% This method work with reasoning with analogy. Using known reactions, the method will use these reactions to infer new reaction between molecules.
% The reaction sites are defined with the ReactionCreation.lp script.
% First we search for a reference reaction. Then we take two metabolite and look if the reference reaction doesn't exist between them.
% A known reaction is used to infer a new reaction between a known molecule and a new molecule.

newmetaboliteName(@name_metabolite(ReactantInfered, Reaction, Domain),ReactantInfered, Reaction):- reaction(Reaction,ReactantReference,ProductReference); metabolite(ReactantInfered);
							% Check if the three molecules have the same domain.
							class(ReactantInfered,Domain);class(ProductInfered,Domain);class(ProductReference,Domain);
							% Check if reaction site are present in each molecule.
							siteBeforeReaction(Reaction,ReactantInfered);siteBeforeReaction(Reaction,ReactantReference);siteAfterReaction(Reaction,ProductReference).

newmetabolite(MoleculeName):- newmetaboliteName(MoleculeName,ReactantInfered, Reaction).

% Create new metabolite components and links.

newcomponent(MoleculeName,AtomNumber,AtomType):-component(ReactantInfered,AtomNumber,AtomType), not diffAtomBeforeReaction(Reaction,AtomNumber,AtomType),newmetaboliteName(MoleculeName,ReactantInfered, Reaction).
newcomponent(MoleculeName,AtomNumber,AtomType):- diffAtomAfterReaction(Reaction,AtomNumber,AtomType),newmetaboliteName(MoleculeName,ReactantInfered, Reaction).

newlink(MoleculeName,BondType,FirstAtom,SecondAtom):-link(ReactantInfered,BondType,FirstAtom,SecondAtom), not diffLinkBeforeReaction(Reaction,BondType,FirstAtom,SecondAtom),newmetaboliteName(MoleculeName,ReactantInfered, Reaction).
newlink(MoleculeName,BondType,FirstAtom,SecondAtom):- diffLinkAfterReaction(Reaction,BondType,FirstAtom,SecondAtom),newmetaboliteName(MoleculeName,ReactantInfered, Reaction).

%atom provides the atom numbers in a compound
newatom(MoleculeName, AtomNumber):- newcomponent(MoleculeName, AtomNumber, _). 


%*
Compute MZ for new metabolite.
*%
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
testmetabolite(NewMoleculeName):- newmetabolite(NewMoleculeName), newmoleculeMZ(NewMoleculeName,MZFilter), mzfiltering(MZFilter),
									not alreadyKnownComponent(NewMoleculeName),metabolite(KnownMolecule).

% Create link, component and reaction of the infered metabolite.
testcomponent(MoleculeName,AtomNumber,AtomType):-testmetabolite(MoleculeName),newcomponent(MoleculeName,AtomNumber,AtomType).

testlink(MoleculeName,BondType,FirstAtom,SecondAtom):-testmetabolite(MoleculeName),newlink(MoleculeName,BondType,FirstAtom,SecondAtom).

testreaction(Reaction,ReactantInfered,NewProduct):- newmetaboliteName(NewProduct,ReactantInfered,Reaction),testmetabolite(NewProduct).

#show newmetabolite/1.
#show testcomponent/3.
#show testlink/4.
#show testreaction/3.