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

- `clyngor package <https://github.com/Aluriak/clyngor>`__ (can be installed with clingo with `clyngor-with-clingo package <https://github.com/aluriak/clyngor-with-clingo>`__).

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
    singularity run pathmodel-singularity_latest.sif
    pathmodel test -o output_folder
    pathmodel_plot -i output_folder/MAA
    pathmodel_plot -i output_folder/sterol

    # Or use as a command line
    singularity exec pathmodel-singularity_latest.sif pathmodel test -o output_folder
    singularity exec pathmodel-singularity_latest.sif pathmodel_plot -i output_folder/MAA
    singularity exec pathmodel-singularity_latest.sif pathmodel_plot -i output_folder/sterol

This container is build from this `Singularity recipe <https://github.com/pathmodel/pathmodel-singularity>`__. If you prefer, you can use this recipe:

.. code:: sh

    singularity build pathmodel.sif Singularity


Using docker
~~~~~~~~~~~~

A docker image of pathmodel is available at `dockerhub <https://hub.docker.com/r/pathmodel/pathmodel/>`__. This image is based on the `pathmodel Dockerfile <https://github.com/pathmodel/pathmodel-dockerfile>`__.

.. code:: sh

	docker run -ti -v /path/shared/container:/shared --name="mycontainer" pathmodel/pathmodel bash

This command will download the image and create a container with a shared path. It will launch a bash terminal where you can use the command pathmodel (see `Commands and Python import`_ and `Tutorial`_).

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

Due to all the dependencies required by the scripts of Pathmodel, we create a conda environment file that contains all dependencies.

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

PathModel presentation
----------------------

Input
~~~~~

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

M/Z ratio can be added to check whether there is a metabolite that can be predict with this ratio. M/Z ratio must be multiplied by 10 000 because Clingo doesn't use decimals. An example with a M/Z of 270,272:

.. code:: sh

    mzfiltering(2702720).

Molecules absent in the organism of study can be specified. They will not be used by the inference method.

.. code:: sh

    absentmolecules("Molecule1").

Commands and Python import
~~~~~~~~~~~~~~~~~~~~~~~~~~

Run PathModel prediction:

.. code:: sh

	pathmodel infer -i data.lp -o output_folder

Create picture representing the results (like new molecules inferred from M/Z ratio):

.. code:: sh

	pathmodel_plot -i output_folder_from_pathmodel

In python (pathmodel_plot is not available in import call):

.. code:: python

    import pathmodel

    pathmodel.pathmodel_analysis('data.lp', output_folder)

Output
~~~~~~

With the `infer command`, pathmodel will use the data file and try to create an output folder:

.. code-block:: text

	output_folder
	├── data_pathmodel.lp
	├── pathmodel_data_transformations.tsv
	├── pathmodel_incremental_inference.tsv
	├── pathmodel_output.lp

data_pathmodel.lp contains intermediary files for PathModel. Specifically, it contains the input data and the results of **ReactionSiteExtraction.lp** (*diffAtomBeforeReaction*, *diffAtomAfterReaction*, *diffBondBeforeReaction*, *diffBondAfterReaction*, *siteBeforeReaction*, *siteAfterReaction*) and of **MZComputation.lp** (*domain*, *moleculeComposition*, *moleculeNbAtoms*, *numberTotalBonds*, *moleculeMZ*, *reactionMZ*). The python wrapper gives this file to **PathModel.lp** as input.

pathmodel_data_transformations.tsv contains all the transformation inferred from the input data and the **ReactionSiteExtraction.lp** script.

pathmodel_incremental_inference.tsv shows the step of the incremental mode of clingo when a new reaction has been inferred using a known transformation. It does not show the step when passing through a known reaction, so the first step number in the file scan be superior to 1.

pathmodel_output.lp is the output lp file of **PathModel.lp** (*newreaction*, *predictatom*, *predictbond*, *reaction*, *inferred*).

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

Tutorial on fictitious data
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Input data
##########

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

