# START WITH BUILDING MINKOWSKI ENGINE IMAGE (FROM HERE): https://github.com/NVIDIA/MinkowskiEngine
ARG PYTORCH="1.9.1"
ARG CUDA="11.1"
ARG CUDNN="8"

FROM pytorch/pytorch:${PYTORCH}-cuda${CUDA}-cudnn${CUDNN}-devel

# Problems with rotating keys from NVIDIA -- some public keys were different for fetching cuda and stuff
RUN rm /etc/apt/sources.list.d/cuda.list
RUN rm /etc/apt/sources.list.d/nvidia-ml.list
RUN apt-key del 7fa2af80
RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub
RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/7fa2af80.pub

##############################################
# You should modify this to match your GPU compute capability
ENV TORCH_CUDA_ARCH_LIST="6.0 6.1 7.0+PTX"
##############################################

ENV TORCH_NVCC_FLAGS="-Xfatbin -compress-all"

# Install dependencies
RUN apt-get update
RUN apt-get install -y git ninja-build cmake build-essential libopenblas-dev \
    xterm xauth openssh-server tmux wget mate-desktop-environment-core

RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

# For faster build, use more jobs.
ENV MAX_JOBS=4
RUN pip install -U git+https://github.com/NVIDIA/MinkowskiEngine -v --no-deps \
                           --install-option="--force_cuda" \
                           --install-option="--blas=openblas"


# Create conda environment
# Copy base env to SC2_PCR env and install additional packages
RUN conda create --name SC2_PCR --copy --clone base
SHELL ["conda", "run", "-n", "SC2_PCR", "/bin/bash", "-c"]
RUN conda install -c open3d-admin open3d=0.9.0.0=py37_0
RUN conda install scikit-learn
RUN conda install pandas
RUN pip install nibabel easydict==1.9
