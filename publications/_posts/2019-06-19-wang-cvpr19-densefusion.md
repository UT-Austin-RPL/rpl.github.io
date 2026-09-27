---
layout: publication
title: "DenseFusion: 6D Object Pose Estimation by Iterative Dense Fusion"
authors: "Chen Wang, Danfei Xu, Yuke Zhu, Roberto Martín-Martín, Cewu Lu, Li Fei-Fei, Silvio Savarese"
pub_info_name: "IEEE Conference on Computer Vision and Pattern Recognition (CVPR)"
pub_info_date: June 2019
excerpt: text text text
images:
  thumb: wang-cvpr19-densefusion.png
  main: wang-cvpr19-densefusion.png
paper_link: "papers/wang-cvpr19-densefusion.pdf"
webpage_link: "https://sites.google.com/view/densefusion"
video_link: "https://www.youtube.com/watch?v=SsE5-FuK5jo"
code_link: "https://github.com/j96w/DenseFusion"
---
A key technical challenge in performing 6D object pose estimation from RGB-D image is to fully leverage the two complementary data sources. Prior works either extract information from the RGB image and depth separately or use costly post-processing steps, limiting their performances in highly cluttered scenes and real-time applications. In this work, we present DenseFusion, a generic framework for estimating 6D pose of a set of known objects from RGBD images. DenseFusion is a heterogeneous architecture that processes the two data sources individually and uses a novel dense fusion network to extract pixel-wise dense feature embedding, from which the pose is estimated. Furthermore, we integrate an end-to-end iterative pose refinement procedure that further improves the pose estimation while achieving near real-time inference. Our experiments show that our method outperforms state-of-the-art approaches in two datasets, YCB-Video and LineMOD. We also deploy our proposed method to a real robot to grasp and manipulate objects based on the estimated pose.