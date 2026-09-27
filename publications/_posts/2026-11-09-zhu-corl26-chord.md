---
layout: publication
title: "Learning Dexterous Manipulation Using Contact Wrench Guidance From Human Demonstration"
authors: "Xinghao Zhu*, Zixi Liu*, Shalin Jain*, Chenran Li, Milad Noori, Michael Andres Lin, Huihua Zhao, John Welsh, Mrinal Verghese, Wei Liu, Tingwu Wang, Xingye Da, Zhengyi Luo, Vishal Kulkarni, Naema Bhatti, Yuke Zhu, Linxi \"Jim\" Fan, Bowen Wen, Danfei Xu, Soha Pouya, Yan Chang"
pub_info_name: "Conference on Robot Learning (CoRL)"
pub_info_date: November 2026
images:
  thumb: zhu-corl26-chord-thumb.webp
  main: zhu-corl26-chord.png
paper_link: "https://arxiv.org/abs/2607.00033"
webpage_link: "https://nvidia-isaac.github.io/video_to_data/chord/"
code_link: "https://github.com/nvidia-isaac/video_to_data/tree/main/robotic_grounding"
---
Dexterous robot manipulation can benefit from the abundance of human demonstrations, but transferring such demonstrations to robot policies remains challenging. We present Contact Wrench Guidance from Human Demonstration in Robotic Dexterous Manipulation (CHORD), a framework for long-horizon manipulation of rigid and articulated objects with reinforcement learning. The key idea is object-centric contact wrench space guidance: we represent human and robot motions by the forces and torques they can induce on the object, enabling similarity to be measured by the induced instantaneous motions. This guidance makes reinforcement learning more scalable for contact-rich dexterous manipulation. We further introduce a large-scale simulation benchmark with 4,739 bimanual dexterous manipulation tasks, constructed from motion-capture datasets and reconstructed in-house videos. Evaluated on 1,831 benchmark tasks, CHORD achieves an average success rate of 82.12%, demonstrating strong scalability. CHORD also generalizes to whole-body manipulation from hand-only and third-person demonstrations, achieving a 90.77% success rate, and the learned policies transfer to the real world in both open-loop and closed-loop settings.
