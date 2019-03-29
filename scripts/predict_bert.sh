#!/usr/bin/env bash

BERT_BASE_DIR=../bert/uncased_L-12_H-768_A-12
BERT_DIR=../bert
OUTPUT_DIR=../bert_output
DATA=data/raw_bert_inputs

python3 $BERT_DIR/run_classifier.py \
--task_name=cola \
--do_predict=true \
--data_dir=$DATA \
--vocab_file=$BERT_BASE_DIR/vocab.txt \
--bert_config_file=$BERT_BASE_DIR/bert_config.json \
--init_checkpoint=$TRAINED_CLASSIFIER \
--max_seq_length=128 \
--output_dir=$OUTPUT_DIR/
