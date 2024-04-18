# MT Exercise 3: Pytorch RNN Language Models
## Jenifer Leleany Meyer (jenmey)
#### I am aware, that the scores I get are not very great. This is due to the large dataset and limited training time, but I am sure, that the numbers are still analysable.

# Changes

The `download_data.sh` file was modified to download "The Complete Works of William Shakespeare" from Project Gutenberg. The preprocessing steps remain the same, but the input files are now Shakespeare.

changed vocabulary size in the preprocessing step from $5000$ to $7000$.

Additional steps with varying dropout values were added to the `train.sh` file. The dopout values used are `0.0, 0.1, 0.3, 0.6, 0.9`.

Added a function to `scripts/tools/pytorch-examples/word_language_model/main.py` that writes all the logging into a csv-file, when an output file is definedd.

Added calls to the `generate.sh` file, to get generations from the differently trained dropouts (0.0, 0.1, 0.3, 0.6, 0.9).

Added `get_plot.sh` to the scripts. This `.sh` file calls `make_tables_and_plot.py` which collects the logging from the 

# Steps

Create a new virtualenv that uses Python 3:

    ./scripts/make_virtualenv.sh

Activate virtual environment:

    source scripts/venvs/torch3/bin/activate

Download and install required software:

    ./scripts/install_packages.sh

Download and preprocess data:

    ./scripts/download_data.sh

Train a model:

    ./scripts/train.sh

Generate some text from a trained model with:

    ./scripts/generate.sh

Create summary of perplexity scores of different dropout value models and create line plot containing these scores:

    ./scrips/get_plot.sh
