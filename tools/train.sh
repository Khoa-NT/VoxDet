#!/usr/bin/env bash
export CUDA_VISIBLE_DEVICES=0
GPUS=0
date_time=$(date +%Y%m%d_%H%M%S)


# recon stage
CONFIG=configs/voxdet/VoxDet_train_p1.py

SECONDS=0
PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \
python $(dirname "$0")/train.py --config $CONFIG --work-dir="outputs/new_VoxDet_p1/${date_time}"
## ------ Done ------ ##
t_secs=$SECONDS
hrs=$(( t_secs/3600 ))
mins=$(( (t_secs-hrs*3600)/60 ))
secs=$(( t_secs-hrs*3600-mins*60 ))

echo Done ${config_yml_path}
printf 'Time spent: %02d:%02d:%02d\n' $hrs $mins $secs





# det stage
# CONFIG=configs/voxdet/VoxDet_train_p2.py

# PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \
# python3 $(dirname "$0")/train.py --config $CONFIG
