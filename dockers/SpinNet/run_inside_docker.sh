#!/bin/sh

cd ..
# install conda
curl https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh
sh Anaconda3-2023.09-0-Linux-x86_64.sh

# create env and install packages
conda create -n spinnet python=3.6
source activate spinnet
conda install pytorch==1.6.0 torchvision==0.7.0 cudatoolkit=10.2 -c pytorch
conda install -c open3d-admin open3d==0.11.1
pip install "git+https://github.com/erikwijmans/Pointnet2_PyTorch.git#egg=pointnet2_ops&subdirectory=pointnet2_ops_lib"