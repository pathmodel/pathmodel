PathModel
=========

PathModel is a tool to infer reaction between metabolites and new metabolites.

There is no guarantee that this script will work, it is a Work In Progress in early state.

.. contents:: Table of contents
   :backlinks: top
   :local:

Installation
------------

Requirements
~~~~~~~~~~~~

You must have an environment where Clingo is installed. Clingo can be obtained `here <https://github.com/potassco/clingo>`__.
Also Clingo must be installed in an environment with Python compatibilty (a good way to have it is with `conda <https://anaconda.org/potassco/clingo>`__).
Python environment for Clingo must be Python 3, if it is Python 2 the script will crash.

For the wrapping script, `Python3 <https://www.python.org/>`__ and `clyngor package <https://github.com/Aluriak/clyngor>`__ are needed.

To create pathway picture, the script uses `networkx <https://networkx.github.io/>`__ and `matplotlib packages <https://matplotlib.org/>`__.

To create molecule picture, Pathmodel uses the `rdkit package <https://github.com/rdkit/rdkit/>`__.

Using conda (to install all dependencies)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Due to all the dependencies required by all the script of Pathmodel, we create a conda environment file that contains all dependencies.

First you need `Conda <https://conda.io/docs/>`__.
To avoid conflict between the conda python and your system python, you could use a conda environment and `Miniconda <https://conda.io/docs/user-guide/install/download.html>`__.

If you want to test this, the first thing is to install miniconda:

.. code:: sh

    # Download Miniconda
    wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh

    # Give the permission to the installer.
    chmod +x Miniconda3-latest-Linux-x86_64.sh

    # Install it at the path that you choose.
    ./Miniconda3-latest-Linux-x86_64.sh -p /path/where/miniconda/will/be/installed/ -b

    # Delete installer.
    rm Miniconda3-latest-Linux-x86_64.sh

    # Add conda path to you bash settings.
    echo 'export PATH="$PATH:/path/where/miniconda/is/installed/bin:"' >> ~/.bashrc

After this you need to restart your terminal or use: source ~/.bashrc

Then you will get our conda environment file:

.. code:: sh

    # Download our conda environment file from Pathmdoel gitlab page.
    wget https://gitlab.inria.fr/DYLISS/PathModel/raw/master/conda/pathmodel_env.yaml

    # Use the file to create the environment and install all dependencies.
    conda env create -f pathmodel.yaml

If no error occurs, you can now access a conda environment with pathmodel:

.. code:: sh

    # Activate the environment.
    conda activate pathmodel

    # Launch the help of Pathmodel. 
    (pathmodel) pathmodel -h

You can exit the environment with:

.. code:: sh

    # Deactivate the environment.
    conda deactivate


Using git
~~~~~~~~~

At this moment, the package can be installed only using python setup. But when the git will become public, a pip package would be created.

.. code:: sh

    git clone https://gitlab.inria.fr/DYLISS/PathModel

    cd PathModel

    python setup.py install

Using pip
~~~~~~~~~

Incoming and will be like:

.. code:: sh

	pip install pathmodel

Description
-----------

PathModel is developed in `ASP <https://en.wikipedia.org/wiki/Answer_set_programming>`__. It is divided in two scripts.

The first one, `ReactionSiteExtraction.lp  <https://gitlab.inria.fr/DYLISS/PathModel/blob/master/pathmodel/asp/ReactionSiteExtraction.lp>`__ creates reaction site.

When a reaction is described between two molecules, the script will compare atoms and bonds of the two molecules of the reaction and will extract a reaction site before the reaction (composed of atoms and bonds that are present in the reactant but absent in the product) and a reaction site after the reaction (composed of atoms and bonds present in the product but absent in the reactant).

ReactionSiteExtraction produces two sites for each reaction (one before and one after the reaction).
These sites will be used by the second script: `PathModel.lp <https://gitlab.inria.fr/DYLISS/PathModel/blob/master/pathmodel/asp/PathModel.lp>`__.

PathModel will use two inference methods: one creating new metabolites and one infering a reaction between two metabolites.

Input data
~~~~~~~~~~

Molecules are modelled with atoms (hydrogen excluded) and bonds (single and double).

.. code:: sh

	atom("Molecule1",1,carb). atom("Molecule1",2,carb).
        bond("Molecule1",single,1,2).

	atom("Molecule2",1,carb). atom("Molecule2",2,carb). atom("Molecule2",3,carb).
        bond("Molecule2",single,1,2). bond("Molecule2",single,2,3).

Reaction between molecules are represented as link between two molecules with a name:

.. code:: sh

	reaction(reaction1,"Molecule1","Molecule2").

A common domain is needed to find which molecules share structure with others:

.. code:: sh

	atomDomain(commonDomainName,1,carb). atomDomain(commonDomainName,2,carb).
        bondDomain(commonDomainName,single,1,2).

A molecule source is defined:

.. code:: sh

	source("Molecule1").

Initiation and goal of the incremental grounding must be defined:

.. code:: sh

    init(pathway("Molecule1","Molecule2")).
    goal(pathway("Molecule1","Molecule3")).

M/Z ratio can be added to check whether there is a metabolite that can be predict with this ratio. M/Z ratio must be multiplied by 10 000 because Clingo doesn't use decimals.

.. code:: sh

    mzfiltering(2702720).

Molecules that are not in the organism of study can be added. They will not be targeted of the inference methods.

.. code:: sh

    absentmolecules("Molecule1").

Use
~~~

Command-line:

.. code:: sh

	pathmodel -d data.lp

In python:

.. code:: python

    import pathmodel

	pathmodel.pathmodel_analysis('data.lp')

Output data
~~~~~~~~~~~

Using networkx, inferred pathways are represented as png picture. Also a result.lp file is created containing all the inferred reactions.

Example
~~~~~~~

data/data.lp contains example for sterols and mycosporine-like amino-acids pathways.

test/data.lp contains an example with fictional molecules to test PathModel.
