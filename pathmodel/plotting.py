#!/usr/bin/env python
# -*- coding: UTF-8 -*-

"""
Script to plot 2D representation of molecule present in an ASP input file.

This is useful to check if the ASP structure corresponds to the molecule structure.
"""

import argparse
import os
import networkx as nx
# import for using the script in docker.
import matplotlib; matplotlib.use('svg')
import matplotlib.pyplot as plt

from clyngor import ASP
from pathmodel import check_folder
from networkx.drawing.nx_agraph import graphviz_layout

try:
    from rdkit import Chem
    from rdkit.Chem import AllChem
    from rdkit.Chem import Draw
except ImportError:
    raise ImportError("Requires rdkit (https://github.com/rdkit/rdkit).")

try:
    import pygraphviz
except ImportError:
    raise ImportError("Requires graphviz (https://www.graphviz.org/) and pygraphviz (https://pygraphviz.github.io/).")


def run_pathway_creation():
    """
    Functions handling the argument parsing of pathmodel_plot.
    """
    parser = argparse.ArgumentParser(description="Plot molecules and reactions inferred by PathModel.")
    parser.add_argument("-i", "--input", dest="input_folder", metavar="FOLDER", help="Input folder corresponds to the output folder of pathmodel.")

    parser_args = parser.parse_args()

    input_folder = parser_args.input_folder
    pathmodel_output_file = os.path.join(input_folder, 'pathmodel_output.lp')
    with open(pathmodel_output_file, 'r') as pathmodel_output:
        asp_code = pathmodel_output.read()
    picture_name = os.path.join(input_folder, 'pathmodel_output.svg')
    input_filename = os.path.join(input_folder, 'data_pathmodel.lp')
    output_repository = os.path.join(input_folder, 'molecules')
    new_output_repository = os.path.join(input_folder, 'newmolecules_from_mz')

    # Check if output folder exists if not create it.
    check_folder(output_repository)
    check_folder(new_output_repository)

    print('~~~~~Creating result picture~~~~~')
    pathmodel_pathway_picture(asp_code, picture_name, input_filename)

    if 'predictatom' in asp_code and 'predictbond' in asp_code:
        create_2dmolecule(pathmodel_output_file, new_output_repository, align_domain=None)

    print('~~~~~Creating molecules pictures~~~~~')
    create_2dmolecule(input_filename, output_repository, False)


def pathmodel_pathway_picture(asp_code, picture_name, input_filename):
    """
    Create the pathway picture using ASP results code from PathModel inference.

    Args:
        asp_code (str): string containing PathModel results
        picture_name (str): path to the output picture file
        input_filename (str): path to PathModel intermediary file
    """
    DG = nx.DiGraph()

    known_compounds = []
    inferred_compounds = []

    known_reactions = []
    inferred_reactions = []

    absent_molecules = []

    with open(input_filename, 'r') as intermediate_file:
        for answer in ASP(intermediate_file.read(), use_clingo_module=False).parse_args.by_predicate.discard_quotes:
            for predicate in answer:
                if predicate == "absentmolecules":
                    for atom in answer[predicate]:
                        absent_molecules.append(atom[0])

    for answer in ASP(asp_code, use_clingo_module=False).parse_args.by_predicate.discard_quotes:
        for predicate in answer:
            for atom in answer[predicate]:
                reaction = atom[0]
                reactant = atom[1]
                product = atom[2]
                if predicate == "reaction":
                    if reactant not in absent_molecules:
                        known_compounds.append(reactant)
                    if product not in absent_molecules:
                        known_compounds.append(product)

                    if product not in absent_molecules and reactant not in absent_molecules:
                        known_reactions.append((reactant, product))
                        DG.add_edge(reactant, product, label=reaction)
                elif predicate == "newreaction":
                    if 'Prediction_' in reactant:
                        inferred_compounds.append(reactant)
                    if 'Prediction_' in product:
                        inferred_compounds.append(product)

                    inferred_reactions.append((reactant, product))
                    DG.add_edge(reactant, product, label=reaction)
    plt.figure(figsize=(25, 25))

    nx.draw_networkx_nodes(DG,
                           graphviz_layout(DG, prog='neato'),
                           nodelist=known_compounds,
                           node_color="green",
                           node_size=3000,
                           node_shape='s',
                           alpha=0.5)
    nx.draw_networkx_nodes(DG,
                           graphviz_layout(DG, prog='neato'),
                           nodelist=inferred_compounds,
                           node_color="blue",
                           node_size=2000,
                           node_shape='s',
                           alpha=0.5)

    nx.draw_networkx_edges(DG,
                           graphviz_layout(DG, prog='neato'),
                           edgelist=known_reactions,
                           edge_color="green",
                           alpha=0.5,
                           width=2.0,
                           arrows=True,
                           arrowstyle='->',
                           arrowsize=14)
    nx.draw_networkx_edges(DG,
                           graphviz_layout(DG, prog='neato'),
                           edgelist=inferred_reactions,
                           edge_color="blue",
                           alpha=0.5,
                           width=2.0,
                           arrows=True,
                           arrowstyle='->',
                           arrowsize=14)
    nx.draw_networkx_labels(DG,
                            graphviz_layout(DG, prog='neato'),
                            font_size=15)

    ax = plt.gca()
    ax.set_axis_off()

    extension = os.path.splitext(picture_name)[1].strip('.')
    plt.savefig(picture_name, dpi=144, format=extension)


