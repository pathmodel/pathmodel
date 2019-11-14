.. image:: https://img.shields.io/pypi/v/pathmodel.svg
	:target: https://pypi.python.org/pypi/pathmodel

.. image:: https://travis-ci.org/pathmodel/pathmodel.svg?branch=master
        :target: https://travis-ci.org/pathmodel/pathmodel

.. image:: https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg
        :target: https://singularity-hub.org/collections/3758

.. image:: https://img.shields.io/docker/cloud/build/pathmodel/pathmodel
        :target: https://hub.docker.com/r/pathmodel/pathmodel


PathModel: metabolic pathway drift prototype
============================================

PathModel is a prototype to infer new biochemical reactions and new metabolite structures. The biological motivation for developing it is described in this `preprint <https://doi.org/10.1101/462556>`__ , now in revision at `iScience <https://www.cell.com/iscience/home>`__.

There is no guarantee that this script will work, it is a Work In Progress in early state.

.. contents:: Table of contents
   :backlinks: top
   :local:


Description
-----------

Metabolic Pathway Drift Hypothesis
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Metabolic Pathway Drift hypothesizes that metabolic pathways can be conserved even if their biochemical reactions undergo variations. These variations can be non-orthologous displacement of genes or changes in enzyme order.

.. table::
   :align: center
   :widths: auto

   +------------------------------------------------+
   | .. figure:: images/metabolic_pathway_drift.jpg |
   |                                                |
   |    ..                                          |
   |                                                |
   |    Metabolic Pathway Drift Hypothesis          |
   +------------------------------------------------+

To test this hypothesis, we develop PathModel to infer possible enzyme order changes in metabolic pathways.

Program
~~~~~~~

PathModel is developed in `ASP <https://en.wikipedia.org/wiki/Answer_set_programming>`__ using the `clingo grounder and solver <https://github.com/potassco/clingo>`__. It is divided in three ASP scripts.

The first one, `ReactionSiteExtraction.lp  <https://github.com/pathmodel/pathmodel/blob/master/pathmodel/asp/ReactionSiteExtraction.lp>`__ creates biochemical transformation from reactions. The biochemical transformation of a reaction corresponds to the atoms and bonds changes between the reactant and the product of the reaction.

When a reaction occurred between two molecules, the script will compare atoms and bonds of the two molecules of the reaction and will extract a reaction site before the reaction (composed of atoms and bonds that are present in the reactant but absent in the product) and a reaction site after the reaction (composed of atoms and bonds present in the product but absent in the reactant).

ReactionSiteExtraction produces two sites for each reaction (one before and one after the reaction). This corresponds to the biochemical transformation induced by the reaction.

A second script, `MZComputation.lp  <https://github.com/pathmodel/pathmodel/blob/master/pathmodel/asp/MZComputation.lp>`__ will compute the MZ for each known molecule. It also computes the MZ changes between the reactant and the product of a reaction.

These data will be used by the third script: `PathModel.lp <https://github.com/pathmodel/pathmodel/blob/master/pathmodel/asp/PathModel.lp>`__.

PathModel uses the incremental mode from Clingo. Using a source molecule, it will apply two inference methods until it reaches a goal (another molecules).

Installation
------------

Requirements
~~~~~~~~~~~~

PathModel is a Python3 package using Answer Set Programming (ASP) to infer new biochemical reactions and new metabolites structures. It is divided in two parts:

- a wrapper (`pathmodel_wrapper.py <https://github.com/pathmodel/pathmodel/blob/master/pathmodel/pathmodel_wrapper.py>`__) for the ASP programs (`MZComputation.lp <https://github.com/pathmodel/pathmodel/blob/master/pathmodel/asp/MZComputation.lp>`__, `ReactionSiteExtraction.lp <https://github.com/pathmodel/pathmodel/blob/master/pathmodel/asp/ReactionSiteExtraction.lp>`__ and `PathModel.lp <https://github.com/pathmodel/pathmodel/blob/master/pathmodel/asp/PathModel.lp>`__).

- a plotting script (`molecule_creation.py <https://github.com/pathmodel/pathmodel/blob/master/pathmodel/plotting.py>`__) to create pictures of molecules and pathways.

PathModel requires:

- `clingo <https://github.com/potassco/clingo>`__: which must be installed with Lua compatibility (a good way to have it is with `conda <https://anaconda.org/potassco/clingo>`__).

