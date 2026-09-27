---
layout: publication
title: "DiscoBox: Weakly Supervised Instance Segmentation and Semantic Correspondence from Box Supervision"
authors: "Shiyi Lan, Zhiding Yu, Christopher Choy, Subhashree Radhakrishnan, Guilin Liu, Yuke Zhu, Larry S. Davis, Anima Anandkumar"
pub_info_name: "International Conference on Computer Vision (ICCV)"
pub_info_date: October 2021
excerpt: text text text
images:
  thumb: lan-iccv21-discobox.png
  main: lan-iccv21-discobox.png
paper_link: "https://arxiv.org/abs/2105.06464"
code_link: "https://github.com/NVlabs/DiscoBox"
---
We introduce DiscoBox, a novel framework that jointly learns instance segmentation and semantic correspondence using bounding box supervision. Specifically, we propose a self-ensembling framework where instance segmentation and semantic correspondence are jointly guided by a structured teacher in addition to the bounding box supervision. The teacher is a structured energy model incorporating a pairwise potential and a cross-image potential to model the pairwise pixel relationships both within and across the boxes. Minimizing the teacher energy simultaneously yields refined object masks and dense correspondences between intra-class objects, which are taken as pseudo-labels to supervise the task network and provide positive/negative correspondence pairs for dense constrastive learning. We show a symbiotic relationship where the two tasks mutually benefit from each other. Our best model achieves 37.9% AP on COCO instance segmentation, surpassing prior weakly supervised methods and is competitive to supervised methods. We also obtain state of the art weakly supervised results on PASCAL VOC12 and PF-PASCAL with real-time inference.