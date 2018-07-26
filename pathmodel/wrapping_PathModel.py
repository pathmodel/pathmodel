#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import argparse
import clyngor
import os
import sys

from pathmodel.path_creation import pathmodel_pathway_picture

def run_pathmodel():
	parser = argparse.ArgumentParser(usage="python pathway_tools_multiprocess.py -f FOLDER")
	parser.add_argument("-d", "--data", dest = "input_file", metavar = "FILE", help = "Input file containing atoms, bonds, reactions and goal.")

	parser_args = parser.parse_args(sys.argv[1:])

	input_file = parser_args.input_file

	pathmodel_analysis(input_file)

def pathmodel_analysis(input_file):
	root = __file__.rsplit('/', 1)[0]
	print('~~~~~Creation of MZ~~~~~')
	# Compute MZ for all known molecules and MZ for reaction then put results in a string.
	# Use next because for these analysis, we expect only one answer.
	mz_solver = clyngor.solve([input_file, root + '/asp/MZComputation.lp'])
	mz_result = '\n'.join([atom+'. ' for atom in next(mz_solver.parse_args.atoms_as_string.int_not_parsed)])

	print('~~~~~Creation of Reaction~~~~~')
	# Detect reaction sites by comparing molecules implied in a reaction, then put results in a string.
	reaction_solver = clyngor.solve([input_file, root + '/asp/ReactionSiteExtraction.lp'])
	reaction_result = '\n'.join([atom+'. ' for atom in next(reaction_solver.parse_args.atoms_as_string.int_not_parsed)])

	print('~~~~~Inference of reactions and metabolites~~~~~')
	# Merge input files + result from MZ prediction and reaction creation into a string, which will be the input file for PathModel.
	input_string = open(input_file, 'r').read() + '\n' + mz_result + '\n' + reaction_result
	pathmodel_solver = clyngor.solve(inline=input_string, files=root + '/asp/PathModel.lp')

	# Take the best model.
	best_model = None
	for best_model in pathmodel_solver.parse_args.atoms_as_string.int_not_parsed.sorted: pass
	pathmodel_result = '\n'.join([atom+'.' for atom in best_model])

	print('~~~~~Creating result file~~~~~')
	# Write input in a file.
	resultfile = open("result.lp", "w")
	resultfile.write(pathmodel_result)
	resultfile.write('\n')
	resultfile.close()

	pathmodel_pathway_picture("result.lp")

if __name__ == '__main__':
    run_pathmodel()