- `clyngor package <https://github.com/Aluriak/clyngor>`__ (can be isntalled with clingo with `clyngor-with-clingo package <https://github.com/aluriak/clyngor-with-clingo>`__).

- `networkx <https://networkx.github.io/>`__ (with `graphviz <https://www.graphviz.org/>`__ and `pygraphviz <https://github.com/pygraphviz/pygraphviz>`__).

- `matplotlib package <https://matplotlib.org/>`__.

- `rdkit package <https://github.com/rdkit/rdkit/>`__.

Using Singularity and Singularity Hub
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can use the container from `Singularity Hub <https://singularity-hub.org/>`__.

.. code:: sh

    # Choose your preference to pull the container from Singularity Hub (once)
    singularity pull shub://pathmodel/pathmodel-singularity

    # Enter it
    singularity run pathmodel-singularity_latest.sif.sif
    pathmodel test -o output_folder
    pathmodel_plot -i output_folder/MAA
    pathmodel_plot -i output_folder/sterol

    # Or use as a command line
    singularity exec pathmodel-singularity_latest.sif.sif pathmodel test -o output_folder
    singularity exec pathmodel-singularity_latest.sif.sif pathmodel_plot -i output_folder/MAA
    singularity exec pathmodel-singularity_latest.sif.sif pathmodel_plot -i output_folder/sterol

This container is buildfrom this `Singularity recipe <https://github.com/pathmodel/pathmodel-singularity>`__. If you prefer, you can use this recipe:

.. code:: sh

    singularity build pathmodel.sif Singularity


Using docker
~~~~~~~~~~~~

A docker image of pathmodel is available at `dockerhub <https://hub.docker.com/r/pathmodel/pathmodel/>`__. This image is based on the `pathmodel Dockerfile <https://github.com/pathmodel/pathmodel-dockerfile>`__.

.. code:: sh

	docker run -ti -v /path/shared/container:/shared --name="mycontainer" pathmodel/pathmodel bash

This command will download the image and create a container with a shared path. It will launch a bash terminal where you can use the command pathmodel (see `Command and Python call`_ and `Tutorial`_).

Using git
~~~~~~~~~

The package can be installed either using python setup or pip install (see below)

.. code:: sh

    git clone https://github.com/pathmodel/pathmodel.git

    cd PathModel

    python setup.py install

Using pip
~~~~~~~~~

If you have all the dependencies on your system, you can just download Pathmodel using `pip <https://pypi.org/project/pathmodel/>`__.

.. code:: sh

	pip install pathmodel

Using conda environment (to install all dependencies)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
    echo '. /path/where/miniconda/is/installed/etc/profile.d/conda.sh' >> ~/.bashrc
    # Will activate the environment.
    # For more information: https://github.com/conda/conda/blob/master/CHANGELOG.md#440-2017-12-20
    echo 'conda activate base' >> ~/.bashrc

After this you need to restart your terminal or use: source ~/.bashrc

Then you will get our conda environment file:

.. code:: sh

    # Download our conda environment file from Pathmodel github page.
    wget https://raw.githubusercontent.com/pathmodel/pathmodel/master/conda/pathmodel_env.yaml

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

Input
-----

Molecules are modelled with atoms (hydrogen excluded) and bonds (single and double).

.. code:: sh

	atom("Molecule1",1,carb). atom("Molecule1",2,carb).
        bond("Molecule1",single,1,2).

	atom("Molecule2",1,carb). atom("Molecule2",2,carb). atom("Molecule2",3,carb).
        bond("Molecule2",single,1,2). bond("Molecule2",single,2,3).

Reactions between molecules are represented as link between two molecules with a name:

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

Command and Python call
-----------------------

Command-line:

.. code:: sh

	pathmodel infer -i data.lp -o output_folder

.. code:: sh

	pathmodel_plot -i output_folder_from_pathmodel

In python (pathmodel_plot is not available in import call):

.. code:: python

    import pathmodel

    pathmodel.pathmodel_analysis('data.lp', output_folder)

Output
------

With the `infer command`, pathmodel will use the data file and try to create an output folder:

.. code-block:: text

	output_folder
	├── data_pathmodel.lp
	├── pathmodel_data_transformations.tsv
	├── pathmodel_incremental_inference.tsv
	├── pathmodel_output.lp

