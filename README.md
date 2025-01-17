# Docker collection

![docker-collection-banner-image](docker_collection.png)

Collection of Dockerfiles for existing projects/papers I tested — useful as a starting point for your own experiments. Adapt the Dockerfiles and running scripts to your needs.

<br>

# Instructions

Each project/paper implementation consists of 3 files:
- Dockerfile
- build.sh
- run.sh
- README

and optional additional files (such as python requirements.txt, conda environemnts.yml, etc.). 

The idea is to build the docker image from the `Dockerfile` using `build.sh` and run the docker container using `run.sh`. For a project `<SELECTED-PROJECT>` run the following:

```
cd dockers/<SELECTED-PROJECT>
sh build.sh
sh run.sh CODE-PATH DATA-PATH
```
where `CODE-PATH` is the path to the code from the original GitHub repository, and `DATA-PATH` is the <ins>optional</ins> path to the datasets location you want to use in the docker container. For more instructions read the `dockers/<SELECTED-PROJECT>/README_<SELECTED-PROJECT>.md`.

<br>

# Implementations

The implmemented projects/papers are listed in the table below. The files for a selected project are located in `dockers/<Location>`, where `<Location>` is listed in the table.


| Reference | Paper                                                       | Topic | Link                                         | GitHub                                             | Location     |
|-----------|-------------------------------------------------------------|-------|----------------------------------------------|----------------------------------------------------|--------------|
| [1]       | iNeRF: Inverting Neural Radiance Fields for Pose Estimation | NERFs | [link](https://arxiv.org/pdf/2012.05877.pdf) | [repo](https://github.com/yenchenlin/iNeRF-public) | iNeRF-public |
| [2]       | SC^2-PCR: A Second Order Spatial Compatibility for Efficient and Robust Point Cloud Registration | 3D Registration | [link](https://openaccess.thecvf.com/content/CVPR2022/papers/Chen_SC2-PCR_A_Second_Order_Spatial_Compatibility_for_Efficient_and_Robust_CVPR_2022_paper.pdf) | [repo](https://github.com/ZhiChen902/SC2-PCR) | SC2-PCR             |
| [3]       | Humans in 4D: Reconstructing and Tracking Humans with Transformers |  SMPL fitting | [link](https://arxiv.org/pdf/2305.20091.pdf) | [repo](https://github.com/shubham-goel/4D-Humans)  | 4D-Humans
| [5]      | SpinNet: Learning a General Surface Descriptor for 3D Point Cloud Registration | 3D Registration | [link](https://arxiv.org/pdf/2011.12149.pdf) | [repo](https://github.com/QingyongHu/SpinNet/tree/main) | SpinNet |
| [6]      | Geometric Transformer for Fast and Robust Point Cloud Registration | 3D Registration | [link](https://arxiv.org/pdf/2202.06688.pdf) | [repo](https://github.com/qinzheng93/GeoTransformer) | GeoTransformer |
| [17]      | Learning to Dress 3D People in Generative Clothing | SMPL clothing | [link](https://openaccess.thecvf.com/content_CVPR_2020/papers/Ma_Learning_to_Dress_3D_People_in_Generative_Clothing_CVPR_2020_paper.pdf) | [repo](https://github.com/qianlim/CAPE) | CAPE |
| [19]      | Self-Calibrating Neural Radiance Fields | NERFs | [link](https://arxiv.org/pdf/2108.13826.pdf) | [repo](https://github.com/POSTECH-CVLab/SCNeRF) | SCNeRF |
| [20]      | MVSplat: Efficient 3D Gaussian Splatting from Sparse Multi-View Images | Gaussian Splatting | [link](https://arxiv.org/pdf/2403.14627) | [repo](https://github.com/donydchen/mvsplat) | mvsplat | 
<br>

# ToDo
- [ ] Add GeDi [4] docker
- [ ] Add PointDSC [7] docker
- [ ] Add YOHO [8] docker
- [ ] Add RegTR [9] docker
- [ ] Add DIP [10] docker
- [ ] Add LVD [11] docker
- [ ] Add HierProb3D [12] docker
- [ ] Add VoteHMR [13] docker
- [ ] Add Unsupervised3DHuman [14] docker
- [ ] Add 3D-CODED [15] docker
- [ ] Add ALIKE [16] docker
- [ ] Add SMPLR [18] docker
- [x] Add SC2-PCR [2] docker
- [x] Add 4D-Humans [3] docker
- [x] Add SpinNet [5] docker
- [x] Add GeoTransformer [6] docker
- [x] Add CAPE [17] docker
- [x] Add SCNeRF [19] docker
- [x] Add mvsplat [20] docker

<br>

# References
[1] Yen-Chen et al.: iNeRF: Inverting Neural Radiance Fields for Pose Estimation, IROS 2021 <br>
[2] Chen et al.: SC^2-PCR: A Second Order Spatial Compatibility for Efficient and Robust Point Cloud Registration, CVPR 2022 <br>
[3] Goel et al.: Humans in 4D: Reconstructing and Tracking Humans with Transformers, arXiv preprint
[4] Poiesi et al.: Learning general and distinctive 3D local deep descriptors for point cloud registration, PAMI 2022 <br>
[5] Sheng et al.: SpinNet: Learning a General Surface Descriptor for 3D Point Cloud Registration, CVPR 2021 <br>
[6] Qin et al: Geometric Transformer for Fast and Robust Point Cloud Registration, CVPR 2022 <br>
[7] Bai et al: PointDSC: Robust Point Cloud Registration using Deep Spatial Consistency, CVPR 2021 <br>
[8] Wang et al: You only hypothesize once: Point cloud registration with rotation-equivariant descriptors, ACM MM 2022 <br>
[9] Yew et al: REGTR: End-to-end Point Cloud Correspondences with Transformers, CVPR 2022 <br>
[10] Poiesi et al.: Distinctive {3D} local deep descriptors, ICPR 2021 <br>
[11] Corona et al: Learned Vertex Descent: A New Direction for 3D Human Model Fitting, ECCV 2022 <br>
[12] Sengupta et al.: Hierarchical Kinematic Probability Distributions for 3D Human Shape and Pose Estimation from Images in the Wild, ICCV 2021 <br>
[13] Liu et al.: VoteHMR: Occlusion-Aware Voting Network for Robust 3D Human Mesh Recovery from Partial Point Clouds, ACM MM 2021 <br>
[14] Zuo et al.: Self-supervised 3D Human Mesh Recovery from Noisy Point Clouds, arxiv preprint <br>
[15] Groueix et al.: 3D-CODED : 3D Correspondences by Deep Deformation, ECCV 2018 <br>
[16] Zhao et al.: ALIKE: Accurate and Lightweight Keypoint Detection and Descriptor Extraction, ToM 2022 <br>
[17] Ma et al.: Learning to Dress 3D People in Generative Clothing, CVPR 2020 <br>
[18] Madadi et al.: SMPLR: Deep learning based SMPL reverse for 3D human pose and shape recovery, Pattern Recognition 2020 <br>
[19] Jeong et al.: Self-Calibrating Neural Radiance Fields, ICCV 2021 <br>
[20] Chen et al.: MVSplat: Efficient 3D Gaussian Splatting from Sparse Multi-View Images, ECCV 2024 <br>