def create_rdkit_molecule(molecule_name, molecules, molecule_numberings, bonds):
    '''
    Using dictionaries containing molecule structure create a rdkit molecule.

    Args:
        molecule_name (str): name of a molecule
        molecules (dict): dictionary containing for each molecules a list with a atom numbers and types in the molecule
        molecule_numberings (dict): dictionary containing for each molecules a list with a atom numbers in the molecule
        bonds (dict): dictionary containing for each molecules the list of its bond in utpels (bond_number_1, bond_number_2, bond_type)
    Returns:
        rdmol (Mol): the molecule in rdkit Molecule
    '''
    # Create an editable molecule.
    rdmol = Chem.Mol()
    rdedmol = Chem.EditableMol(rdmol)

    atoms = {atom_tuple[0]: atom_tuple[1] for atom_tuple in sorted(molecules[molecule_name])}
    atom_numberings = sorted(molecule_numberings[molecule_name])
    # Renumber atom so there is no atom with a number superior to the number of atoms in the molecule.
    atom_replaces = {}

    for atom in atom_numberings:
        if atom != sorted(atom_numberings).index(atom)+1:
            atom_replaces[atom] = sorted(atom_numberings).index(atom)+1

    # Add a first atom to keep most of the atom numbering.
    rdatom = Chem.Atom(0)
    rdedmol.AddAtom(rdatom)

    # Add atoms from the molecule.
    # Add absent atoms to keep the atom numbering.
    for atom_number in range(max(atom_numberings)):
        atom_number += 1
        if atom_number in atoms:
            atom = atoms[atom_number]
        else:
            atom = 0
        rdatom = Chem.Atom(atom)
        rdedmol.AddAtom(rdatom)

    # Add bonds from the molecule.
    for bond in bonds[molecule_name]:
        bond = tuple(bond)
        rdedmol.AddBond(bond[0],
                        bond[1],
                        bond[2])

    # Create molecule.
    rdmol = rdedmol.GetMol()

    return rdmol


