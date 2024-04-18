#! /bin/bash
scripts=$(dirname "$0")
base=$(realpath $scripts)
models=$base/models
data=$base/data
tools=$base/tools
samples=$base/samples
# mkdir scripts/samples
num_threads=4
device=""
CUDA_VISIBLE_DEVICES="" OMP_NUM_THREADS=4 python3 scripts/tools/pytorch-examples/word_language_model/generate.py --data scripts/data/shakespeare --words 100 --checkpoint scripts/models/model.pt --outf scripts/samples/sample.txt
CUDA_VISIBLE_DEVICES="" OMP_NUM_THREADS=4 python3 scripts/tools/pytorch-examples/word_language_model/generate.py --data scripts/data/shakespeare --words 100 --checkpoint scripts/models/model00.pt --outf scripts/samples/sample00.txt
CUDA_VISIBLE_DEVICES="" OMP_NUM_THREADS=4 python3 scripts/tools/pytorch-examples/word_language_model/generate.py --data scripts/data/shakespeare --words 100 --checkpoint scripts/models/model01.pt --outf scripts/samples/sample01.txt
CUDA_VISIBLE_DEVICES="" OMP_NUM_THREADS=4 python3 scripts/tools/pytorch-examples/word_language_model/generate.py --data scripts/data/shakespeare --words 100 --checkpoint scripts/models/model03.pt --outf scripts/samples/sample03.txt
CUDA_VISIBLE_DEVICES="" OMP_NUM_THREADS=4 python3 scripts/tools/pytorch-examples/word_language_model/generate.py --data scripts/data/shakespeare --words 100 --checkpoint scripts/models/model06.pt --outf scripts/samples/sample06.txt
CUDA_VISIBLE_DEVICES="" OMP_NUM_THREADS=4 python3 scripts/tools/pytorch-examples/word_language_model/generate.py --data scripts/data/shakespeare --words 100 --checkpoint scripts/models/model09.pt --outf scripts/samples/sample09.txt
