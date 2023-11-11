#!/usr/bin/env bash
export CUDA_VISIBLE_DEVICES=0
GPUS=0

date_time=$(date +%Y%m%d_%H%M%S)


# recon stage
CONFIG=configs/voxdet/VoxDet_train_p1.py

PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \
python $(dirname "$0")/train.py --config $CONFIG --work-dir="outputs/new_VoxDet_p1/${date_time}"


# det stage
# CONFIG=configs/voxdet/VoxDet_train_p2.py

# PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \
# python3 $(dirname "$0")/train.py --config $CONFIG
