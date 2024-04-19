#!/bin/bash

export WORLD_SIZE=4

CKPT_DIR=/data/zhangningbo/workspace/huggingface_tool/model/meta-llama/Meta-Llama-3-8B-Instruct

torchrun --nproc_per_node 1 example_chat_completion.py \
    --ckpt_dir ${CKPT_DIR}/ \
    --tokenizer_path ${CKPT_DIR}/tokenizer.model \
    --max_seq_len 512 --max_batch_size 6
