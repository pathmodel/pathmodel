#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import argparse
import clyngor
import os
import sys

from pathmodel.plotting.path_creation import pathmodel_pathway_picture

def run_pathmodel():
	parser = argparse.ArgumentParser(usage="python pathmodel.py -d FILE -p FILE -o FILE")
	parser.add_argument("-d", "--data", dest = "input_file", metavar = "FILE", help = "Input file containing atoms, bonds, reactions and goal.")
	parser.add_argument("-p", "--picture", dest = "picture", metavar = "FILE", help = "Create picture result file.")
	parser.add_argument("-o", "--output", dest = "output_file", metavar = "FILE", help = "Write result in this file.")

	parser_args = parser.parse_args()

	input_file = parser_args.input_file
	picture_name = parser_args.picture
	output_file = parser_args.output_file

	pathmodel_analysis(input_file, picture_name, output_file)

def pathmodel_analysis(input_file, picture_name=None, output_file=None):
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
	input_pathmodel_file = open("data_pathmodel.lp", "w")
	input_pathmodel_file.write(input_string)
	input_pathmodel_file.write('\n')
	input_pathmodel_file.close()

	pathmodel_solver = clyngor.solve(inline=input_string, files=root + '/asp/PathModel.lp')

	# Take the best model.
	best_model = None
	for best_model in pathmodel_solver.parse_args.atoms_as_string.int_not_parsed.sorted: pass
	pathmodel_result = '\n'.join([atom+'.' for atom in best_model])

	if output_file:
		print('~~~~~Creating result file~~~~~')
		# Write input in a file.
		resultfile = open(output_file, "w")
		resultfile.write(pathmodel_result)
		resultfile.write('\n')
		resultfile.close()

	if picture_name:
		pathmodel_pathway_picture(pathmodel_result, picture_name)

	return pathmodel_result

if __name__ == '__main__':
    run_pathmodel()
