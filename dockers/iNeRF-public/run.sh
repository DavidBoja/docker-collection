#!/bin/sh
CODE_DIR_PATH=$1
DATA_DIR_PATH=$2

docker run --gpus all --name inerf-container -t -v $CODE_DIR_PATH/:/iNeRF-public -v $DATA_DIR_PATH/:/data inerf
