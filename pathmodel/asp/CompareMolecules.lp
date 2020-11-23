 %*
Search difference between molecules occurring in the same reaction.
This script is used to check if reactions are well encoded.
*%

%* Test to see difference between two molecules
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*%

diffMolecules(ReactionName, MoleculeName1, MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber):-
		    bond(MoleculeName1, BondType, FirstAtomNumber, SecondAtomNumber),
		not bond(MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber), compareMolecules(ReactionName, MoleculeName1, MoleculeName2).

compareMolecules(ReactionName,Reactant, Product):- compareMolecules(ReactionName, Product, Reactant).

compareMolecules(ReactionName, Reactant, Product):- reaction(ReactionName, Reactant, Product).

#show diffMolecules/6.