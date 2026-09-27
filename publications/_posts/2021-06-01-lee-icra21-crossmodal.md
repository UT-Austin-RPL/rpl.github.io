---
layout: publication
title: "Detect, Reject, Correct: Crossmodal Compensation of Corrupted Sensors"
authors: "Michelle A. Lee, Matthew Tan, Yuke Zhu, Jeannette Bohg"
pub_info_name: "IEEE International Conference on Robotics and Automation (ICRA)"
pub_info_date: May 2021
excerpt: text text text
images:
  thumb: lee-icra21-crossmodal.png
  main: lee-icra21-crossmodal.png
paper_link: "https://arxiv.org/abs/2012.00201"
webpage_link: "https://sites.google.com/view/crossmodal-compensation/home"
video_link: "https://www.youtube.com/watch?v=z4E2c-B3khw"
---
Using sensor data from multiple modalities presents an opportunity to encode redundant and complementary features that can be useful when one modality is corrupted or noisy. Humans do this everyday, relying on touch and proprioceptive feedback in visually-challenging environments. However, robots might not always know when their sensors are corrupted, as even broken sensors can return valid values. In this work, we introduce the Crossmodal Compensation Model (CCM), which can detect corrupted sensor modalities and compensate for them. CMM is a representation model learned with self-supervision that leverages unimodal reconstruction loss for corruption detection. CCM then discards the corrupted modality and compensates for it with information from the remaining sensors. We show that CCM learns rich state representations that can be used for contact-rich manipulation policies, even when input modalities are corrupted in ways not seen during training time.