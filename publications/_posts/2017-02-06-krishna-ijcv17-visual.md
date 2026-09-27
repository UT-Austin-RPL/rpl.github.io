---
layout: publication
title: "Visual Genome: Connecting Language and Vision Using Crowdsourced Dense Image Annotations"
authors: "Ranjay Krishna, Yuke Zhu, Oliver Groth, Justin Johnson, Kenji Hata, Joshua Kravitz, Stephanie Chen, Yannis Kalanditis, Li-Jia Li, David A. Shamma, Michael Bernstein, Li Fei-Fei"
pub_info_name: "International Journal of Computer Vision (IJCV)"
pub_info_date: February 2017
excerpt: text text text
images:
  thumb: krishna-ijcv17-visual.png
  main: krishna-ijcv17-visual.png
paper_link: "papers/krishna-ijcv17-visual.pdf"
webpage_link: "http://visualgenome.org/"
---
Despite progress in perceptual tasks such as image classification, computers still perform poorly on cognitive tasks such as image description and question answering. Cognition is core to tasks that involve not just recognizing, but reasoning about our visual world. However, models used to tackle the rich content in images for cognitive tasks are still being trained using the same datasets designed for perceptual tasks. To achieve success at cognitive tasks, models need to understand the interactions and relationships between objects in an image. When asked “What vehicle is the person riding?”, computers will need to identify the objects in an image as well as the relationships riding(man, carriage) and pulling(horse, carriage) to answer correctly that “the person is riding a horse-drawn carriage.” In this paper, we present the Visual Genome dataset to enable the modeling of such relationships. We collect dense annotations of objects, attributes, and relationships within each image to learn these models. Specifically, our dataset contains over 108K images where each image has an average of 35 objects, 26 attributes, and 21 pairwise relationships between objects. We canonicalize the objects, attributes, relationships, and noun phrases in region descriptions and questions answer pairs to WordNet synsets. Together, these annotations represent the densest and largest dataset of image descriptions, objects, attributes, relationships, and question answer pairs.