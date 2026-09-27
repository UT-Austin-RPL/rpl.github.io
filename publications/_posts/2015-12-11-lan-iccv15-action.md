---
layout: publication
title: "Action Recognition by Hierarchical Mid-level Action Elements"
authors: "Tian Lan*, Yuke Zhu*, Amir Roshan Zamir, Silvio Savarese"
pub_info_name: "International Conference on Computer Vision (ICCV)"
pub_info_date: December 2015
excerpt: text text text
images:
  thumb: lan-iccv15-action.png
  main: lan-iccv15-action.png
paper_link: "papers/lan-iccv15-action.pdf"
webpage_link: "https://ai.stanford.edu/~yukez/iccv2015.html"
note: "* indicates equal contribution"
---
Realistic videos of human actions exhibit rich spatiotemporal structures at multiple levels of granularity: an action can always be decomposed into multiple finer-grained elements in both space and time. To capture this intuition, we propose to represent videos by a hierarchy of mid-level action elements (MAEs), where each MAE corresponds to an action-related spatiotemporal segment in the video. We introduce an unsupervised method to generate this representation from videos. Our method is capable of distinguishing action-related segments from background segments and representing actions at multiple spatiotemporal resolutions. Given a set of spatiotemporal segments generated from the training data, we introduce a discriminative clustering algorithm that automatically discovers MAEs at multiple levels of granularity. We develop structured models that capture a rich set of spatial, temporal and hierarchical relations among the segments, where the action label and multiple levels of MAE labels are jointly inferred. The proposed model achieves state-of-the-art performance in multiple action recognition benchmarks. Moreover, we demonstrate the effectiveness of our model in real-world applications such as action recognition in large-scale untrimmed videos and action parsing.