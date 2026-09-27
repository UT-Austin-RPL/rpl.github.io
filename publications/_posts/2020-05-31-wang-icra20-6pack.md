---
layout: publication
title: "6-PACK: Category-Level 6D Pose Tracker with Anchor-Based Keypoints"
authors: "Chen Wang, Roberto Martín-Martín, Danfei Xu, Jun Lv, Cewu Lu, Li Fei-Fei, Silvio Savarese, Yuke Zhu"
pub_info_name: "IEEE International Conference on Robotics and Automation (ICRA)"
pub_info_date: May 2020
excerpt: text text text
images:
  thumb: wang-icra20-6pack.png
  main: wang-icra20-6pack.png
paper_link: "https://arxiv.org/abs/1910.10750"
webpage_link: "https://sites.google.com/view/6packtracking"
video_link: "https://www.youtube.com/watch?v=INBjNZsnfy4&feature=emb_logo"
code_link: "https://github.com/j96w/6-PACK"
---
We present 6-PACK, a deep learning approach to category-level 6D object pose tracking on RGB-D data. Our method tracks in real-time novel object instances of known object categories such as bowls, laptops, and mugs. 6-PACK learns to compactly represent an object by a handful of 3D keypoints, based on which the interframe motion of an object instance can be estimated through keypoint matching. These keypoints are learned end-to-end without manual supervision in order to be most effective for tracking. Our experiments show that our method substantially outperforms existing methods on the NOCS category-level 6D pose estimation benchmark and supports a physical robot to perform simple vision-based closed-loop manipulation tasks.