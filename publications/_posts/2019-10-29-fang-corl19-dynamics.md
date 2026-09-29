---
layout: publication
title: "Dynamics Learning with Cascaded Variational Inference for Multi-Step Manipulation"
authors: "Kuan Fang, Yuke Zhu, Animesh Garg, Silvio Savarese, Li Fei-Fei"
pub_info_name: "Conference on Robot Learning (CoRL)"
pub_info_date: October 2019
pub_info_highlight: Oral Presentation
excerpt: text text text
images:
  thumb: fang-corl19-dynamics.png
  main: fang-corl19-dynamics.png
paper_link: "papers/fang-corl19-dynamics.pdf"
webpage_link: "https://github.com/StanfordVL/cavin"
code_link: "https://github.com/StanfordVL/cavin"
blog_link: "http://ai.stanford.edu/blog/cavin/"
---
The fundamental challenge of planning for multi-step manipulation is to find effective and plausible action sequences that lead to the task goal. We present Cascaded Variational Inference (CAVIN) Planner, a model-based method that hierarchically generates plans by sampling from latent spaces. To facilitate planning over long time horizons, our method learns latent representations that decouple the prediction of high-level effects from the generation of low-level motions through cascaded variational inference. This enables us to model dynamics at two different levels of temporal resolutions for hierarchical planning. We evaluate our approach in three multi-step robotic manipulation tasks in cluttered tabletop environments given high-dimensional observations. Empirical results demonstrate that the proposed method outperforms state-of-the-art model-based methods by strategically interacting with multiple objects.