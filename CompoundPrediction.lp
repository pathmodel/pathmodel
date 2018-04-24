%#include <incmode>.

 %*
Search of metabolic pathways
allowing to reach  output metabolites from a set of input metabolites
*%

%#program base.

%* General definitions
%%%%%%%%%%%%%%%%%%%%%%%
*%


#script (python)
import clingo
import hashlib

def g(x, y):
	name = str(x) + str(y)
	hash_name = str(int(hashlib.sha1(name).hexdigest(), 16) % (10 ** 8))
	r = "Prediction_" + str(hash_name)
	return r

def main(prg):
	prg.ground([("base", [])])
	prg.solve()
 
#end.

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

% Rule to infer new punctual reactions: metabolite ProductInfered can be the product of metabolite ReactantInfered by reaction Reaction.
% This method work with reasoning with analogy. Using known reactions, the method will use these reactions to infer new reaction between molecules.
% The reaction sites are defined with the ReactionCreation.lp script.
% First we search for a reference reaction. Then we take two metabolite and look if the reference reaction doesn't exist between them.
% We also check if the two metabolites are not the same.
% In a second point we check if the four molecules (two molecules from reference reaction and two tested metabolites) have a domain in common.
% Then we search in one of the two metabolites if it contains a region corresponding to the site of reaction of the ReactantReference (the site that will be modified by the reaction).
% We also search in the other metabolite if it contains a region corresponding to the site of reaction of the ProductReference (the site modified by the reaction).
% And we check if all atoms and links are the same between ReactantInfered and ProductInfered, except from the atoms and links implied in the reaction

newmetaboliteName(@g(ReactantInfered, Reaction),ReactantInfered, Reaction):- reaction(Reaction,ReactantReference,ProductReference); metabolite(ReactantInfered);
							% Check if the four molecules have the same domain.
							class(ReactantInfered,Domain);class(ProductInfered,Domain);class(ProductReference,Domain);
							% Check if reaction site are present in each molecule.
							siteBeforeReaction(Reaction,ReactantInfered);siteBeforeReaction(Reaction,ReactantReference);siteAfterReaction(Reaction,ProductReference).
newmetabolite(MoleculeName):- newmetaboliteName(MoleculeName,ReactantInfered, Reaction).

% Create ProductInfered.
% Check if atoms of ProductInfered mapped from atoms of ReactantInfered.
newcomponent(MoleculeName,AtomNumber,AtomType):-component(ReactantInfered,AtomNumber,AtomType), not diffAtomBeforeReaction(Reaction,AtomNumber,AtomType),newmetaboliteName(MoleculeName,ReactantInfered, Reaction).
newcomponent(MoleculeName,AtomNumber,AtomType):- diffAtomAfterReaction(Reaction,AtomNumber,AtomType),newmetaboliteName(MoleculeName,ReactantInfered, Reaction).
% Check if links of ProductInfered mapped from links of ReactantInfered.
newlink(MoleculeName,BondType,FirstAtom,SecondAtom):-link(ReactantInfered,BondType,FirstAtom,SecondAtom), not diffLinkBeforeReaction(Reaction,BondType,FirstAtom,SecondAtom),newmetaboliteName(MoleculeName,ReactantInfered, Reaction).
% Check if links of ProductInfered mapped from links of ReactantInfered.
newlink(MoleculeName,BondType,FirstAtom,SecondAtom):- diffLinkAfterReaction(Reaction,BondType,FirstAtom,SecondAtom),newmetaboliteName(MoleculeName,ReactantInfered, Reaction).

%atom provides the atom numbers in a compound
newatom(MoleculeName, AtomNumber):- newcomponent(MoleculeName, AtomNumber, _). 

%* Definition of atomic masses
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*%
atom(MoleculeName, AtomNumber):- component(MoleculeName, AtomNumber, _). 

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
numberBonds(MoleculeName, AtomNumber, NumberOfBonds):-  NumberOfBonds=#sum{2, SecondAtomNumber: newlink(MoleculeName, double, AtomNumber, SecondAtomNumber);
																2, SecondAtomNumber: newlink(MoleculeName, double, SecondAtomNumber, AtomNumber);
																1, SecondAtomNumber: newlink(MoleculeName, BoundType, AtomNumber, SecondAtomNumber), BoundType != double;
																1, SecondAtomNumber: newlink(MoleculeName, BoundType, SecondAtomNumber, AtomNumber), BoundType != double}; newatom(MoleculeName, AtomNumber).


% numberHydrogens provides the number of hydrogens associated with each atoms.
% numberHydrogens(MoleculeName, AtomNumber, number of Hydrogen bonded with the atom)
numberHydrogens(MoleculeName, AtomNumber, ValenceNumber - NumberOfBonds) :- numberBonds(MoleculeName, AtomNumber, NumberOfBonds), newcomponent(MoleculeName, AtomNumber, AtomeType), valence(AtomeType, ValenceNumber).