data_pathmodel.lp contains intermediary files for PathModel. Specifically, it contains the input data and the results of **ReactionSiteExtraction.lp** (*diffAtomBeforeReaction*, *diffAtomAfterReaction*, *diffBondBeforeReaction*, *diffBondAfterReaction*, *siteBeforeReaction*, *siteAfterReaction*) and of **MZComputation.lp** (*domain*, *moleculeComposition*, *moleculeNbAtoms*, *numberTotalBonds*, *moleculeMZ*, *reactionMZ*). The python wrapper gives this file to **PathModel.lp** as input.

pathmodel_data_transformations.tsv contains all the transformation inferred from the input data and the **ReactionSiteExtraction.lp** script.

pathmodel_incremental_inference.tsv shows the step of the incremental mode of clingo when a new reaction has been inferred using a known transformation.

pathmodel_output.lp is the output lp file of **PathModel.lp**.

Then if you use the `pathmodel_plot command` on the output_folder, pathmodel will create the following structure:

.. code-block:: text

	output_folder
	├── ...
	├── molecules
		├── Molecule1
		├── Molecule2
		├── ...
	├── newmolecules_from_mz
		├── Prediction_...
		├── Prediction_...
		├── ...
	├── pathmodel_output.svg

molecules contains the structures of each molecules in the input data file.

newmolecules_from_mz contains the structures of inferred molecules using the MZ. It will be empty if no MZ were given or if no molecules were inferred.

pathmodel_output.svg shows the pathway containing the molecules and the reactions (in green) from the input files and the newly inferred molecules and reactions (in blue).

Tutorial
--------

For this tutorial, we have created fictitious data available at `test/pathmodel_test_data.lp <https://github.com/pathmodel/pathmodel/blob/master/test/pathmodel_test_data.lp>`__.

In this file there is 5 molecules:

.. table::
   :align: center
   :widths: auto

   +--------------------------------------+--------------------------------+
   | .. image:: images/molecule_1.svg     | atom("molecule_1",1..4,carb).  |
   |    :width: 400px                     | bond("molecule_1",single,1,2). |
   |                                      | bond("molecule_1",single,1,3). |
   |                                      | bond("molecule_1",single,2,3). |
   |                                      | bond("molecule_1",single,2,4). |
   +--------------------------------------+--------------------------------+

.. table::
   :align: center
   :widths: auto

   +--------------------------------------+--------------------------------+
   | .. image:: images/molecule_2.svg     | atom("molecule_2",1..4,carb).  |
   |    :width: 400px                     | bond("molecule_2",single,1,2). |
   |                                      | bond("molecule_2",single,1,3). |
   |                                      | bond("molecule_2",single,2,3). |
   |                                      | bond("molecule_2",double,2,4). |
   +--------------------------------------+--------------------------------+

.. table::
   :align: center
   :widths: auto

   +--------------------------------------+--------------------------------+
   | .. image:: images/molecule_3.svg     | atom("molecule_3",1..6,carb).  |
   |    :width: 700px                     | bond("molecule_3",single,1,2). |
   |                                      | bond("molecule_3",single,1,3). |
   |                                      | bond("molecule_3",single,1,6). |
   |                                      | bond("molecule_3",single,2,3). |
   |                                      | bond("molecule_3",single,2,4). |
   |                                      | bond("molecule_3",single,3,6). |
   |                                      | bond("molecule_3",single,5,6). |
   +--------------------------------------+--------------------------------+
  
.. table::
   :align: center
   :widths: auto

   +--------------------------------------+--------------------------------+
   | .. image:: images/molecule_4.svg     | atom("molecule_4",1..6,carb).  |
   |    :width: 700px                     | bond("molecule_4",single,1,2). |
   |                                      | bond("molecule_4",single,1,3). |
   |                                      | bond("molecule_4",single,1,6). |
   |                                      | bond("molecule_4",single,2,3). |
   |                                      | bond("molecule_4",double,2,4). |
   |                                      | bond("molecule_4",single,3,6). |
   |                                      | bond("molecule_4",single,5,6). |
   +--------------------------------------+--------------------------------+

.. table::
   :align: center
   :widths: auto

   +--------------------------------------+--------------------------------+
   | .. image:: images/molecule_5.svg     | atom("molecule_5",1..7,carb).  |
   |    :width: 700px                     | bond("molecule_5",single,1,2). |
   |                                      | bond("molecule_5",single,1,3). |
   |                                      | bond("molecule_5",single,1,6). |
   |                                      | bond("molecule_5",single,1,7). |
   |                                      | bond("molecule_5",single,2,3). |
   |                                      | bond("molecule_5",single,2,4). |
   |                                      | bond("molecule_5",double,3,6). |
   |                                      | bond("molecule_5",single,5,6). |
   +--------------------------------------+--------------------------------+
  
