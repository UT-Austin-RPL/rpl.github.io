---
layout: publication
title: "Constraint-Preserving Data Generation for Visuomotor Policy Learning"
authors: "Kevin Lin, Varun Ragunath*, Andrew McAlinden*, Aaditya Prasad, Jimmy Wu, Yuke Zhu, Jeannette Bohg"
pub_info_name: "Conference on Robot Learning (CoRL)"
pub_info_date: September 2025
excerpt: text text text
images:
  thumb: lin-corl25-cpgen.png
  main: lin-corl25-cpgen.png
paper_link: "https://arxiv.org/abs/2508.03944"
webpage_link: "https://cp-gen.github.io/"
---
Large-scale demonstration data has powered key breakthroughs in robot manipulation, but collecting that data remains costly and time-consuming. We present Constraint-Preserving Data Generation (CP-Gen), a method that uses a single expert trajectory to generate robot demonstrations containing novel object geometries and poses. These generated demonstrations are used to train closed-loop visuomotor policies that transfer zero-shot to the real world and generalize across variations in object geometries and poses. Similar to prior work using pose variations for data generation, CP-Gen first decomposes expert demonstrations into free-space motions and robot skills. But unlike those works, we achieve geometry-aware data generation by formulating robot skills as keypoint-trajectory constraints: keypoints on the robot or grasped object must track a reference trajectory defined relative to a task-relevant object. To generate a new demonstration, CP-Gen samples pose and geometry transforms for each task-relevant object, then applies these transforms to the object and its associated keypoints or keypoint trajectories. We optimize robot joint configurations so that the keypoints on the robot or grasped object track the transformed keypoint trajectory, and then motion plan a collision-free path to the first optimized joint configuration. Experiments on 16 simulation tasks and four real-world tasks, featuring multi-stage, non-prehensile and tight-tolerance manipulation, show that policies trained using CP-Gen achieve an average success rate of 77%, outperforming the best baseline that achieves an average of 50%.			