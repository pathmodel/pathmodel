import argparse
import os
import subprocess
import sys
import time

from pathmodel.pathmodel_wrapper import check_folder, pathmodel_analysis

def main():
    '''
    Arguments when used with entrypoint as: pathmodel -d data.lp
    '''
    parser = argparse.ArgumentParser(
        "pathmodel",
        description="Prototype of the metabolic pathway drift hypothesis. For specific help on each subcommand use: pathmodel {cmd} --help",
    )
    # parent parser
    parent_parser_i = argparse.ArgumentParser(add_help=False)
    parent_parser_i.add_argument(
        "-i",
        "--input",
        metavar="INPUT_FILE",
        help="input file containing atoms, bonds, reactions and goal",
        required=True)
    parent_parser_o = argparse.ArgumentParser(add_help=False)
    parent_parser_o.add_argument(
        "-o",
        "--out",
        dest="output_folder",
        required=True,
        help="output directory path",
        metavar="OUPUT_DIR")
    parent_parser_s = argparse.ArgumentParser(add_help=False)
    parent_parser_s.add_argument(
        "-s",
        "--step-limit",
        dest="step_limit",
        required=False,
        help="set a maximal number of step to avoid endless run of pathmodel (by default at 100)",
        metavar="INT")

    # subparsers
    subparsers = parser.add_subparsers(
        title='subcommands',
        description='valid subcommands:',
        dest="cmd")
    infer_parser = subparsers.add_parser(
        "infer",
        help="PathModel inference on data",
        parents=[
            parent_parser_i, parent_parser_o, parent_parser_s
        ],
        description=
        "Run PathModel on input data lp file"
        )
    test_parser = subparsers.add_parser(
        "test",
        help="test PathModel on data from the article",
        parents=[
            parent_parser_o
        ],
        description=
        "Test PathModel on the data from the article (sterol and MAA)"
        )

    parser_args = parser.parse_args()

    # Print help and exit if no arguments.
    argument_number = len(sys.argv[1:])
    if argument_number == 0:
        parser.print_help()
        parser.exit()

    output_folder = parser_args.output_folder

    if parser_args.cmd == 'test':
        package_path = os.path.dirname(os.path.realpath(__file__))
        data_package_path = os.path.join(package_path, 'data')
        sterol_input_path = os.path.join(data_package_path, 'sterol_pwy.lp')
        maa_input_path = os.path.join(data_package_path, 'MAA_pwy.lp')
        sterol_out = os.path.join(output_folder, 'sterol')
        maa_out = os.path.join(output_folder, 'MAA')

        check_folder(sterol_out)
        check_folder(maa_out)

        pathmodel_analysis(sterol_input_path, sterol_out, None)
        pathmodel_analysis(maa_input_path, maa_out, None)

        return

    elif parser_args.cmd == 'infer':
        input_file = parser_args.input
        step_limit = parser_args.step_limit
        pathmodel_analysis(input_file, output_folder, step_limit)

if __name__ == "__main__":
    main()
