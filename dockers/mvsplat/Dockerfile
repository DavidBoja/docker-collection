

FROM pytorch/pytorch:2.1.2-cuda12.1-cudnn8-devel

ENV TZ=Europe/Zagreb
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


RUN apt-get update -y && \
    apt-get install -y git nano ninja-build cmake unzip build-essential libosmesa6-dev freeglut3-dev tmux
RUN apt-get update -y && apt-get install libgl1 -y


COPY requirements.txt /tmp/
RUN conda create --name mvsplat python==3.10

SHELL ["conda", "run", "-n", "mvsplat", "/bin/bash", "-c"]
RUN pip install torch==2.1.2 torchvision==0.16.2 torchaudio==2.1.2 --index-url https://download.pytorch.org/whl/cu121
RUN pip install -r /tmp/requirements.txt