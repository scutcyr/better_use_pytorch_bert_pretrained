# PyTorch Pretrained BERT Model and vocab


This repository contains pre-trained models and vocab for:

- [PyTorch Pretrained BERT](https://github.com/huggingface/pytorch-pretrained-BERT)

## Download PyTorch Pretrained BERT Model and vocab
before download, you can change line 10 in download_pytorch-pretrained-BERT_model_and_vocab.sh to determine the path
then, run:
```bash
sh download_pytorch-pretrained-BERT_model_and_vocab.sh
```

## Installation

This repo was tested on Python 2.7 and 3.5+ (examples are tested only on python 3.5+) and PyTorch 0.4.1/1.0.0

### With pip

PyTorch pretrained bert can be installed by pip as follows:
```bash
pip install pytorch-pretrained-bert
```

### With git

or you can use git to clone the [pytorch-pretrained-BERT](https://github.com/huggingface/pytorch-pretrained-BERT) repository
```bash
git clone https://github.com/huggingface/pytorch-pretrained-BERT.git
```
this allow you to change the code!

## Usage

### BERT

Here is a quick-start example using `BertTokenizer`, `BertModel` and `BertForMaskedLM` class with Google AI's pre-trained `Bert base uncased` model. See the [doc section](#doc) below for all the details on these classes.

First let's prepare a tokenized input with `BertTokenizer`

```python
import torch
from pytorch_pretrained_bert import BertTokenizer, BertModel, BertForMaskedLM

# OPTIONAL: if you want to have more information on what's happening, activate the logger as follows
import logging
logging.basicConfig(level=logging.INFO)

# Load pre-trained model tokenizer (vocabulary)
pretrained_model_name_or_path = '/157Dataset/data-chen.yirong/pytorch_bert_pretrained_model/bert-base-cased/'
tokenizer = BertTokenizer.from_pretrained(pretrained_model_name_or_path)

# Tokenized input
text = "[CLS] Who was Jim Henson ? [SEP] Jim Henson was a puppeteer [SEP]"
tokenized_text = tokenizer.tokenize(text)

# Mask a token that we will try to predict back with `BertForMaskedLM`
masked_index = 8
tokenized_text[masked_index] = '[MASK]'
assert tokenized_text == ['[CLS]', 'who', 'was', 'jim', 'henson', '?', '[SEP]', 'jim', '[MASK]', 'was', 'a', 'puppet', '##eer', '[SEP]']

# Convert token to vocabulary indices
indexed_tokens = tokenizer.convert_tokens_to_ids(tokenized_text)
# Define sentence A and B indices associated to 1st and 2nd sentences (see paper)
segments_ids = [0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1]

# Convert inputs to PyTorch tensors
tokens_tensor = torch.tensor([indexed_tokens])
segments_tensors = torch.tensor([segments_ids])
```

Let's see how to use `BertModel` to get hidden states

```python
# Load pre-trained model (weights)
model = BertModel.from_pretrained(pretrained_model_name_or_path)
model.eval()

# If you have a GPU, put everything on cuda
tokens_tensor = tokens_tensor.to('cuda')
segments_tensors = segments_tensors.to('cuda')
model.to('cuda')

# Predict hidden states features for each layer
with torch.no_grad():
    encoded_layers, _ = model(tokens_tensor, segments_tensors)
# We have a hidden states for each of the 12 layers in model bert-base-uncased
assert len(encoded_layers) == 12
```

And how to use `BertForMaskedLM`

```python
# Load pre-trained model (weights)
model = BertForMaskedLM.from_pretrained(pretrained_model_name_or_path)
model.eval()

# If you have a GPU, put everything on cuda
tokens_tensor = tokens_tensor.to('cuda')
segments_tensors = segments_tensors.to('cuda')
model.to('cuda')

# Predict all tokens
with torch.no_grad():
    predictions = model(tokens_tensor, segments_tensors)

# confirm we were able to predict 'henson'
predicted_index = torch.argmax(predictions[0, masked_index]).item()
predicted_token = tokenizer.convert_ids_to_tokens([predicted_index])[0]
assert predicted_token == 'henson'
```


