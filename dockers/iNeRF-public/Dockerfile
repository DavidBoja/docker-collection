FROM continuumio/anaconda3:latest

COPY environment.yml .
RUN conda env create -f environment.yml
SHELL ["conda", "run", "-n", "pixelnerf", "/bin/bash", "-c"]

RUN apt-get update -y && \
    apt-get install -y nano && \
    apt-get install unzip -y

RUN apt-get update && apt-get install libgl1