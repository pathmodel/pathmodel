#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import clyngor
import csv
import os
import sys
import time

# Path to package scripts.
global root
root = os.path.dirname(__file__)

def check_folder(folder_in):
    '''
    Args:
        folder_in (str): folder to check
    '''
    if not os.path.isdir(folder_in):
        try:
            os.makedirs(folder_in)
        except OSError:
            raise OSError('Can not create folder: ' + folder_in)


def mz_computation(input_file):
    '''
    Compute MZ for all known molecules and MZ for reaction.
    Return the result as a string.
    Use next because for these analysis, we expect only one answer.

    Args:
        input_file (str): path to the input data file
    Returns:
        mz_result (str): ASP answer as str
    '''
    print('~~~~~Creation of MZ~~~~~')
    mzcomputation_path = os.path.join(*[root, 'asp', 'MZComputation.lp'])
    mz_solver = clyngor.solve([input_file, mzcomputation_path], use_clingo_module=False)
    mz_result = '\n'.join([atom+'.' for atom in next(mz_solver.parse_args.atoms_as_string.int_not_parsed.sorted)])

    return mz_result


def reaction_creation(input_file, output_folder):
    '''
    Detect reaction sites by comparing molecules implied in a reaction.
    Return the result as a string.

    Args:
        input_file (str): path to the input data file
        output_folder (str): path to the output folder
    Returns:
        reaction_result (str): ASP answer as str
    '''
    print('~~~~~Creation of Reaction~~~~~')
    reaction_site_extraction_script = os.path.join(*[root, 'asp', 'ReactionSiteExtraction.lp'])
    reaction_solver = clyngor.solve([input_file, reaction_site_extraction_script], use_clingo_module=False)
    reaction_results = []
    transformation_reactants = {}
    transformation_products = {}
    reactions = []
    for atom in next(reaction_solver.parse_args.int_not_parsed.sorted):
        reaction_results.append(atom[0] + '(' + ','.join(atom[1]) + ')')
        if 'diff' in atom[0]:
            reaction_id = atom[1][0]
            substructures = atom[1][1:]
            reactions.append(reaction_id)
            if 'Before' in atom[0]:
                if reaction_id not in transformation_reactants:
                    transformation_reactants[reaction_id] = [substructures]
                else:
                    transformation_reactants[reaction_id].append([substructures])
            elif 'After' in atom[0]:
                if reaction_id not in transformation_products:
                    transformation_products[reaction_id] = [substructures]
                else:
                    transformation_products[reaction_id].append([substructures])

    reactions = set(reactions)
    pathmodel_output_transformation_path = os.path.join(output_folder, 'pathmodel_data_transformations.tsv')
    with open(pathmodel_output_transformation_path, 'w') as transformation_file:
        csvwriter = csv.writer(transformation_file, delimiter = '\t')
        csvwriter.writerow(['reaction_id', 'reactant_sbustructure', 'product_substructure'])
        for reaction in reactions:
            if reaction in transformation_reactants:
                reactant = transformation_reactants[reaction]
            else:
                reactant = []
            if reaction in transformation_products:
                product = transformation_products[reaction]
            else:
                product = []
            csvwriter.writerow([reaction, reactant, product])


    reaction_result = '\n'.join([atom+'.' for atom in reaction_results])

    return reaction_result


def extract_transformation_known_reactions(input_file, output_folder):
    print('~~~~~Extraction of Reaction~~~~~')
    reaction_extraction_script = os.path.join(*[root, 'asp', 'CompareMolecules.lp'])
    reaction_solver = clyngor.solve([input_file, reaction_extraction_script], use_clingo_module=False)

    known_transformations_path = os.path.join(output_folder, 'known_transformations.tsv')
    with open(known_transformations_path, 'w') as output_file:
        csvwriter = csv.writer(output_file, delimiter='\t')
        csvwriter.writerow(['reaction_name', 'molecule_A', 'molecule_B', 'bond_type', 'atom_1', 'atom_2'])
        for atom in next(reaction_solver.parse_args.int_not_parsed.sorted):
            if 'diff' in atom[0]:
                reaction_id = atom[1][0]
                molecule_A_name = atom[1][1]
                molecule_B_name = atom[1][2]
                bond_type = atom[1][3]
                atom_1 = atom[1][4]
                atom_2 = atom[1][5]
                csvwriter.writerow([reaction_id, molecule_A_name, molecule_B_name, bond_type, atom_1, atom_2])


