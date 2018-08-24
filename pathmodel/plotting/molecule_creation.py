#!/usr/bin/env python
# -*- coding: UTF-8 -*-

"""
Script to plot 2D representation of molecule present in an ASP input file.

This is useful to check if the ASP structure corresponds to the molecule structure.
"""

import argparse

from clyngor import ASP
from rdkit import Chem
from rdkit.Chem import Draw

def run_pathway_creation():
    parser = argparse.ArgumentParser(usage="python molecule_creation.py -f FILE -o STRING")
    parser.add_argument("-f", "--file", dest = "asp_file", metavar = "FILE", help = "Input file containing molecule structures.")
    parser.add_argument("-o", "--output", dest = "output_repository", metavar = "FOLDER", help = "Name of the folder where molecule pictures will be created.")

    parser_args = parser.parse_args()

    input_filename = parser_args.asp_file
    output_repository = parser_args.output_repository

    create_2dmolecule(input_filename, output_repository)

def create_2dmolecule(input_filename, output_directory):
	with open(input_filename, 'r') as input_file:
		asp_code = input_file.read()
	# Set bond types transformation from ASP to rdkit.
	bondtypes = {'single': Chem.BondType.SINGLE,
					'singleS': Chem.BondType.SINGLE,
					'singleR': Chem.BondType.SINGLE,
				'double': Chem.BondType.DOUBLE,
				'triple': Chem.BondType.TRIPLE}

	# Set atomic number transformation from ASP to rdkit.
	atomicNumber = { 'carb': 6,
					'nitro': 7,
					'oxyg': 8,
					'phos': 15}

	molecules = {}
	molecule_numberings = {}
	bonds = {}

	# Parse ASP input file and extract molecules, atoms and bonds.
	for predicate in ASP(asp_code).parse_args:
		for variable in predicate:
			if variable[0] == 'atom':
				atom_molecule = variable[1][0]
				atom_number = variable[1][1]
				atom_type = atomicNumber[variable[1][2]]
				if atom_molecule not in molecules:
					molecules[atom_molecule] = [(atom_number,atom_type)]
					molecule_numberings[atom_molecule] = [atom_number]
				else:
					molecules[atom_molecule].append((atom_number,atom_type))
					molecule_numberings[atom_molecule].append(atom_number)
			if variable[0] == 'bond':
				atom_molecule = variable[1][0]
				bond_number_1 = variable[1][2]
				bond_number_2 = variable[1][3]
				bond_type = bondtypes[variable[1][1]]
				if atom_molecule not in bonds:
					bonds[atom_molecule] = [(bond_number_1,bond_number_2,bond_type)]
				else:
					bonds[atom_molecule].append((bond_number_1,bond_number_2,bond_type))


	for molecule_name in molecules:
		# Create an editable molecule.
		rdmol = Chem.Mol()
		rdedmol = Chem.EditableMol(rdmol)

		atoms = sorted(molecules[molecule_name])
		atom_numberings = sorted(molecule_numberings[molecule_name])
		# Renumber atom so there is no atom witha number superior to the number of atoms in the molecule.
		atom_replaces = {}
		for index, atom in enumerate(atom_numberings):
			if atom != sorted(atom_numberings).index(atom)+1:
				atom_replaces[atom] = sorted(atom_numberings).index(atom)+1

		# Add a first atom to keep most of the atom numbering.
		rdatom = Chem.Atom(0)
		rdedmol.AddAtom(rdatom)

		# Add atoms from the molecule.
		for atom in atoms:
			rdatom = Chem.Atom(atom[1])
			rdedmol.AddAtom(rdatom)

		# Add bonds from the molecule.
		for bond in bonds[molecule_name]:
			# Renumber the bond with the changes made in atom numbering.
			bond = list(bond)
			if bond[0] in atom_replaces:
				bond[0] = atom_replaces[bond[0]]
			if bond[1] in atom_replaces:
				bond[1] = atom_replaces[bond[1]]
			bond = tuple(bond)
			rdedmol.AddBond(bond[0],
							bond[1],
							bond[2])

		# Create molecule.
		rdmol = rdedmol.GetMol()

		# Draw molecule.	
		molecule_name = molecule_name.strip('"')
		Draw.MolToFile(rdmol,output_directory+'/'+molecule_name+".svg",size=(800,800),includeAtomNumbers=True)

	input_file.close()

if __name__ == '__main__':
    run_pathway_creation()
