FROM continuumio/anaconda3:latest


RUN apt-get update -y && \
    apt-get install -y nano unzip build-essential libosmesa6-dev freeglut3-dev tmux

COPY environment.yml .
RUN conda env create -f environment.yml
SHELL ["conda", "run", "-n", "4D-humans", "/bin/bash", "-c"]

RUN apt-get update -y && apt-get install libgl1 -y
