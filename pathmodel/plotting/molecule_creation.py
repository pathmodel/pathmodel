#!/usr/bin/env python
# -*- coding: UTF-8 -*-

"""
Script to plot 2D representation of molecule present in an ASP input file.

This is useful to check if the ASP structure corresponds to the molecule structure.
"""

import argparse
import os

from clyngor import ASP
from rdkit import Chem
from rdkit.Chem import AllChem
from rdkit.Chem import Draw


def run_pathway_creation():
    parser = argparse.ArgumentParser(usage="python molecule_creation.py -f FILE -o STRING")
    parser.add_argument("-f", "--file", dest="asp_file", metavar="FILE", help="Input file containing molecule structures.")
    parser.add_argument("-o", "--output", dest="output_repository", metavar="FOLDER", help="Name of the folder where molecule pictures will be created.")
    parser.add_argument("-d", "--domain", dest="domain", action='store_true', help="Use domain information to align molecules (optional).")

    parser_args = parser.parse_args()

    input_filename = parser_args.asp_file
    output_repository = parser_args.output_repository
    align_domain = parser_args.domain

    create_2dmolecule(input_filename, output_repository, align_domain)


def create_rdkit_molecule(molecule_name, molecules, molecule_numberings, bonds):
    '''
    Using dictionaries containing molecule structure create a rdkit molecule.
    '''
    # Create an editable molecule.
    rdmol = Chem.Mol()
    rdedmol = Chem.EditableMol(rdmol)

    atoms = sorted(molecules[molecule_name])
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

    return rdmol


def create_2dmolecule(input_filename, output_directory, align_domain=None):
    '''
    From an ASP input file create 2d representation of molecules.
    To use align_domain, you need the intermediate file creates by pathmodel_wrapper.py.
    With align_domain, rdkit will use domain to align molecules.
    '''
    # Check if output folder exists if not create it.
    if not os.path.isdir("{0}".format(output_directory)):
        os.mkdir("{0}".format(output_directory))

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
                    'phos': 15}

    if align_domain:
        domain_molecules = {}
        domain_molecule_numberings = {}
        domain_bonds = {}
        molecule_domains = {}

    molecules = {}
    molecule_numberings = {}
    bonds = {}

    # Parse ASP input file and extract molecules, atoms and bonds.
    # use_clingo_module=false because of https://github.com/Aluriak/clyngor/issues/7
    for predicate in ASP(asp_code, use_clingo_module=False).parse_args.discard_quotes:
        for variable in predicate:
            if variable[0] == 'atom':
                atom_molecule = variable[1][0]
                atom_number = variable[1][1]
                atom_type = atomicNumber[variable[1][2]]
                if atom_molecule not in molecules:
                    molecules[atom_molecule] = [(atom_number, atom_type)]
                    molecule_numberings[atom_molecule] = [atom_number]
                else:
                    molecules[atom_molecule].append((atom_number, atom_type))
                    molecule_numberings[atom_molecule].append(atom_number)

            elif variable[0] == 'bond':
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

        # Draw molecule.
        molecule_name = molecule_name
        print(molecule_name)
        Draw.MolToFile(rdmol, output_directory+'/'+molecule_name+'.svg', size=(800, 800), includeAtomNumbers=True)

    input_file.close()


if __name__ == '__main__':
    run_pathway_creation()