Commands
########

.. code:: sh

	pathmodel infer -i pathmodel_test_data.lp -o output_folder

.. code:: sh

	pathmodel_plot -i output_folder

Results
#######

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

PathModel creates also a picture showing all the reactions (known reactions in green, inferred reaction variant in blue and blue square for predicted molecules):

.. table::
   :align: center
   :widths: auto

   +--------------------------------------------+
   | .. image:: images/pathmodel_output.svg     |
   |    :width: 400px                           |
   +--------------------------------------------+

Tutorial on Article data (*Chondrus crispus* sterol and Mycosporine-like Amino Acids pathways)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

PathModel contains script to reproduce the experience run in the article: analysis of *Chondrus crispus* sterol and Mycosporine-like Amino Acids (MAA) pathways.

Article data
############

Sterol pathway
**************

Input data for sterol pathway are in `pathmodel/pathmodel/data/sterol_pwy.lp <https://raw.githubusercontent.com/pathmodel/pathmodel/master/pathmodel/data/sterol_pwy.lp>`__.

For this pathway, known reactions were extracted from:

- `MetaCyc cholesterol biosynthesis (plants) PWY18C3-1 <https://metacyc.org/META/new-image?type=PATHWAY&object=PWY18C3-1>`__.
- `MetaCyc cholesterol biosynthesis III (via desmosterol) PWY66-4 <https://metacyc.org/META/new-image?type=PATHWAY&object=PWY66-4>`__.
- `MetaCyc phytosterol biosynthesis (plants) PWY-2541 <https://metacyc.org/META/new-image?type=PATHWAY&object=PWY-2541>`__.
- simplification of multistep C24-C29 demethylation from `Sonawane et al. (2016) <https://www.nature.com/articles/nplants2016205>`__.

The source molecule is the cycloartenol and the goal molecules are: 22-dehydrocholesterol, brassicasterol and sitosterol.

MAA pathway
***********

Input data for MAA pathway are in `pathmodel/pathmodel/data/MAA_pwy.lp <https://raw.githubusercontent.com/pathmodel/pathmodel/master/pathmodel/data/MAA_pwy.lp>`__.

For this pathway, known reactions were extracted from:

- `MetaCyc shinorine biosynthesis PWY-7751 <https://metacyc.org/META/new-image?type=PATHWAY&object=PWY-7751>`__.
- Extended reaction from serine to threonine as proposed in `Brawley et al. (2017) <https://www.pnas.org/content/114/31/E6361>`__.
- Reactions hypothesized by `Carreto and Carignan (2011) <https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3083659/>`__.

Two unknown M/Z ratios were given as input for MAA pathway:

- 270,2720
- 302,3117

The source molecule is the sedoheptulose-7-phosphate and the goal molecule is the palythine.

Article commands
################

Article data are stored in PathModel code. By calling the 'test' command, you can reproduce PathModel article experience. First run the inference on the sterol and MAA pathways:

.. code:: sh

	pathmodel test -o output_folder

Then, it is possible to create pictures representation of the results:

.. code:: sh

    pathmodel_plot -i output_folder/sterol

.. code:: sh

    pathmodel_plot -i output_folder/MAA

Article results
###############

.. code:: sh

	pathmodel test -o output_folder

This test command will create an output folder containing the inference results for the sterol and the MAA pathways:

.. code-block:: text

    output_folder
    ├── MAA
        ├── data_pathmodel.lp
        ├── pathmodel_data_transformations.tsv
        ├── pathmodel_incremental_inference.tsv
        ├── pathmodel_output.lp
    ├── sterol
        ├── data_pathmodel.lp
        ├── pathmodel_data_transformations.tsv
        ├── pathmodel_incremental_inference.tsv
        ├── pathmodel_output.lp

Sterol pathway results
**********************

Then you can create pictures representation of the results (pathways and molecules) for the sterol pathway:

.. code:: sh

    pathmodel_plot -i output_folder/sterol

