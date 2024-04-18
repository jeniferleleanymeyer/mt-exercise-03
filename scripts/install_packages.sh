#! /bin/bash
scripts=$(dirname "$0")
mkdir scripts/tools
echo "Make sure this script is executed AFTER you have activated a virtualenv"
pip install numpy torch sacremoses nltk
# install Moses scripts for preprocessing
git clone https://github.com/bricksdont/moses-scripts scripts/tools/moses-scripts
# install pytorch examples
git clone https://github.com/pytorch/examples scripts/tools/pytorch-examples