def pathmodel_inference(input_string, output_folder, step_limit):
    '''
    Infer reactions and metabolites from known reactions and metabolites.

    Args:
        input_file (str): path to the input data file
        output_folder (str): path to the output folder
        step_limit (int): if PathModel reaches this step limit, it will stop its inference and returns an error
    Returns:
        pathmodel_result (str): ASP answer as str
    '''
    print('~~~~~Inference of reactions and metabolites~~~~~')
    pathmodel_script_path = os.path.join(*[root, 'asp', 'PathModel.lp'])
    pathmodel_solver = clyngor.solve(inline=input_string, files=pathmodel_script_path, use_clingo_module=False)

    # Take the best model.
    best_model = None
    best_model = []
    pathways = {}
    reactions = {}

    for atom in next(pathmodel_solver.parse_args.int_not_parsed.sorted):
        if 'inferred' in atom[0]:
            infer_step = int(atom[1][1])
            reactant = atom[1][0][1][0]
            product = atom[1][0][1][1]
            if infer_step not in pathways:
                pathways[infer_step] = [(reactant, product)]
            else:
                pathways[infer_step].append((reactant, product))
        elif 'query' in atom[0]:
            step = int(atom[1][0])
            if step_limit:
                if int(step_limit) == step:
                    sys.exit('Step limit ('+str(step_limit)+') reached, the goal is not reachable in ' + str(step_limit) + 'steps or there is an error in the data.')
        else:
            best_model.append(atom[0] + '(' + ','.join(atom[1]) + ')')
            if 'newreaction' in atom[0]:
                reactions[atom[1][1:]] = atom[1][0]

    pathmodel_result = '\n'.join([atom+'.' for atom in best_model])

    already_inferreds = []
    pathmodel_incremental_inference_path = os.path.join(output_folder, 'pathmodel_incremental_inference.tsv')
    with open(pathmodel_incremental_inference_path, 'w') as outfile:
        csvwriter = csv.writer(outfile, delimiter='\t')
        csvwriter.writerow(["infer_step", "new_reaction", "reactant", "product"])
        for infer_step in sorted(list(pathways.keys())):
            for reaction in pathways[infer_step]:
                if reaction in reactions and reaction not in already_inferreds:
                    csvwriter.writerow([infer_step, reactions[reaction], *reaction])
                    already_inferreds.append(reaction)

    return pathmodel_result


def pathmodel_analysis(input_file, output_folder, step_limit=None):
    '''
    Run all PathModel functions.

    Args:
        input_file (str): path to the input data file
        output_folder (str): path to the output folder
        step_limit (int): if PathModel reaches this step limit, it will stop its inference and returns an error
    Returns:
        pathmodel_result (str): ASP answer as str
    '''
    check_folder(output_folder)

    mz_result = mz_computation(input_file)

    extract_transformation_known_reactions(input_file, output_folder)

    reaction_result = reaction_creation(input_file, output_folder)

    # Create step limit.
    if step_limit:
        str_step_limit = "step_limit("+str(step_limit)+")."
    else:
        step_limit = 100
        str_step_limit = "step_limit(100)."

    # Merge input files + result from MZ prediction and reaction creation into a string, which will be the input file for PathModel.
    input_string = open(input_file, 'r').read() + '\n' + str_step_limit + '\n' + mz_result + '\n' + reaction_result

    data_pathmodel_output_path = os.path.join(output_folder, 'data_pathmodel.lp')
    with open(data_pathmodel_output_path, 'w') as intermediate_file:
        intermediate_file.write(input_string)
        intermediate_file.write('\n')

    pathmodel_result = pathmodel_inference(input_string, output_folder, step_limit)

    output_lp = os.path.join(output_folder, 'pathmodel_output.lp')

    print('~~~~~Creating result file~~~~~')
    # Write input in a file.
    with open(output_lp, "w") as resultfile:
        resultfile.write(pathmodel_result)
        resultfile.write('\n')

    return pathmodel_result