.. code-block:: text

	output_folder
    ├── sterol
        ├── data_pathmodel.lp
        ├── pathmodel_data_transformations.tsv
        ├── pathmodel_incremental_inference.tsv
        ├── pathmodel_output.lp
        ├── pathmodel_output.svg
        ├── molecules
            ├── 22-dehydrocholesterol.svg
            ├── 24-epicampesterol.svg
            ├── 24-ethylidenelophenol.svg
            ├── 24-methyldesmosterol.svg
            ├── 24-methylenecholesterol.svg
            ├── 24-methylenecycloartanol.svg
            ├── 24-methylenelophenol.svg
            ├── 31-norcycloartanol.svg
            ├── 31-norcycloartenol.svg
            ├── 4α,14α-dimethyl-cholesta-8-enol.svg
            ├── 4α,14α-dimethylcholest-8,24-dien-3β-ol.svg
            ├── 4α-methyl-5α-cholest-7-en-3β-ol.svg
            ├── 4α-methyl-5α-cholesta-7,24-dienol.svg
            ├── 4α-methyl-5α-cholesta-8-en-3-ol.svg
            ├── 4α-methyl-cholesta-8,14-dienol.svg
            ├── 4α-methylcholest-8(9),14,24-trien-3β-ol.svg
            ├── 4α-methylzymosterol.svg
            ├── 5α-cholesta-7,24-dienol.svg
            ├── 7-dehydrocholesterol.svg
            ├── 7-dehydrodesmosterol.svg
            ├── brassicasterol.svg
            ├── campesterol.svg
            ├── cholesterol.svg
            ├── cycloartanol.svg
            ├── cycloartenol.svg
            ├── desmosterol.svg
            ├── lathosterol.svg
            ├── sitosterol.svg
            ├── stigmasterol.svg
        ├── newmolecules_from_mz
            (empty)

In the molecules folder, each input molecules are represented as a svg file.

No M/Z ratio were given as input for the sterol so there is no new molecules from M/Z.

'pathmodel_output.svg' shows the predicted reactions in blue and the predicted molecules in blue (the picture form can change but it contains the same result):

.. table::
   :align: center
   :widths: auto

   +---------------------------------------------------------------------------------+
   | .. image:: images/sterol_pathmodel_output.svg                                   |
   |    :width: 800px                                                                |
   +---------------------------------------------------------------------------------+

Inferred reactions are listed in 'pathmodel_incremental_inference.tsv', with the step of the incremental mode from the source molecule (cycloartenol) to the goal molecules:

.. table::
   :align: center
   :widths: auto

   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | infer_step | new_reaction            | reactant                                  | product                                    |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 2          | c24_c29_demethylation   | "cycloartenol"                            | "31-norcycloartenol"                       |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 2          | rxn66_28                | "cycloartenol"                            | "cycloartanol"                             |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 3          | rxn_4282                | "31-norcycloartenol"                      | "31-norcycloartanol"                       |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 3          | rxn_20436               | "31-norcycloartenol"                      | "4α,14α-dimethylcholest-8,24-dien-3β-ol"   |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 4          | rxn_4282                | "4α,14α-dimethylcholest-8,24-dien-3β-ol"  | "4α,14α-dimethyl-cholesta-8-enol"          |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 4          | rxn_20438               | "4α,14α-dimethylcholest-8,24-dien-3β-ol"  | "4α-methylcholest-8(9),14,24-trien-3β-ol"  |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 5          | rxn_4282                | "4α-methylcholest-8(9),14,24-trien-3β-ol" | "4α-methyl-cholesta-8,14-dienol"           |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 5          | rxn_20439               | "4α-methylcholest-8(9),14,24-trien-3β-ol" | "4α-methylzymosterol"                      |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 6          | rxn_4286                | "4α-methylzymosterol"                     | "4α-methyl-5α-cholesta-7,24-dienol"        |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 6          | rxn_4282                | "4α-methylzymosterol"                     | "4α-methyl-5α-cholesta-8-en-3-ol"          |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 7          | rxn_4282                | "4α-methyl-5α-cholesta-7,24-dienol"       | "4α-methyl-5α-cholest-7-en-3β-ol"          |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 7          | c24_c28_demethylation   | "4α-methyl-5α-cholesta-7,24-dienol"       | "5α-cholesta-7,24-dienol"                  |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 8          | rxn_1_14_21_6           | "5α-cholesta-7,24-dienol"                 | "7-dehydrodesmosterol"                     |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 8          | rxn_4282                | "5α-cholesta-7,24-dienol"                 | "lathosterol"                              |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 9          | rxn_4282                | "7-dehydrodesmosterol"                    | "7-dehydrocholesterol"                     |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 9          | rxn66_323               | "7-dehydrodesmosterol"                    | "desmosterol"                              |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 10         | rxn_4021                | "desmosterol"                             | "24-methylenecholesterol"                  |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 10         | rxn_4282                | "desmosterol"                             | "cholesterol"                              |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 11         | c22_desaturation        | "cholesterol"                             | "22-dehydrocholesterol"                    |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 12         | rxn_2_1_1_143           | "campesterol"                             | "sitosterol"                               |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+

