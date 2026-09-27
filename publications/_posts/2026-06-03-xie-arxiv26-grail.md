---
layout: publication
date: 2026-11-09
permalink: /publications/2026/06/03/xie-arxiv26-grail/
title: "GRAIL: Generating Humanoid Loco-Manipulation from 3D Assets and Video Priors"
authors: "Tianyi Xie*, Haotian Zhang*, Jinhyung Park*, Zi Wang*, Bowen Wen, Jiefeng Li, Xueting Li, Qingwei Ben, Haoyang Weng, Yufei Ye, David Minor, Tingwu Wang, Chenfanfu Jiang, Sanja Fidler, Jan Kautz, Linxi \"Jim\" Fan, Yuke Zhu, Zhengyi Luo, Umar Iqbal, Ye Yuan"
pub_info_name: "Conference on Robot Learning (CoRL)"
pub_info_date: November 2026
excerpt: text text text
images:
  thumb: xie-arxiv26-grail.jpg
  main: xie-arxiv26-grail.jpg
paper_link: "https://arxiv.org/abs/2606.05160"
webpage_link: "https://research.nvidia.com/labs/dair/grail/"
code_link: "https://github.com/NVlabs/GRAIL/"
---
Scaling humanoid loco-manipulation requires robot-compatible demonstrations across diverse objects, whole-body motions, and scene geometries, but teleoperation and motion capture are difficult to scale because each collection depends on physical setups, instrumented actors, and robot operation. We present GRAIL, a digital generation pipeline that remains fully virtual until deployment: it composes 3D assets, simulator-ready scenes, and priors from video foundation models (VFMs) to synthesize interactions without rebuilding physical environments or teleoperating the robot. Rather than reconstructing unconstrained in-the-wild videos, GRAIL starts from fully specified 3D configurations in which object geometry, camera parameters, metric scale, environment depth, and a robot-proportioned character are known before video generation and reused during reconstruction. This privileged setup better conditions 4D recovery, allowing model-based object tracking, human motion estimation, and interaction-aware optimization to reconstruct metric 4D human-object interaction (HOI) trajectories with reduced depth ambiguity and morphology mismatch. We retarget the recovered motions to a humanoid robot and train complementary task-general trackers: an object-aware latent adaptor for manipulation and a scene-aware tracker for terrain traversal. GRAIL produces over 20,000 sequences spanning pick-up, object manipulation, sitting, and terrain traversal. Using only GRAIL-generated data, we train egocentric visual policies through a sim-to-real pipeline and deploy them on a Unitree G1 humanoid, achieving 84% real-world success on diverse object pick-up and 90% success on stair-climbing.
