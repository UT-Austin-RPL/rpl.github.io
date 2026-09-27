---
layout: publication
title: "MimicGen: A Data Generation System for Scalable Robot Learning using Human Demonstrations"
authors: "Ajay Mandlekar, Soroush Nasiriany*, Bowen Wen*, Iretiayo Akinola, Yashraj Narang, Linxi Fan, Yuke Zhu, Dieter Fox"
pub_info_name: "Conference on Robot Learning (CoRL)"
pub_info_date: November 2023
excerpt: text text text
images:
  thumb: mandlekar-corl23-mimicgen.png
  main: mandlekar-corl23-mimicgen.png
paper_link: "https://arxiv.org/abs/2310.17596"
webpage_link: "https://mimicgen.github.io/"
code_link: "https://github.com/NVlabs/mimicgen_environments"
---
Imitation learning from a large set of human demonstrations has proved to be an effective paradigm for building capable robot agents. However, the demonstrations can be extremely costly and time-consuming to collect. We introduce MimicGen, a system for automatically synthesizing large-scale, rich datasets from only a small number of human demonstrations by adapting them to new contexts. We use MimicGen to generate over 50K demonstrations across 18 tasks with diverse scene configurations, object instances, and robot arms from just ∼200 human demonstrations. We show that robot agents can be effectively trained on this generated dataset by imitation learning to achieve strong performance in long-horizon and high-precision tasks, such as multi-part assembly and coffee preparation, across broad initial state distributions. We further demonstrate that the effectiveness and utility of MimicGen data compare favorably to collecting additional human demonstrations, making it a powerful and economical approach towards scaling up robot learning. Datasets, simulation environments, videos, and more at https://mimicgen.github.io.