MAA pathway results
*******************

And the pictures for the MAA pathway are created with:

.. code:: sh

    pathmodel_plot -i output_folder/MAA

.. code-block:: text

    output_folder
    ├── MAA
        ├── data_pathmodel.lp
        ├── pathmodel_data_transformations.tsv
        ├── pathmodel_incremental_inference.tsv
        ├── pathmodel_output.lp
        ├── pathmodel_output.svg
        ├── molecules
            ├── asterina-330.svg
            ├── mycosporin-glycine.svg
            ├── palythene.svg
            ├── palythine.svg
            ├── palythinol.svg
            ├── porphyra-334.svg
            ├── R-4-deoxygadusol.svg
            ├── R-demethyl-4-deoxygadusol.svg
            ├── S-4-deoxygadusol.svg
            ├── S-demethyl-4-deoxygadusol.svg
            ├── sedoheptulose-7-phosphate.svg
            ├── shinorine.svg
            ├── z-palythenic acid.svg
        ├── newmolecules_from_mz
            ├── Prediction_2702720_dehydration.svg
            ├── Prediction_3023117_decarboxylation_1.svg
            ├── Prediction_3023117_decarboxylation_2.svg

pathmodel_output.svg contains the pathway with the known reactions (green), the reactions inferred by PathModel (blue) and the metabolites inferred (blue).

.. table::
   :align: center
   :widths: auto

   +----------------------------------------------------------+
   | .. image:: images/maa_pathmodel_output.svg               |
   |    :width: 800px                                         |
   +----------------------------------------------------------+

Inferred reactions are listed in 'pathmodel_incremental_inference.tsv', with the step of the incremental mode from the source molecule (sedoheptulose-7-phosphate) to the goal molecule (palythine).

Incremental step 2 is not showed because it is already known (between 'sedoheptulose-7-phosphate' and 'R-demethyl-4-deoxygadusol') and no new predictions have been inferred.

.. table::
   :align: center
   :widths: auto

   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | infer_step | new_reaction            | reactant                                  | product                                    |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 3          | rxn_17896               | "R-demethyl-4-deoxygadusol"               | "R-4-deoxygadusol"                         |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 3          | rxn_17370               | "R-demethyl-4-deoxygadusol"               | "S-demethyl-4-deoxygadusol"                |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 4          | rxn_17895               | "R-4-deoxygadusol"                        | "S-4-deoxygadusol"                         |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 4          | rxn_17366               | "S-demethyl-4-deoxygadusol"               | "S-4-deoxygadusol"                         |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 7          | dehydration             | "Prediction_3023117_decarboxylation_1"    | "palythene"                                |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 7          | dehydration             | "Prediction_3023117_decarboxylation_2"    | "palythene"                                |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 7          | decarboxylation_2       | "porphyra-334"                            | "Prediction_3023117_decarboxylation_1"     |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 7          | decarboxylation_2       | "porphyra-334"                            | "Prediction_3023117_decarboxylation_2"     |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 7          | decarboxylation_1       | "shinorine"                               | "asterina-330"                             |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+
   | 8          | dehydration             | "asterina-330"                            | "Prediction_2702720_dehydration"           |
   +------------+-------------------------+-------------------------------------------+--------------------------------------------+

