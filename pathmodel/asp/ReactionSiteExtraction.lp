%*
This script will create the reference reaction site.
To do this it compares links and atoms between two molecules that are implied in a reaction.
When it finds difference, the script will extract the links and atoms and write the result in a file.
*%

%*
Chemical variable:
valence(Atom type, Number of valence)
*%
valence(carb, 4). valence(nitr, 3). valence(oxyg, 2). valence(phos, 5).

% Compare reactant and product of the reaction.
% The idea is to create a named graph (with diffAtomBeforeReaction as node and diffBondBeforeReaction as edge) containing the reaction.

% Compare atoms between molecules.
% To see what atoms are implied in the reaction we look for atom present in Reactant but not in Product.
% diffAtomBefore(Reaction Type, Atom Number)
diffAtomBeforeReaction(ReactionType, AtomNumber, AtomType):- reaction(ReactionType,Reactant,Product), atom(Reactant,AtomNumber,AtomType),
                                                    not atom(Product,AtomNumber,AtomType).

% diffAtomAfter(Reaction Type, Atom Number)
% Same as above but for atoms present in Product and not in Reactant.
diffAtomAfterReaction(ReactionType, AtomNumber, AtomType):- reaction(ReactionType,Reactant,Product), atom(Product,AtomNumber,AtomType),
                                                    not atom(Reactant,AtomNumber,AtomType).


% Compare links between molecules.
% To extract links implied in the reaction we look for links present in Reactant but not in Product.
% diffLinkBefore(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber)
diffBondBeforeReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber):- reaction(ReactionType,Reactant,Product),
                                                                                    bond(Reactant, BondType, FirstAtomNumber, SecondAtomNumber),
                                                                                    not bond(Product, BondType, FirstAtomNumber, SecondAtomNumber).

% Same as above but for links present in Product and not in Reactant.
% diffLinkAfter(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber)
diffBondAfterReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber):- reaction(ReactionType,Reactant,Product),
                                                                                    bond(Product, BondType, FirstAtomNumber, SecondAtomNumber),
                                                                                    not bond(Reactant, BondType, FirstAtomNumber, SecondAtomNumber).

% Extract all the known reaction.
reactionType(TypeOfReaction):- reaction(TypeOfReaction,_,_).

% Extract all available metabolite.
metabolite(MoleculeName):- atom(MoleculeName,_,_).


% We check all molecules available to see which have the reaction graph inside their graph.
% One test for the reaction site before the reaction.
% Predicate siteBeforeReaction will have all molecules that can be reactant of the reaction.
siteBeforeReaction(ReactionType,MoleculeName):- reactionType(ReactionType); metabolite(MoleculeName);
                                                    atom(MoleculeName,AtomNumber,AtomType): diffAtomBeforeReaction(ReactionType, AtomNumber, AtomType);
			                                        bond(MoleculeName,BondType,FirstAtomNumber,SecondAtomNumber):
                                                        diffBondBeforeReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber);
                                                    not bond(MoleculeName,BondType,FirstAtomNumber,SecondAtomNumber):
                                                        diffBondAfterReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber).

% And one test for the reaction site after the reaction.
% Predicate siteAfterReaction will have all molecules that can be product of the reaction.
siteAfterReaction(ReactionType,MoleculeName):- reactionType(ReactionType); metabolite(MoleculeName);
                                                    atom(MoleculeName,AtomNumber,AtomType): diffAtomAfterReaction(ReactionType, AtomNumber, AtomType);
			                                        bond(MoleculeName,BondType,FirstAtomNumber,SecondAtomNumber):
                                                        diffBondAfterReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber);
                                                    not bond(MoleculeName,BondType,FirstAtomNumber,SecondAtomNumber):
                                                        diffBondBeforeReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber).

#show diffAtomBeforeReaction/3.
#show diffAtomAfterReaction/3.
#show diffBondBeforeReaction/4.
#show diffBondAfterReaction/4.
#show siteBeforeReaction/2.
#show siteAfterReaction/2.
