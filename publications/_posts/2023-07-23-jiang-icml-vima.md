---
layout: publication
title: "VIMA: General Robot Manipulation with Multimodal Prompts"
authors: "Yunfan Jiang, Agrim Gupta*, Zichen Zhang*, Guanzhi Wang*, Yongqiang Dou, Yanjun Chen, Li Fei-Fei, Anima Anandkumar, Yuke Zhu&dagger;, Linxi Fan&dagger;"
pub_info_name: "International Conference on Machine Learning (ICML)"
pub_info_date: July 2023
excerpt: text text text
images:
  thumb: jiang-icml23-vima.png
  main: jiang-icml23-vima.png
paper_link: "https://arxiv.org/abs/2210.03094"
webpage_link: "https://vimalabs.github.io/"
code_link: "https://github.com/vimalabs/VIMA"
---
Prompt-based learning has emerged as a successful paradigm in natural language processing, where a single general-purpose language model can be instructed to perform any task specified by input prompts. Yet task specification in robotics comes in various forms, such as imitating one-shot demonstrations, following language instructions, and reaching visual goals. They are often considered different tasks and tackled by specialized models. This work shows that we can express a wide spectrum of robot manipulation tasks with multimodal prompts, interleaving textual and visual tokens. We design a transformer-based generalist robot agent, VIMA, that processes these prompts and outputs motor actions autoregressively. To train and evaluate VIMA, we develop a new simulation benchmark with thousands of procedurally-generated tabletop tasks with multimodal prompts, 600K+ expert trajectories for imitation learning, and four levels of evaluation protocol for systematic generalization. VIMA achieves strong scalability in both model capacity and data size. It outperforms prior SOTA methods in the hardest zero-shot generalization setting by up to 2.9× task success rate given the same training data. With 10× less training data, VIMA still performs 2.7× better than the top competing approach.	