The structures of the predicted molecules from M/Z can be found in newmolecules_from_mz:

- Prediction_2702720_dehydration corresponds to MAA1 of the article:

.. table::
   :align: center
   :widths: auto

   +--------------------------------------------------------------+
   | Prediction_2702720_dehydration                               |
   +--------------------------------------------------------------+
   |from reaction(dehydration,"porphyra-334","z-palythenic acid").|
   +--------------------------------------------------------------+
   | .. image:: images/Prediction_2702720_dehydration.svg         |
   |    :width: 300px                                             |
   +--------------------------------------------------------------+
   | predictatom("Prediction_2702720_dehydration",1,carb).        |
   | predictatom("Prediction_2702720_dehydration",2,carb).        |
   | predictatom("Prediction_2702720_dehydration",3,carb).        |
   | predictatom("Prediction_2702720_dehydration",4,carb).        |
   | predictatom("Prediction_2702720_dehydration",5,carb).        |
   | predictatom("Prediction_2702720_dehydration",6,carb).        |
   | predictatom("Prediction_2702720_dehydration",7,carb).        |
   | predictatom("Prediction_2702720_dehydration",8,nitr).        |
   | predictatom("Prediction_2702720_dehydration",9,oxyg).        |
   | predictatom("Prediction_2702720_dehydration",10,nitr).       |
   | predictatom("Prediction_2702720_dehydration",11,oxyg).       |
   | predictatom("Prediction_2702720_dehydration",12,oxyg).       |
   | predictatom("Prediction_2702720_dehydration",13,carb).       |
   | predictatom("Prediction_2702720_dehydration",14,carb).       |
   | predictatom("Prediction_2702720_dehydration",15,carb).       |
   | predictatom("Prediction_2702720_dehydration",16,oxyg).       |
   | predictatom("Prediction_2702720_dehydration",17,oxyg).       |
   | predictatom("Prediction_2702720_dehydration",18,carb).       |
   | predictatom("Prediction_2702720_dehydration",19,carb).       |
   |                                                              |
   | predictbond("Prediction_2702720_dehydration",double,1,2).    |
   | predictbond("Prediction_2702720_dehydration",single,1,6).    |
   | predictbond("Prediction_2702720_dehydration",single,1,8).    |
   | predictbond("Prediction_2702720_dehydration",single,2,3).    |
   | predictbond("Prediction_2702720_dehydration",single,2,9).    |
   | predictbond("Prediction_2702720_dehydration",single,3,4).    |
   | predictbond("Prediction_2702720_dehydration",double,3,10).   |
   | predictbond("Prediction_2702720_dehydration",single,4,5).    |
   | predictbond("Prediction_2702720_dehydration",single,5,6).    |
   | predictbond("Prediction_2702720_dehydration",single,5,7).    |
   | predictbond("Prediction_2702720_dehydration",singleS,5,12).  |
   | predictbond("Prediction_2702720_dehydration",single,7,11).   |
   | predictbond("Prediction_2702720_dehydration",single,8,14).   |
   | predictbond("Prediction_2702720_dehydration",single,9,13).   |
   | predictbond("Prediction_2702720_dehydration",single,10,18).  |
   | predictbond("Prediction_2702720_dehydration",single,14,15).  |
   | predictbond("Prediction_2702720_dehydration",single,15,17).  |
   | predictbond("Prediction_2702720_dehydration",double,15,16).  |
   | predictbond("Prediction_2702720_dehydration",double,18,19).  |
   +--------------------------------------------------------------+

