#!/usr/bin/env bash
# South China University of Technology
# Yirong Chen
# mail:eecyryou@mail.scut.edu.cn

echo "=== Download pytorch-pretrained-bert model and vocab ==="
echo "---"

# 修改下列语句更改预训练模型和vocab保存位置
cd /157Dataset/data-chen.yirong/pytorch_bert_pretrained_model

echo "- Downloading bert-base-uncased"
mkdir -p bert-base-uncased
cd bert-base-uncased
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-base-uncased-vocab.txt
mv bert-base-uncased-vocab.txt vocab.txt
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-base-uncased.tar.gz
tar -xzvf bert-base-uncased.tar.gz
cd ..

echo "- Downloading bert-large-uncased"
mkdir -p bert-large-uncased
cd bert-large-uncased
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-large-uncased-vocab.txt
mv bert-large-uncased-vocab.txt vocab.txt
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-large-uncased.tar.gz
tar -xzvf bert-large-uncased.tar.gz
cd ..

echo "- Downloading bert-base-cased"
mkdir -p bert-base-cased
cd bert-base-cased
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-base-cased-vocab.txt
mv bert-base-cased-vocab.txt vocab.txt
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-base-cased.tar.gz
tar -xzvf bert-base-cased.tar.gz
cd ..

echo "- Downloading bert-large-cased"
mkdir -p bert-large-cased
cd bert-large-cased
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-large-cased-vocab.txt
mv bert-large-cased-vocab.txt vocab.txt
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-large-cased.tar.gz
tar -xzvf bert-large-cased.tar.gz
cd ..

echo "- Downloading bert-base-multilingual-uncased"
mkdir -p bert-base-multilingual-uncased
cd bert-base-multilingual-uncased
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-base-multilingual-uncased-vocab.txt
mv bert-base-multilingual-uncased-vocab.txt vocab.txt
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-base-multilingual-uncased.tar.gz
tar -xzvf bert-base-multilingual-uncased.tar.gz
cd ..

echo "- Downloading bert-base-multilingual-cased"
mkdir -p bert-base-multilingual-cased
cd bert-base-multilingual-cased
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-base-multilingual-cased-vocab.txt
mv bert-base-multilingual-cased-vocab.txt vocab.txt
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-base-multilingual-cased.tar.gz
tar -xzvf bert-base-multilingual-cased.tar.gz
cd ..

echo "- Downloading bert-base-chinese"
mkdir -p bert-base-chinese
cd bert-base-chinese
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-base-chinese-vocab.txt
mv bert-base-chinese-vocab.txt vocab.txt
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-base-chinese.tar.gz
tar -xzvf bert-base-chinese.tar.gz
cd ..

echo "- Finshed!!!"

