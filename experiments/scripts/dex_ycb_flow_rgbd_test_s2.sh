#!/bin/bash

set -x
set -e

export PYTHONUNBUFFERED="True"
export CUDA_VISIBLE_DEVICES=$1

time ./tools/test_net.py --gpu $1 \
  --network flownets_rgbd \
  --pretrained output/dex_ycb/dex_ycb_s2_train/flownets_dex_ycb_all_rgbd_epoch_$2.checkpoint.pth \
  --dataset dex_ycb_s2_test \
  --cfg experiments/cfgs/dex_ycb_flow_rgbd.yml