% moleculeComposition shows the number of Carbon, Hydrogen, Oxygen and Nitrogen in the molecule.
% moleculeComposition(MoleculeName, Number of Carbon, Number of Hydrogen, Number of Oxygen, Number of Nitrogen)
moleculeComposition(MoleculeName, NumberCarbon, NumberHydrogen, NumberOxygen, NumberNitrogen) :- NumberHydrogen=#sum{NumberHydrogenAtom, AtomNumber: numberHydrogens(MoleculeName, AtomNumber, NumberHydrogenAtom)},
													NumberCarbon=#sum{1, AtomNumber: newcomponent(MoleculeName, AtomNumber , carb)}, NumberOxygen=#sum{1, AtomNumber: newcomponent(MoleculeName, AtomNumber , oxyg)},
													NumberNitrogen=#sum{1, AtomNumber: newcomponent(MoleculeName, AtomNumber , nitr)}, newatom(MoleculeName, AtomeNumber).

%moleculeNbAtoms provides the total number of atoms in a compound
moleculeNbAtoms(MoleculeName, NumberCarbon + NumberHydrogen + NumberOxygen + NumberNitrogen):- moleculeComposition(MoleculeName, NumberCarbon, NumberHydrogen, NumberOxygen, NumberNitrogen).

% moleculeMZ computes the M/Q ratio for each molecule.
% moleculeMZ(MoleculeName, M/Q ratio*10000)
% Because in ASP there is no decimal, all the atomic masses have been multiplied by 10 0000. If you want the real M/Q ratio divide the M/Q ratio by 10 0000.
% Approximation like at PubChem: 120110*NumberCarbon + 10080*NumberHydrogen + 159990*NumberOxygen + 140070*NumberNitrogen
% 120107*NumberCarbon + 100794*NumberHydrogen + 159994*NumberOxygen + 140067*NumberNitrogen
% 1200960*NumberCarbon + 100784*NumberHydrogen + 1599903*NumberOxygen + 1400643*NumberNitrogen (here multiplied by 100 000) <- from https://www.degruyter.com/downloadpdf/j/pac.2016.88.issue-3/pac-2015-0305/pac-2015-0305.pdf
% 1201160*NumberCarbon + 100811*NumberHydrogen + 1599977*NumberOxygen + 1400728*NumberNitrogen (here multiplied by 100 000) <- from https://www.degruyter.com/downloadpdf/j/pac.2016.88.issue-3/pac-2015-0305/pac-2015-0305.pdf
newmoleculeMZ(MoleculeName, 120107*NumberCarbon + 10074*NumberHydrogen + 159994*NumberOxygen + 140067*NumberNitrogen) :- moleculeComposition(MoleculeName, NumberCarbon, NumberHydrogen, NumberOxygen, NumberNitrogen).

moleculeNbComponents(MoleculeName, NumberCarbon + NumberOxygen + NumberNitrogen):- moleculeComposition(MoleculeName, NumberCarbon, NumberHydrogen, NumberOxygen, NumberNitrogen).

numberTotalLinks(MoleculeName,NumberTotalOfLinks):-  NumberTotalOfLinks=#sum{1,SecondAtomNumber : newlink(MoleculeName, BoundType, AtomNumber, SecondAtomNumber);
																			1, SecondAtomNumber: newlink(MoleculeName, BoundType, SecondAtomNumber, AtomNumber)}; newmetabolite(MoleculeName).

numberTotalLinks(MoleculeName,NumberTotalOfLinks):-  NumberTotalOfLinks=#sum{1,SecondAtomNumber : link(MoleculeName, BoundType, AtomNumber, SecondAtomNumber);
																			1,SecondAtomNumber: link(MoleculeName, BoundType, SecondAtomNumber, AtomNumber)}; metabolite(MoleculeName).

alreadyKnownComponent(NewMoleculeName):- newmetabolite(NewMoleculeName); metabolite(KnownMolecule);
												moleculeNbComponents(NewMoleculeName, NumberComponents); moleculeNbComponents(KnownMolecule, NumberComponentsRef);
												NumberComponents==NumberComponentsRef;
												numberTotalLinks(NewMoleculeName,NumberTotalOfLinks); numberTotalLinks(KnownMolecule,NumberTotalOfLinksRef);
												NumberTotalOfLinks==NumberTotalOfLinksRef;
												NumberComponents{newcomponent(NewMoleculeName,AtomNumber,AtomType): component(KnownMolecule,AtomNumber,AtomType),metabolite(KnownMolecule)}NumberComponents;
												NumberTotalOfLinks{newlink(NewMoleculeName, BondType, FirstAtomNumber, SecondAtomNumber): link(KnownMolecule, BondType, FirstAtomNumber, SecondAtomNumber),
												metabolite(KnownMolecule)}NumberTotalOfLinks.

% Filtering using MZ and already known metabolites.
testmetabolite(NewMoleculeName):- newmetabolite(NewMoleculeName), newmoleculeMZ(NewMoleculeName,MZFilter), mzfiltering(MZFilter),
									not alreadyKnownComponent(NewMoleculeName),metabolite(KnownMolecule).

testcomponent(MoleculeName,AtomNumber,AtomType):-testmetabolite(MoleculeName),newcomponent(MoleculeName,AtomNumber,AtomType).

testlink(MoleculeName,BondType,FirstAtom,SecondAtom):-testmetabolite(MoleculeName),newlink(MoleculeName,BondType,FirstAtom,SecondAtom).

#show newmetabolite/1.
#show testcomponent/3.
#show testlink/4.