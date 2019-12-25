import os
from setuptools import setup

setup_directory = os.path.abspath(os.path.dirname(__file__))
with open(os.path.join(setup_directory, 'README.rst'), encoding='utf-8') as readme_file:
    long_description = readme_file.read()

setup(
    name='pathmodel',
    version='0.1.9',
    url='https://github.com/pathmodel/pathmodel',
    description='Ab initio pathway inference',
    long_description=long_description,
    author='A. Belcour',
    packages=['pathmodel'],
    package_dir={'pathmodel': 'pathmodel'},
    package_data = {'pathmodel' : ['asp/*.lp', 'data/*.lp']},
    entry_points={
        'console_scripts': [
            'pathmodel = pathmodel.__main__:main',
            'pathmodel_plot = pathmodel.plotting:run_pathway_creation'
        ]
    },
    install_requires=['clyngor', 'matplotlib', 'clyngor-with-clingo', 'networkx'],
)
