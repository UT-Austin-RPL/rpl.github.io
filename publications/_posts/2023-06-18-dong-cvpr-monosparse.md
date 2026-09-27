---
layout: publication
title: "Fast Monocular Scene Reconstruction with Global-Sparse Local-Dense Grids"
authors: "Wei Dong, Chris Choy, Charles Loop, Or Litany, Yuke Zhu, Anima Anandkumar"
pub_info_name: "IEEE Conference on Computer Vision and Pattern Recognition (CVPR)"
pub_info_date: June 2023
excerpt: text text text
images:
  thumb: dong-cvpr-monosparse.png
  main: dong-cvpr-monosparse.png
paper_link: "https://arxiv.org/abs/2305.13220"
---
Indoor scene reconstruction from monocular images has long been sought after by augmented reality and robotics developers. Recent advances in neural field representations and monocular priors have led to remarkable results in scene-level surface reconstructions. The reliance on Multilayer Perceptrons (MLP), however, significantly limits speed in training and rendering. In this work, we propose to directly use signed distance function (SDF) in sparse voxel block grids for fast and accurate scene reconstruction without MLPs. Our globally sparse and locally dense data structure exploits surfaces' spatial sparsity, enables cache-friendly queries, and allows direct extensions to multi-modal data such as color and semantic labels. To apply this representation to monocular scene reconstruction, we develop a scale calibration algorithm for fast geometric initialization from monocular depth priors. We apply differentiable volume rendering from this initialization to refine details with fast convergence. We also introduce efficient high-dimensional Continuous Random Fields (CRFs) to further exploit the semantic-geometry consistency between scene objects. Experiments show that our approach is 10x faster in training and 100x faster in rendering while achieving comparable accuracy to state-of-the-art neural implicit methods.
