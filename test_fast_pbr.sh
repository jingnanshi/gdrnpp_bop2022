#!/usr/bin/env bash

DATASET=$1
export CUDA_VISIBLE_DEVICES=$3

suffix=""
if [ "$#" -ge 4 ] # ok
then
    suffix=$4
fi

python test_from_init_pose_pickle.py --save_dir output/my_evaluation_${DATASET}${suffix}_fast --dataset $DATASET --load_weights checkpoints/${DATASET}_pbr.pth \
--init_pose_file $2 --num_inner_loops 10 --num_solver_steps 3