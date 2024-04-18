mkdir -p scripts/data/wikitext-2
for corpus in train valid test; do 
    absolute_path=$(realpath scripts/tools/pytorch-examples/word_language_model/data/wikitext-2/$corpus.txt)
    ln -snf $absolute_path scripts/data/wikitext-2/$corpus.txt
done
# download a different interesting data set!
mkdir -p scripts/data/shakespeare
mkdir -p scripts/data/shakespeare/raw
wget https://www.gutenberg.org/cache/epub/100/pg100.txt
mv pg100.txt scripts/data/shakespeare/raw/shakespeare.txt
# preprocess slightly
cat scripts/data/shakespeare/raw/shakespeare.txt | python3 scripts/preprocess_raw.py > scripts/data/shakespeare/raw/shakespeare.cleaned.txt
# tokenize, fix vocabulary upper bound
cat scripts/data/shakespeare/raw/shakespeare.cleaned.txt | python3 scripts/preprocess.py --vocab-size 7000 --tokenize --lang "en" --sent-tokenize > scripts/data/shakespeare/raw/shakespeare.preprocessed.txt
# split into train, valid and test
head -n 440 scripts/data/shakespeare/raw/shakespeare.preprocessed.txt | tail -n 400 > scripts/data/shakespeare/valid.txt
head -n 840 scripts/data/shakespeare/raw/shakespeare.preprocessed.txt | tail -n 400 > scripts/data/shakespeare/test.txt
tail -n 3075 scripts/data/shakespeare/raw/shakespeare.preprocessed.txt | head -n 2955 > scripts/data/shakespeare/train.txt
echo "done"