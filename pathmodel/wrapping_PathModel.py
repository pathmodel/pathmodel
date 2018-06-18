# -*- coding: utf-8 -*-

import argparse
import clyngor
import os
import sys

parser = argparse.ArgumentParser(usage="python pathway_tools_multiprocess.py -f FOLDER")
parser.add_argument("-d", "--data", dest = "input_file", metavar = "FILE", help = "Input file containing atoms, bonds, reactions and goal.")

parser_args = parser.parse_args(sys.argv[1:])

input_file = parser_args.input_file

def pathmodel_analysis(input_file):
	print('~~~~~Creation of MZ~~~~~')
	mz_result = clyngor.solve([input_file, 'asp/MZComputation.lp'])

	with open('data_preprocess.lp', 'w') as output_file:
		with open(input_file,'r') as data_file:
				output_file.write(data_file.read())

	with open('data_preprocess.lp', 'a') as output_file:
		for answer in sorted(mz_result.parse_args.atoms_as_string.int_not_parsed.with_optimization):
			for atom in answer[0]:
				output_file.write(atom)
				output_file.write('.\n')

	print('~~~~~Creation of Reaction~~~~~')
	reaction_result = clyngor.solve([input_file, 'asp/ReactionCreation.lp'])

	with open('data_preprocess.lp', 'a') as output_file:
		for answer in sorted(reaction_result.parse_args.atoms_as_string.int_not_parsed.with_optimization):
			for atom in answer[0]:
				output_file.write(atom)
				output_file.write('.\n')

	print('~~~~~Inference of reactions and metabolites~~~~~')
	test_result = clyngor.solve(['data_preprocess.lp', 'asp/PathModel.lp'])

	result = clyngor.solve(['data_preprocess.lp', 'asp/PathModel.lp'])

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

pathmodel_analysis(input_file)
