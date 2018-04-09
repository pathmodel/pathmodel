%*
Compare links between two molecules that are implied in a reaction.
Search for the difference between the molecules and extract the positions that are different.
*%

#script (python)

import clingo

def on_model(answer, output_file):
    atoms=answer.symbols(atoms=True)
    for atom in atoms:
        if atom.name == "diffAtomBeforeReaction" and len(atom.arguments) == 2:
            output_file.write( "diffAtomBeforeReaction("+str(atom.arguments[0])+","+str(atom.arguments[1])+").\n")
        elif atom.name == "diffAtomAfterReaction" and len(atom.arguments) == 2:
            output_file.write( "diffAtomAfterReaction("+str(atom.arguments[0])+","+str(atom.arguments[1])+").\n")
        elif atom.name == "diffLinkBeforeReaction" and len(atom.arguments) == 4:
            output_file.write( "diffLinkBeforeReaction("+str(atom.arguments[0])+","+str(atom.arguments[1])+","+str(atom.arguments[2])+","+str(atom.arguments[3])+").\n")
        elif atom.name == "diffLinkAfterReaction" and len(atom.arguments) == 4:
            output_file.write( "diffLinkAfterReaction("+str(atom.arguments[0])+","+str(atom.arguments[1])+","+str(atom.arguments[2])+","+str(atom.arguments[3])+").\n")
        elif atom.name == "classSiteBeforeReaction" and len(atom.arguments) == 2:
            output_file.write( "classSiteBeforeReaction("+str(atom.arguments[0])+","+str(atom.arguments[1])+").\n")
        elif atom.name == "classSiteAfterReaction" and len(atom.arguments) == 2:
            output_file.write( "classSiteAfterReaction("+str(atom.arguments[0])+","+str(atom.arguments[1])+").\n")

def main(prg):
	input_file = open("data.lp", "r")
	output_file = open("data_result.lp", "w")
	output_file.write(input_file.read())
	input_file.close()

	output_file.write('\n')
	output_file.write('% Reaction site for each reaction.')
	output_file.write('\n')

	prg.ground([("base", [])])
	for answer_number, answer in enumerate(prg.solve(yield_=True, async=True), start=1):
		on_model(answer, output_file)
	output_file.close()

#end.


%*
Look at the atoms.
diffAtomBefore(Reaction Type, Atom Type, Atom Number)
diffAtomAfter(ReactionType, AtomType, AtomNumber)
*%

diffAtomBeforeReaction(ReactionType, AtomNumber):- reaction(ReactionType,MoleculeName1,MoleculeName2), component(MoleculeName1,AtomNumber,AtomType),
not component(MoleculeName2,AtomNumber,AtomType).
diffAtomAfterReaction(ReactionType, AtomNumber):- reaction(ReactionType,MoleculeName1,MoleculeName2), component(MoleculeName2,AtomNumber,AtomType),
not component(MoleculeName1,AtomNumber,AtomType).

%*
Look at the links.
diffLinkBefore(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber)
diffLinkAfter(ReactionType, BondType, FirstAtomNumber, SecondAtomNumber):
*%

diffLinkBeforeReaction(ReactionType, FirstAtomNumber, SecondAtomNumber, BondType):- reaction(ReactionType,MoleculeName1,MoleculeName2), link(MoleculeName1, BondType, FirstAtomNumber, SecondAtomNumber),
not link(MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber).
diffLinkAfterReaction(ReactionType, FirstAtomNumber, SecondAtomNumber, BondType):- reaction(ReactionType,MoleculeName1,MoleculeName2), link(MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber),
not link(MoleculeName1, BondType, FirstAtomNumber, SecondAtomNumber).

reactiontype(T):- reaction(T,_,_,_,_,_). 
reactionType(TypeOfReaction):- reaction(TypeOfReaction,_,_).
output_metabolite(M):- reaction(_,_,_,_,_,M).
output_metabolite(MoleculeName):- reaction(_,_,MoleculeName).
input_metabolite(MoleculeName):- component(MoleculeName,_,_); not output_metabolite(MoleculeName).
metabolite(MoleculeName):- component(MoleculeName,_,_).

%*
Infer reaction site from reaction atom and link.
*%

classSiteBeforeReaction(ReactionType,MoleculeName):- reactionType(ReactionType), metabolite(MoleculeName); component(MoleculeName,I,A): diffAtomBeforeReaction(ReactionType, A);
			link(MoleculeName,AT,FirstAtomNumber,SecondAtomNumber): diffLinkBeforeReaction(ReactionType, FirstAtomNumber, SecondAtomNumber, AT).
classSiteAfterReaction(ReactionType,MoleculeName):- reactionType(ReactionType), metabolite(MoleculeName); component(MoleculeName,I,A): diffAtomAfterReaction(ReactionType, A);
			link(MoleculeName,AT,FirstAtomNumber,SecondAtomNumber): diffLinkAfterReaction(ReactionType, FirstAtomNumber, SecondAtomNumber, AT).