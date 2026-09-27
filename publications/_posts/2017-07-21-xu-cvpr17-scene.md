---
layout: publication
title: "Scene Graph Generation by Iterative Message Passing"
authors: "Danfei Xu, Yuke Zhu, Christopher B. Choy, Li Fei-Fei"
pub_info_name: "IEEE Conference on Computer Vision and Pattern Recognition (CVPR)"
pub_info_date: July 2017
excerpt: text text text
images:
  thumb: xu-cvpr17-scene.png
  main: xu-cvpr17-scene.png
paper_link: "papers/xu-cvpr17-scene.pdf"
webpage_link: "https://cs.stanford.edu/~danfei/scene-graph/"
code_link: "https://github.com/danfeiX/scene-graph-TF-release"
---
Understanding a visual scene goes beyond recognizing individual objects in isolation. Relationships between objects also constitute rich semantic information about the scene. In this work, we explicitly model the objects and their relationships using scene graphs, a visually-grounded graphical structure of an image. We propose a novel end-to-end model that generates such structured scene representation from an input image. The model solves the scene graph inference problem using standard RNNs and learns to iteratively improves its predictions via message passing. Our joint inference model can take advantage of contextual cues to make better predictions on objects and their relationships. The experiments show that our model significantly outperforms previous methods on generating scene graphs using Visual Genome dataset and inferring support relations with NYU Depth v2 dataset.