---
layout: publication
title: "MotionBricks: Scalable Real-Time Motions with Modular Latent Generative Model and Smart Primitives"
authors: "Tingwu Wang*, Olivier Dionne*, Michael De Ruyter, David Minor, Davis Rempe, Kaifeng Zhao, Mathis Petrovich, Ye Yuan, Chenran Li, Zhengyi Luo, Brian Robison, Xavier Blackwell, Bernardo Antoniazzi, Xue Bin Peng, Yuke Zhu, Simon Yuen"
pub_info_name: "ACM SIGGRAPH Conference"
pub_info_date: July 2026
pub_info_highlight: "Technical Papers Trailer"
excerpt: text text text
images:
  thumb: wang-siggraph26-motionbricks.jpg
  main: wang-siggraph26-motionbricks.jpg
paper_link: "https://arxiv.org/abs/2604.24833"
webpage_link: "https://nvlabs.github.io/motionbricks/"
code_link: "https://github.com/NVlabs/GR00T-WholeBodyControl/tree/main/motionbricks"
---
Despite transformative advances in generative motion synthesis, real-time interactive motion control remains dominated by traditional techniques. In this work, we identify two key challenges in bridging research and production: 1) Real-time scalability: Industry applications demand real-time generation of a vast repertoire of motion skills, while generative methods exhibit significant degradation in quality and scalability under real-time computation constraints, and 2) Integration: Industry applications demand fine-grained multi-modal control involving velocity commands, style selection, and precise keyframes, a need largely unmet by existing text- or tag-driven models. To overcome these limitations, we introduce MotionBricks: a large-scale, real-time generative framework with a two-fold solution. First, we propose a large-scale modular latent generative backbone tailored for robust real-time motion generation, effectively modeling a dataset of over 350,000 motion clips with a single model. Second, we introduce smart primitives that provide a unified, robust, and intuitive interface for authoring both navigation and object interaction. Applications can be designed in a plug-and-play manner like assembling bricks without expert animation knowledge. Quantitatively, we show that MotionBricks produces state-of-the-art motion quality on open-source and proprietary datasets of various scales, while also achieving a real-time throughput of 15,000 FPS with 2ms latency. We demonstrate the flexibility and robustness of MotionBricks in a complete production-level animation demo, covering navigation and object-scene interaction across various styles with a unified model. To showcase our framework's application beyond animation, we deploy MotionBricks on the Unitree G1 humanoid robot to demonstrate its flexibility and generalization for real-time robotic control.
