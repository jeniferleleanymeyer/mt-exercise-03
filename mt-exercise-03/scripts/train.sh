#! /bin/bash
# scripts=$(dirname "$0")
# base=$(realpath $scripts)
# models=$base/models
# data=$base/data
# tools=$base/tools
# mkdir scripts/models
num_threads=4
device=""
SECONDS=0
CUDA_VISIBLE_DEVICES="" OMP_NUM_THREADS=4 python3 scripts/tools/pytorch-examples/word_language_model/main.py --data scripts/data/shakespeare --epochs 200 --log-interval 100 --emsize 200 --nhid 200 --dropout 0.5 --tied --save scripts/models/model.pt --log_perplexity scripts/data/logging_05.csv
echo "dropout = 0.5"
echo "time taken:"
echo "$SECONDS seconds"
CUDA_VISIBLE_DEVICES="" OMP_NUM_THREADS=4 python3 scripts/tools/pytorch-examples/word_language_model/main.py --data scripts/data/shakespeare --epochs 200 --log-interval 100 --emsize 200 --nhid 200 --dropout 0.0 --tied --save scripts/models/model00.pt --log_perplexity scripts/data/logging_00.csv
echo "dropout = 0.0"
echo "time taken:"
echo "$SECONDS seconds"
CUDA_VISIBLE_DEVICES="" OMP_NUM_THREADS=4 python3 scripts/tools/pytorch-examples/word_language_model/main.py --data scripts/data/shakespeare --epochs 200 --log-interval 100 --emsize 200 --nhid 200 --dropout 0.1 --tied --save scripts/models/model01.pt --log_perplexity scripts/data/logging_01.csv
echo "dropout = 0.1"
echo "time taken:"
echo "$SECONDS seconds"
CUDA_VISIBLE_DEVICES="" OMP_NUM_THREADS=4 python3 scripts/tools/pytorch-examples/word_language_model/main.py --data scripts/data/shakespeare --epochs 200 --log-interval 100 --emsize 200 --nhid 200 --dropout 0.3 --tied --save scripts/models/model03.pt --log_perplexity scripts/data/logging_03.csv
echo "dropout = 0.3"
echo "time taken:"
echo "$SECONDS seconds"
CUDA_VISIBLE_DEVICES="" OMP_NUM_THREADS=4 python3 scripts/tools/pytorch-examples/word_language_model/main.py --data scripts/data/shakespeare --epochs 200 --log-interval 100 --emsize 200 --nhid 200 --dropout 0.6 --tied --save scripts/models/model06.pt --log_perplexity scripts/data/logging_06.csv
echo "dropout = 0.6"
echo "time taken:"
echo "$SECONDS seconds"
CUDA_VISIBLE_DEVICES="" OMP_NUM_THREADS=4 python3 scripts/tools/pytorch-examples/word_language_model/main.py --data scripts/data/shakespeare --epochs 200 --log-interval 100 --emsize 200 --nhid 200 --dropout 0.9 --tied --save scripts/models/model09.pt --log_perplexity scripts/data/logging_09.csv
echo "dropout = 0.9"
echo "time taken:"
echo "$SECONDS seconds"