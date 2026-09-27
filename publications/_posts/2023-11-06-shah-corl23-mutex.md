---
layout: publication
title: "MUTEX: Learning Unified Policies from Multimodal Task Specifications"
authors: "Rutav Shah, Roberto Martín Martín&dagger;, Yuke Zhu&dagger;"
pub_info_name: "Conference on Robot Learning (CoRL)"
pub_info_date: November 2023
excerpt: text text text
images:
  thumb: shah-corl23-mutex.jpg
  main: shah-corl23-mutex.jpg
paper_link: "https://arxiv.org/abs/2309.14320"
webpage_link: "https://ut-austin-rpl.github.io/MUTEX/"
code_link: "https://github.com/UT-Austin-RPL/MUTEX"
---
Humans use different modalities, such as speech, text, images, videos, etc., to communicate their intent and goals with teammates. For robots to become better assistants, we aim to endow them with the ability to follow instructions and understand tasks specified by their human partners. Most robotic policy learning methods have focused on one single modality of task specification while ignoring the rich cross-modal information. We present MUTEX, a unified approach to policy learning from multimodal task specifications. It trains a transformer-based architecture to facilitate cross-modal reasoning, combining masked modeling and cross-modal matching objectives in a two-stage training procedure. After training, MUTEX can follow a task specification in any of the six learned modalities (video demonstrations, goal images, text goal descriptions, text instructions, speech goal descriptions, and speech instructions) or a combination of them. We systematically evaluate the benefits of MUTEX in a newly designed dataset with 100 tasks in simulation and 50 tasks in the real world, annotated with multiple instances of task specifications in different modalities, and observe improved performance over methods trained specifically for any single modality.