One reaction:

.. table::
   :align: center
   :widths: auto

   +----------------------------------------------+----------------------------------------------------+
   | .. image:: images/reduction_reaction.svg     | reaction(reduction, "molecule_1", "molecule_2").   |
   |    :width: 300px                             |                                                    |
   +----------------------------------------------+----------------------------------------------------+

One known MZ:

+-----------------------------------+--------------------------+
| 92,1341 (so 921341 for Clingo)    | mzfiltering(921341).     |
+-----------------------------------+--------------------------+

By calling the command:

.. code:: sh

	pathmodel infer -i pathmodel_test_data.lp -o output_folder

Pathmodel will create output files:

.. code-block:: text

	output_folder
	├── data_pathmodel.lp
	├── pathmodel_data_transformations.tsv
	├── pathmodel_incremental_inference.tsv
	├── pathmodel_output.lp

As explained in `Output`_, data_pathmodel.lp is an intermediary file for Pathmodel.

pathmodel_data_transformations.tsv contains the transformation inferred from the knonw reactions, here:

+---------------+-------------------------+--------------------------+
| reaction_id   | reactant_substructure   |   product_substructure   |
+---------------+-------------------------+--------------------------+
| reduction     | [('single', '2', '4')]  |   [('double', '2', '4')] |
+---------------+-------------------------+--------------------------+

This means that the reduction transforms a single bond between atoms 2 and 4 into a double bond. These transformations are used by the deductive and analogical reasoning of PathModel.

pathmodel_incremental_inference.tsv shows the new reactions inferred by PathModel and the step in Clingo incremental mode when the new reaction has been inferred.

+---------------+-----------------+-----------------+--------------------------------+
| infer_turn    | new_reaction    |   reactant      |  product                       |
+---------------+-----------------+-----------------+--------------------------------+
| 2             | reduction       |   "molecule_3"  | "molecule_4"                   |
+---------------+-----------------+-----------------+--------------------------------+
| 2             | reduction       |   "molecule_5"  | "Prediction_921341_reduction"  |
+---------------+-----------------+-----------------+--------------------------------+

Two new reduction variant reactions have been inferred at step two of incremenetal mode:

- one between Molecule3 and Molecule4 inferred from the reduction between Molecule1 and Molecule2. This is a demonstration of the deductive reasoning of PathModel:

.. table::
   :align: center
   :widths: auto

   +-------------------------------------------+
   | .. image:: images/deductive_reasoning.svg |
   +-------------------------------------------+

- one between Molecule5 and a newly inferred metabolite with the MZ of 92,1341. To find this, PathModel computes the MZ of Molecule5 (94,1489). Then it applies each transformations from its knowledge database (here reduction) to each molecules from the knowledge database. With this, PathModel computes the MZ of hypothetical molecules and compared them to the MZ given by the user (here 92,1341). And if a match is found then the reaction and the molecule are inferred. This is an example of the analogical reasoning:

.. table::
   :align: center
   :widths: auto

   +--------------------------------------------+
   | .. image:: images/analogical_reasoning.svg |
   +--------------------------------------------+

Then it is possible to have access to graphic representations of molecules and reactions:

.. code:: sh

	pathmodel_plot -i output_folder

.. code-block:: text

	output_folder
	├── ...
	├── molecules
		├── molecule_1.svg
		├── molecule_2.svg
		├── molecule_3.svg
		├── molecule_4.svg
		├── molecule_5.svg
	├── newmolecules_from_mz
		├── Prediction_921341_reduction.svg
	├── pathmodel_output.svg

There is a structure inferred by PathModel for the MZ 92.1341:

.. table::
   :align: center
   :widths: auto

   +----------------------------------------------------+
   | .. image:: images/Prediction_921341_reduction.svg  |
   +----------------------------------------------------+

PathModel creates also a picture showing all the reactions (known reactions in green, inferred reaction variant in blue):

.. table::
   :align: center
   :widths: auto

   +--------------------------------------------+
   | .. image:: images/pathmodel_output.svg     |
   |    :width: 400px                           |
   +--------------------------------------------+
