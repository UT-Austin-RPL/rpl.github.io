---
layout: publication
title: "Neural Task Graphs: Generalizing to Unseen Tasks from a Single Video Demonstration"
authors: "De-An Huang*, Suraj Nair*, Danfei Xu*, Yuke Zhu, Animesh Garg, Li Fei-Fei, Silvio Savarese, Juan Carlos Niebles"
pub_info_name: "IEEE Conference on Computer Vision and Pattern Recognition (CVPR)"
pub_info_date: June 2019
pub_info_highlight: Oral Presentation
excerpt: text text text
images:
  thumb: huang-cvpr19-neural.png
  main: huang-cvpr19-neural.png
paper_link: "papers/huang-cvpr19-neural.pdf"
video_link: "https://www.youtube.com/watch?v=Rwog52mbMCI&feature=youtu.be"
note: "* indicates equal contribution"
---
Our goal is to generate a policy to complete an unseen task given just a single video demonstration of the task in a given domain. We hypothesize that to successfully generalize to unseen complex tasks from a single video demonstration, it is necessary to explicitly incorporate the compositional structure of the tasks into the model. To this end, we propose Neural Task Graph (NTG) Networks, which use conjugate task graph as the intermediate representation to modularize both the video demonstration and the derived policy. We empirically show NTG achieves inter-task generalization on two complex tasks: Block Stacking in BulletPhysics and Object Collection in AI2-THOR. NTG improves data efficiency with visual input as well as achieve strong generalization without the need for dense hierarchical supervision. We further show that similar performance trends hold when applied to real-world data. We show that NTG can effectively predict task structure on the JIGSAWS surgical dataset and generalize to unseen tasks.
