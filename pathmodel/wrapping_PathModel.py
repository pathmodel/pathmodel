# -*- coding: utf-8 -*-

import sys  
import clyngor

print('~~~~~Creation of Reaction~~~~~')
next(clyngor.solve(['data.lp', 'asp/ReactionCreation.lp']), None)

print('~~~~~Inference of reactions and metabolites~~~~~')
test_result = clyngor.solve(['data_result.lp', 'asp/PathModel.lp'])

result = clyngor.solve(['data_result.lp', 'asp/PathModel.lp'])

print('~~~~~Creating result file~~~~~')
resultfile = open("result.lp", "w")
optimization_scores = []
# Parse result of classification
# Check the best optimization.
# In clyngor with optimization answer are set with two datas: first one is the model the second is the optimization.
for answer in test_result.with_optimization:
	try:
		optimization_score = answer[1][1]
		optimization_scores.append(optimization_score)
	except:
		break

# Write the atoms from the model with the best optimization.
if optimization_scores:
	best_score = max(optimization_scores)

for answer in sorted(result.parse_args.atoms_as_string.int_not_parsed.with_optimization):
	try:
		if answer[1][1] == best_score:
			for atom in answer[0]:
				resultfile.write(atom)
				resultfile.write('.\n')
	except:
		for atom in answer[0]:
			resultfile.write(atom)
			resultfile.write('.\n')

resultfile.close()