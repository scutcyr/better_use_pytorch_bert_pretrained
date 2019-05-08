#!/usr/bin/env bash

echo "=== Download pytorch-pretrained-bert model ==="
echo "---"

cd /157Dataset/data-chen.yirong/pytorch_bert_pretrained_model

echo "- Downloading bert-base-uncased"
cd bert-base-uncased
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-base-uncased-vocab.txt
mv bert-base-uncased-vocab.txt vocab.txt
cd ..

echo "- Downloading bert-large-uncased"
cd bert-large-uncased
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-large-uncased-vocab.txt
mv bert-large-uncased-vocab.txt vocab.txt
cd ..

echo "- Downloading bert-base-cased"
cd bert-base-cased
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-base-cased-vocab.txt
mv bert-base-cased-vocab.txt vocab.txt
cd ..

echo "- Downloading bert-large-cased"
cd bert-large-cased
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-large-cased-vocab.txt
mv bert-large-cased-vocab.txt vocab.txt
cd ..

echo "- Downloading bert-base-multilingual-uncased"
cd bert-base-multilingual-uncased
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-base-multilingual-uncased-vocab.txt
mv bert-base-multilingual-uncased-vocab.txt vocab.txt
cd ..

echo "- Downloading bert-base-multilingual-cased"
cd bert-base-multilingual-cased
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-base-multilingual-cased-vocab.txt
mv bert-base-multilingual-cased-vocab.txt vocab.txt
cd ..

echo "- Downloading bert-base-chinese"
cd bert-base-chinese
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-base-chinese-vocab.txt
mv bert-base-chinese-vocab.txt vocab.txt
cd ..

echo "- Finshed!!!"

