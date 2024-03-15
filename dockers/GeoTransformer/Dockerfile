
FROM pytorch/pytorch:1.9.1-cuda11.1-cudnn8-devel

# create python env
RUN conda create --name geotransformer python==3.8
SHELL ["conda", "run", "-n", "geotransformer", "/bin/bash", "-c"]
RUN pip install torch \
                numpy \
                scipy \
                tqdm \
                coloredlogs \
                easydict \
                nibabel \
                open3d==0.13.0 \
                scikit-learn \
                einops \
                ipdb \
                tensorboard \
                tensorboardX


# problems with nvidia keys
RUN rm /etc/apt/sources.list.d/cuda.list && \
    rm /etc/apt/sources.list.d/nvidia-ml.list && \
    apt-key del 7fa2af80 && \
    apt-get update && apt-get install -y --no-install-recommends wget && \
    wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-keyring_1.0-1_all.deb && \
    dpkg -i cuda-keyring_1.0-1_all.deb

# install libgl1
RUN apt-get update && apt-get install libgl1

