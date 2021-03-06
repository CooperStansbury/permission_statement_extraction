#!/usr/bin/env bash

BERT_BASE_DIR=../bert/uncased_L-12_H-768_A-12
BERT_DIR=../bert
OUTPUT_DIR=../bert_output`date '+%Y-%m-%d'`
DATA=../data/bert_training_inputs

python3 $BERT_DIR/run_classifier.py \
--task_name=cola \
--do_train=true \
--do_eval=true \
--do_predict=true \
--data_dir=$DATA \
--vocab_file=$BERT_BASE_DIR/vocab.txt \
--bert_config_file=$BERT_BASE_DIR/bert_config.json \
--init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
--max_seq_length=128 \
--train_batch_size=32 \
--learning_rate=2e-5 \
--num_train_epochs=3.0 \
--output_dir=$OUTPUT_DIR/
