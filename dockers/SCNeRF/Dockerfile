FROM continuumio/anaconda3:latest

COPY requirements.txt .
RUN conda create -n icn python=3.8

RUN apt-get --allow-releaseinfo-change update -y

RUN apt-get install -y nano && \
    apt-get install unzip -y \
    apt-get install graphicsmagick-imagemagick-compat

RUN apt-get update -y && apt-get install libgl1 -y

SHELL ["conda", "run", "-n", "icn", "/bin/bash", "-c"]
RUN pip install -r requirements.txt
