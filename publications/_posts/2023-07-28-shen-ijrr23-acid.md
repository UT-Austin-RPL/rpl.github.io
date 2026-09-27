---
layout: publication
title: "ACID: Action-Conditional Implicit Visual Dynamics for Deformable Object Manipulation"
authors: "Bokui Shen*, Zhenyu Jiang*, Christopher Choy, Silvio Savarese, Leonidas J. Guibas, Anima Anandkumar, Yuke Zhu"
pub_info_name: "International Journal of Robotics Research (IJRR)"
pub_info_date: July 2023
excerpt: text text text
images:
  thumb: shen-rss22-acid.png
  main: shen-rss22-acid.png
paper_link: "https://journals.sagepub.com/doi/10.1177/02783649231191222"
webpage_link: "https://b0ku1.github.io/acid/"
code_link: "https://github.com/NVlabs/ACID"
video_link: "https://www.youtube.com/watch?v=pjdCJr79lzE"
---

Manipulating volumetric deformable objects in the real world, like plush toys and pizza dough, bring substantial challenges due to infinite shape variations, non-rigid motions, and partial observability. We introduce ACID, an action-conditional visual dynamics model for volumetric deformable objects based on structured implicit neural representations. ACID integrates two new techniques: implicit representations for action-conditional dynamics and geodesics-based contrastive learning. To represent deformable dynamics from partial RGB-D observations, we learn implicit representations of occupancy and flow-based forward dynamics. To accurately identify state change under large non-rigid deformations, we learn a correspondence embedding field through a novel geodesics-based contrastive loss. To evaluate our approach, we develop a simulation framework for manipulating complex deformable shapes in realistic scenes and a benchmark containing over 17,000 action trajectories with six types of plush toys and 78 variants. Our model achieves the best performance in geometry, correspondence, and dynamics predictions over existing approaches. The ACID dynamics models are successfully employed to goal-conditioned deformable manipulation tasks, resulting in a 30% increase in task success rate over the strongest baseline.
