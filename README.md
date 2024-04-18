# MT Exercise 3: Pytorch RNN Language Models

This repo shows how to train neural language models using [Pytorch example code](https://github.com/pytorch/examples/tree/master/word_language_model). Thanks to Emma van den Bold, the original author of these scripts. 

# Requirements

- This only works on a Unix-like system, with bash.
- Python 3 must be installed on your system, i.e. the command `python3` must be available
- Make sure virtualenv is installed on your system. To install, e.g.

    `pip install virtualenv`

# Changes

The `download_data.sh` file was modified to download "The Complete Works of William Shakespeare" from Project Gutenberg. The preprocessing steps remain the same, but the input files are now Shakespeare.

changed vocabulary size in the preprocessing step from $5000$ to $7000$.

Additional steps with varying dropout values were added to the `train.sh` file. The dopout values used are `0.0, 0.1, 0.3, 0.6, 0.9`.

Added a function to `scripts/tools/pytorch-examples/word_language_model/main.py` that writes all the logging into a csv-file, when an output file is definedd.

Added calls to the `generate.sh` file, to get generations from the differently trained dropouts (0.0, 0.1, 0.3, 0.6, 0.9).

---> plots

# Steps

Clone this repository in the desired place:

    git clone https://github.com/moritz-steiner/mt-exercise-03
    cd mt-exercise-03

Create a new virtualenv that uses Python 3. Please make sure to run this command outside of any virtual Python environment:

    ./scripts/make_virtualenv.sh

**Important**: Then activate the env by executing the `source` command that is output by the shell script above.

Download and install required software:

    ./scripts/install_packages.sh

Download and preprocess data:

    ./scripts/download_data.sh

Train a model:

    ./scripts/train.sh

The training process can be interrupted at any time, and the best checkpoint will always be saved.

Generate (sample) some text from a trained model with:

    ./scripts/generate.sh
