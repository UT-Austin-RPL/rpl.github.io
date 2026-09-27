---
layout: publication
title: "OKAMI: Teaching Humanoid Robots Manipulation Skills through Single Video Imitation"
authors: "Jinhan Li, Yifeng Zhu*, Yuqi Xie*, Zhenyu Jiang*, Mingyo Seo, Georgios Pavlakos, Yuke Zhu"
pub_info_name: "Conference on Robot Learning (CoRL)"
pub_info_date: November 2024
pub_info_highlight: Oral Presentation
excerpt: text text text
images:
  thumb: li-corl24-okami.png
  main: li-corl24-okami.png
paper_link: "https://arxiv.org/abs/2410.11792"
webpage_link: "https://ut-austin-rpl.github.io/OKAMI/"
---
We study the problem of teaching humanoid robots manipulation skills by imitating from single video demonstrations. We introduce OKAMI, a method that generates a manipulation plan from a single RGB-D video and derives a policy for execution. At the heart of our approach is object-aware retargeting, which enables the humanoid robot to mimic the human motions in an RGB-D video while adjusting to different object locations during deployment. OKAMI uses open-world vision models to identify task-relevant objects and retarget the body motions and hand poses separately. Our experiments show that OKAMI achieves strong generalizations across varying visual and spatial conditions, outperforming the state-of-the-art baseline on open-world imitation from observation. Furthermore, OKAMI rollout trajectories are leveraged to train closed-loop visuomotor policies, which achieve an average success rate of 79.2% without the need for labor-intensive teleoperation. More videos can be found on our website https://ut-austin-rpl.github.io/OKAMI/   