
ARG TENSORFLOW="1.13.2"

FROM tensorflow/tensorflow:${TENSORFLOW}-gpu-py3-jupyter


ENV TORCH_CUDA_ARCH_LIST="6.0 6.1 7.0+PTX"
ENV TORCH_NVCC_FLAGS="-Xfatbin -compress-all"
ENV CMAKE_PREFIX_PATH="$(dirname $(which conda))/../"

RUN apt-get update && apt-get install -y git \
	ninja-build \
	libglib2.0-0 \
	libsm6 \
	libxrender-dev \
	libxext6 \
	libgl1-mesa-glx \
	python3-pip \
	vim \
	libstdc++6 \
    zsh \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN  pip install --upgrade pip

RUN pip3 install \
    numpy==1.16.2 \ 
    # numpy==1.16.1 version 1.16.1 gives an error when using load_graph_mtx
    scikit-learn \
    scipy \
    PyYAML \
    plotly \
    opencv-python \
    configparser \
    matplotlib \
    ConfigArgParse \
    tqdm \
    gdown \
    trimesh>=3.6 \
    torch==1.2.0 \
    smplx==0.1.13 \
    https://github.com/MPI-IS/mesh/releases/download/v0.3/psbody_mesh-0.3-cp36-cp36m-linux_x86_64.whl \
    https://github.com/PyMesh/PyMesh/releases/download/v0.2.1/pymesh2-0.2.1-cp36-cp36m-linux_x86_64.whl


RUN export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

WORKDIR /CAPE
