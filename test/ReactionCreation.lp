%*
This script will create the reference reaction site.
To do this it compares links and atoms between two molecules that are implied in a reaction.
When it finds difference, the script will extract the links and atoms and write the result in a file.
*%

#script (python)

import clingo

def on_model(answer, output_file):
    atoms=answer.symbols(atoms=True)
    for atom in atoms:
        if atom.name == "diffAtomBeforeReaction" and len(atom.arguments) == 3:
            output_file.write( "diffAtomBeforeReaction("+str(atom.arguments[0])+","+str(atom.arguments[1])+","+str(atom.arguments[2])+").\n")
        elif atom.name == "diffAtomAfterReaction" and len(atom.arguments) == 3:
            output_file.write( "diffAtomAfterReaction("+str(atom.arguments[0])+","+str(atom.arguments[1])+","+str(atom.arguments[2])+").\n")
        elif atom.name == "diffLinkBeforeReaction" and len(atom.arguments) == 4:
            output_file.write( "diffLinkBeforeReaction("+str(atom.arguments[0])+","+str(atom.arguments[1])+","+str(atom.arguments[2])+","+str(atom.arguments[3])+").\n")
        elif atom.name == "diffLinkAfterReaction" and len(atom.arguments) == 4:
            output_file.write( "diffLinkAfterReaction("+str(atom.arguments[0])+","+str(atom.arguments[1])+","+str(atom.arguments[2])+","+str(atom.arguments[3])+").\n")
        elif atom.name == "siteBeforeReaction" and len(atom.arguments) == 2:
            output_file.write( "siteBeforeReaction("+str(atom.arguments[0])+","+str(atom.arguments[1])+").\n")
        elif atom.name == "siteAfterReaction" and len(atom.arguments) == 2:
            output_file.write( "siteAfterReaction("+str(atom.arguments[0])+","+str(atom.arguments[1])+").\n")

def main(prg):
    # Open data file and write its content in an output file.
	input_file = open("data.lp", "r")
	output_file = open("data_result.lp", "w")
	output_file.write(input_file.read())
	input_file.close()

    # Add predicates informing of the position of the reaction sites.
	output_file.write('\n')
	output_file.write('% Reaction site for each reaction.')
	output_file.write('\n')

	prg.ground([("base", [])])
	for answer_number, answer in enumerate(prg.solve(yield_=True, async=True), start=1):
		on_model(answer, output_file)
	output_file.close()

#end.


% Compare reactant and product of the reaction.
% The idea is to create a named graph (with diffAtomBeforeReaction as node and diffLinkBeforeReaction as edge) containing the reaction.

% Compare atoms between molecules.
% To see what atoms are implied in the reaction we look for atom present in Reactant but not in Product.
% diffAtomBefore(Reaction Type, Atom Number)
% TEST: reaction-creation
diffAtomBeforeReaction(ReactionType, AtomNumber, AtomType):- reaction(ReactionType,Reactant,Product), component(Reactant,AtomNumber,AtomType),
                                                    not component(Product,AtomNumber,AtomType).
% diffAtomAfter(Reaction Type, Atom Number)
% Same as above but for atoms present in Product and not in Reactant.
diffAtomAfterReaction(ReactionType, AtomNumber, AtomType):- reaction(ReactionType,Reactant,Product), component(Product,AtomNumber,AtomType),
                                                    not component(Reactant,AtomNumber,AtomType).
% Compare links between molecules.
% To extract links implied in the reaction we look for links present in Reactant but not in Product.
% diffLinkBefore(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber)
diffLinkBeforeReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber):- reaction(ReactionType,Reactant,Product),
                                                                                    link(Reactant, BondType, FirstAtomNumber, SecondAtomNumber),
                                                                                    not link(Product, BondType, FirstAtomNumber, SecondAtomNumber).
% Same as above but for links present in Product and not in Reactant.
% diffLinkAfter(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber)
diffLinkAfterReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber):- reaction(ReactionType,Reactant,Product),
                                                                                    link(Product, BondType, FirstAtomNumber, SecondAtomNumber),
                                                                                    not link(Reactant, BondType, FirstAtomNumber, SecondAtomNumber).
% Extract all the known reaction.
reactionType(TypeOfReaction):- reaction(TypeOfReaction,_,_).
% Extract all available metabolite.
metabolite(MoleculeName):- component(MoleculeName,_,_).
% We check all molecules available to see which have the reaction graph inside their graph.
% One test for the reaction site before the reaction.
% Predicate siteBeforeReaction will have all molecules that can be reactant of the reaction.
siteBeforeReaction(ReactionType,MoleculeName):- reactionType(ReactionType); metabolite(MoleculeName);
                                                    component(MoleculeName,AtomNumber,AtomType): diffAtomBeforeReaction(ReactionType, AtomNumber, AtomType);
			                                        link(MoleculeName,BondType,FirstAtomNumber,SecondAtomNumber):
                                                        diffLinkBeforeReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber);
                                                    not link(MoleculeName,BondType,FirstAtomNumber,SecondAtomNumber):
                                                        diffLinkAfterReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber).
% And one test for the reaction site after the reaction.
% Predicate siteAfterReaction will have all molecules that can be product of the reaction.
siteAfterReaction(ReactionType,MoleculeName):- reactionType(ReactionType); metabolite(MoleculeName);
                                                    component(MoleculeName,AtomNumber,AtomType): diffAtomAfterReaction(ReactionType, AtomNumber, AtomType);
			                                        link(MoleculeName,BondType,FirstAtomNumber,SecondAtomNumber):
                                                        diffLinkAfterReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber);
                                                    not link(MoleculeName,BondType,FirstAtomNumber,SecondAtomNumber):
                                                        diffLinkBeforeReaction(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber).