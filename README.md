# Docker collection

![docker-collection-banner-image](docker_collection.png)

Collection of Dockerfiles for existing projects/papers I tested — useful as a starting point for your own experiments. Adapt the Dockerfiles and running scripts to your needs.

# General instructions

Each project/paper implementation consists of 3 files:
- Dockerfile
- build.sh
- run.sh

The idea is to build the docker image from the Dockerfile using `build.sh` and run the docker container using `run.sh`. For a project `SELECTED-PROJECT` run the following:

```
cd SELECTED-PROJECT
sh build.sh
sh run.sh CODE-PATH DATA-PATH
```
where `CODE-PATH` is the path to the code from the original GitHub repository, and `DATA-PATH` is the path to the datasets location you want to use in the docker container.


# IMPLEMENTATIONS


| Reference | Paper                                                       | Topic | Link                                         | GitHub                                             | Location     |
|-----------|-------------------------------------------------------------|-------|----------------------------------------------|----------------------------------------------------|--------------|
| 1         | iNeRF: Inverting Neural Radiance Fields for Pose Estimation | NERFs | [link](https://arxiv.org/pdf/2012.05877.pdf) | [repo](https://github.com/yenchenlin/iNeRF-public) | iNeRF-public |
|           |                                                             |       |                                              |                                                    |              |
|           |                                                             |       |                                              |                                                    |              |
|           |                                                             |       |                                              |                                                    |              

# TODO
- [ ] Add GeDi docker
- [ ] Add GeoTransformer docker
- [ ] Add SC2-PCR docker

# FULL PAPER REFERENCES
[1] Yen-Chen et al.: iNeRF: Inverting Neural Radiance Fields for Pose Estimation, IROS 2021