- Prediction_3023117_decarboxylation_1 and Prediction_3023117_decarboxylation_2 (which are the same molecule) correspond to MAA2:

.. table::
   :align: center
   :widths: auto

   +-------------------------------------------------------------------+-------------------------------------------------------------------+
   | Prediction_3023117_decarboxylation_1                              | Prediction_3023117_decarboxylation_2                              |
   +-------------------------------------------------------------------+-------------------------------------------------------------------+
   | from reaction(decarboxylation_1,"z-palythenic acid","palythene"). | from reaction(decarboxylation_2,"shinorine","asterina-330").      |
   +-------------------------------------------------------------------+-------------------------------------------------------------------+
   | .. image:: images/Prediction_3023117_decarboxylation_1.svg        | .. image:: images/Prediction_3023117_decarboxylation_2.svg        |
   |    :width: 300px                                                  |  :width: 300px                                                    |
   +-------------------------------------------------------------------+-------------------------------------------------------------------+
   | predictatom("Prediction_3023117_decarboxylation_1",1,carb).       | predictatom("Prediction_3023117_decarboxylation_2",1,carb).       |
   | predictatom("Prediction_3023117_decarboxylation_1",2,carb).       | predictatom("Prediction_3023117_decarboxylation_2",2,carb).       |
   | predictatom("Prediction_3023117_decarboxylation_1",3,carb).       | predictatom("Prediction_3023117_decarboxylation_2",3,carb).       |
   | predictatom("Prediction_3023117_decarboxylation_1",4,carb).       | predictatom("Prediction_3023117_decarboxylation_2",4,carb).       |
   | predictatom("Prediction_3023117_decarboxylation_1",5,carb).       | predictatom("Prediction_3023117_decarboxylation_2",5,carb).       |
   | predictatom("Prediction_3023117_decarboxylation_1",6,carb).       | predictatom("Prediction_3023117_decarboxylation_2",6,carb).       |
   | predictatom("Prediction_3023117_decarboxylation_1",7,carb).       | predictatom("Prediction_3023117_decarboxylation_2",7,carb).       |
   | predictatom("Prediction_3023117_decarboxylation_1",8,nitr).       | predictatom("Prediction_3023117_decarboxylation_2",8,nitr).       |
   | predictatom("Prediction_3023117_decarboxylation_1",9,oxyg).       | predictatom("Prediction_3023117_decarboxylation_2",9,oxyg).       |
   | predictatom("Prediction_3023117_decarboxylation_1",10,nitr).      | predictatom("Prediction_3023117_decarboxylation_2",10,nitr).      |
   | predictatom("Prediction_3023117_decarboxylation_1",11,oxyg).      | predictatom("Prediction_3023117_decarboxylation_2",11,oxyg).      |
   | predictatom("Prediction_3023117_decarboxylation_1",12,oxyg).      | predictatom("Prediction_3023117_decarboxylation_2",12,oxyg).      |
   | predictatom("Prediction_3023117_decarboxylation_1",13,carb).      | predictatom("Prediction_3023117_decarboxylation_2",13,carb).      |
   | predictatom("Prediction_3023117_decarboxylation_1",14,carb).      | predictatom("Prediction_3023117_decarboxylation_2",14,carb).      |
   | predictatom("Prediction_3023117_decarboxylation_1",15,carb).      | predictatom("Prediction_3023117_decarboxylation_2",15,carb).      |
   | predictatom("Prediction_3023117_decarboxylation_1",16,oxyg).      | predictatom("Prediction_3023117_decarboxylation_2",16,oxyg).      |
   | predictatom("Prediction_3023117_decarboxylation_1",17,oxyg).      | predictatom("Prediction_3023117_decarboxylation_2",17,oxyg).      |
   | predictatom("Prediction_3023117_decarboxylation_1",18,carb).      | predictatom("Prediction_3023117_decarboxylation_2",18,carb).      |
   | predictatom("Prediction_3023117_decarboxylation_1",19,carb).      | predictatom("Prediction_3023117_decarboxylation_2",19,carb).      |
   | predictatom("Prediction_3023117_decarboxylation_1",20,oxyg).      | predictatom("Prediction_3023117_decarboxylation_2",20,oxyg).      |
   | predictatom("Prediction_3023117_decarboxylation_1",24,carb).      | predictatom("Prediction_3023117_decarboxylation_2",24,carb).      |
   |                                                                   |                                                                   |
   | predictbond("Prediction_3023117_decarboxylation_1",double,1,2).   | predictbond("Prediction_3023117_decarboxylation_2",double,1,2).   |
   | predictbond("Prediction_3023117_decarboxylation_1",single,1,6).   | predictbond("Prediction_3023117_decarboxylation_2",single,1,6).   |
   | predictbond("Prediction_3023117_decarboxylation_1",single,1,8).   | predictbond("Prediction_3023117_decarboxylation_2",single,1,8).   |
   | predictbond("Prediction_3023117_decarboxylation_1",single,2,3).   | predictbond("Prediction_3023117_decarboxylation_2",single,2,3).   |
   | predictbond("Prediction_3023117_decarboxylation_1",single,2,9).   | predictbond("Prediction_3023117_decarboxylation_2",single,2,9).   |
   | predictbond("Prediction_3023117_decarboxylation_1",single,3,4).   | predictbond("Prediction_3023117_decarboxylation_2",single,3,4).   |
   | predictbond("Prediction_3023117_decarboxylation_1",double,3,10).  | predictbond("Prediction_3023117_decarboxylation_2",double,3,10).  |
   | predictbond("Prediction_3023117_decarboxylation_1",single,4,5).   | predictbond("Prediction_3023117_decarboxylation_2",single,4,5).   |
   | predictbond("Prediction_3023117_decarboxylation_1",single,5,6).   | predictbond("Prediction_3023117_decarboxylation_2",single,5,6).   |
   | predictbond("Prediction_3023117_decarboxylation_1",single,5,7).   | predictbond("Prediction_3023117_decarboxylation_2",single,5,7).   |
   | predictbond("Prediction_3023117_decarboxylation_1",singleS,5,12). | predictbond("Prediction_3023117_decarboxylation_2",singleS,5,12). |
   | predictbond("Prediction_3023117_decarboxylation_1",single,7,11).  | predictbond("Prediction_3023117_decarboxylation_2",single,7,11).  |
   | predictbond("Prediction_3023117_decarboxylation_1",single,8,14).  | predictbond("Prediction_3023117_decarboxylation_2",single,8,14).  |
   | predictbond("Prediction_3023117_decarboxylation_1",single,9,13).  | predictbond("Prediction_3023117_decarboxylation_2",single,9,13).  |
   | predictbond("Prediction_3023117_decarboxylation_1",single,10,18). | predictbond("Prediction_3023117_decarboxylation_2",single,10,18). |
   | predictbond("Prediction_3023117_decarboxylation_1",single,14,15). | predictbond("Prediction_3023117_decarboxylation_2",single,14,15). |
   | predictbond("Prediction_3023117_decarboxylation_1",double,15,16). | predictbond("Prediction_3023117_decarboxylation_2",double,15,16). |
   | predictbond("Prediction_3023117_decarboxylation_1",single,15,17). | predictbond("Prediction_3023117_decarboxylation_2",single,15,17). |
   | predictbond("Prediction_3023117_decarboxylation_1",single,18,19). | predictbond("Prediction_3023117_decarboxylation_2",single,18,19). |
   | predictbond("Prediction_3023117_decarboxylation_1",single,19,20). | predictbond("Prediction_3023117_decarboxylation_2",single,19,20). |
   | predictbond("Prediction_3023117_decarboxylation_1",single,19,24). | predictbond("Prediction_3023117_decarboxylation_2",single,19,24). |
   +-------------------------------------------------------------------+-------------------------------------------------------------------+