def create_2dmolecule(input_filename, output_directory, align_domain=None):
    '''
    From an ASP input file create 2d representation of molecules.
    To use align_domain, you need the intermediate file creates by pathmodel_wrapper.py.
    With align_domain, rdkit will use domain to align molecules.

    Args:
        input_filename (str): path to PathMoldel output file
        output_directory (str): output folder containing pictures of the molecuels and of the infered pathway
        align_domain (bool): if True, rdkit will use domain to align molecules
    '''
    with open(input_filename, 'r') as input_file:
        asp_code = input_file.read()
    # Set bond types transformation from ASP to rdkit.
    bondtypes = {'single': Chem.BondType.SINGLE,
                    'singleS': Chem.BondType.SINGLE,
                    'singleR': Chem.BondType.SINGLE,
                    'double': Chem.BondType.DOUBLE,
                    'triple': Chem.BondType.TRIPLE,
                    'variable': Chem.BondType.UNSPECIFIED}

    # Set atomic number transformation from ASP to rdkit.
    atomicNumber = {'carb': 6,
                    'nitr': 7,
                    'oxyg': 8,
                    'phos': 15,
                    'variable': 0}

    if align_domain:
        domain_molecules = {}
        domain_molecule_numberings = {}
        domain_bonds = {}
        molecule_domains = {}

    molecules = {}
    molecule_numberings = {}
    bonds = {}

    # Parse ASP input file and extract molecules, atoms and bonds.
    for predicate in ASP(asp_code, use_clingo_module=False).parse_args.discard_quotes:
        for variable in predicate:
            if variable[0] == 'atom' or variable[0] == 'predictatom':
                atom_molecule = variable[1][0]
                atom_number = variable[1][1]
                atom_type = atomicNumber[variable[1][2]]
                if atom_molecule not in molecules:
                    molecules[atom_molecule] = [(atom_number, atom_type)]
                    molecule_numberings[atom_molecule] = [atom_number]
                else:
                    molecules[atom_molecule].append((atom_number, atom_type))
                    molecule_numberings[atom_molecule].append(atom_number)

            elif variable[0] == 'bond' or variable[0] == 'predictbond':
                atom_molecule = variable[1][0]
                bond_number_1 = variable[1][2]
                bond_number_2 = variable[1][3]
                bond_type = bondtypes[variable[1][1]]
                if atom_molecule not in bonds:
                    bonds[atom_molecule] = [(bond_number_1, bond_number_2, bond_type)]
                else:
                    bonds[atom_molecule].append((bond_number_1, bond_number_2, bond_type))

            if align_domain:
                # Extract domain information.
                if variable[0] == 'atomDomain':
                    atom_molecule = variable[1][0]
                    atom_number = variable[1][1]
                    atom_type = atomicNumber[variable[1][2]]
                    if atom_molecule not in domain_molecules:
                        domain_molecules[atom_molecule] = [(atom_number, atom_type)]
                        domain_molecule_numberings[atom_molecule] = [atom_number]
                    else:
                        domain_molecules[atom_molecule].append((atom_number, atom_type))
                        domain_molecule_numberings[atom_molecule].append(atom_number)

                elif variable[0] == 'bondDomain':
                    atom_molecule = variable[1][0]
                    bond_number_1 = variable[1][2]
                    bond_number_2 = variable[1][3]
                    bond_type = bondtypes[variable[1][1]]
                    if atom_molecule not in domain_bonds:
                        domain_bonds[atom_molecule] = [(bond_number_1, bond_number_2, bond_type)]
                    else:
                        domain_bonds[atom_molecule].append((bond_number_1, bond_number_2, bond_type))

                elif variable[0] == 'domain':
                    molecule_name = variable[1][0]
                    domain_name = variable[1][1]
                    molecule_domains[molecule_name] = domain_name

    # For each domains, create the corresponding rdkit molecule.
    if align_domain:
        rddomains = {}
        for domain_name in domain_molecules:
            rddomain = create_rdkit_molecule(domain_name, domain_molecules, domain_molecule_numberings, domain_bonds)
            rddomains[domain_name] = rddomain

    # For each molecules, create a rdkit molecule.
    for molecule_name in molecules:
        rdmol = create_rdkit_molecule(molecule_name, molecules, molecule_numberings, bonds)

        if align_domain:
            # Use domain to align molecule.
            template = rddomains[molecule_domains[molecule_name]]
            AllChem.Compute2DCoords(rdmol)
            AllChem.Compute2DCoords(template)
            AllChem.GenerateDepictionMatching2DStructure(rdmol, template)

        # Add atom numbering to molecule.
        # Source: https://iwatobipen.wordpress.com/2017/02/25/draw-molecule-with-atom-index-in-rdkit/
        def mol_with_atom_index(mol):
            atoms = mol.GetNumAtoms()
            for idx in range(atoms):
                mol.GetAtomWithIdx(idx).SetProp( 'molAtomMapNumber', str(sorted(molecule_numberings[molecule_name])[idx]))
            return mol

        # Remove Atom with atomic number == 0
        # Source: https://sourceforge.net/p/rdkit/mailman/message/28157259/
        rdmol = Chem.DeleteSubstructs(rdmol, Chem.MolFromSmarts('[#0]'))

        # Draw molecule.
        molecule_name = molecule_name
        print(molecule_name)
        output_molecule_path = os.path.join(output_directory, molecule_name+'.svg')
        Draw.MolToFile(mol_with_atom_index(rdmol), output_molecule_path, size=(800, 800), includeAtomNumbers=True)

    input_file.close()


if __name__ == '__main__':
    run_pathway_creation()
