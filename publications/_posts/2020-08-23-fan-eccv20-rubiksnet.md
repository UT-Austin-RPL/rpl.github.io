---
layout: publication
title: "RubiksNet: Learnable 3D-Shift for Efficient Video Action Recognition"
authors: "Linxi Fan*, Shyamal Buch*, Guanhzi Wang, Ryan Cao, Yuke Zhu, Juan Carlos Niebles, Li Fei-Fei"
pub_info_name: "European Conference on Computer Vision (ECCV)"
pub_info_date: August 2020
excerpt: text text text
images:
  thumb: fan-eccv20-rubiksnet.png
  main: fan-eccv20-rubiksnet.png
paper_link: "https://stanfordvl.github.io/rubiksnet-site/assets/eccv20.pdf"
webpage_link: "https://stanfordvl.github.io/rubiksnet-site/"
note: "* indicates equal contribution"
---
Video action recognition is a complex task dependent on modeling spatial and temporal context. Standard approaches rely on 2D or 3D convolutions to process such context, resulting in expensive operations with millions of parameters. Recent efficient architectures leverage a channel-wise shift-based primitive as a replacement for temporal convolutions, but remain bottlenecked by spatial convolution operations to maintain strong accuracy and a fixed-shift scheme. Naively extending such developments to a 3D setting is a difficult, intractable goal. To this end, we introduce RubiksNet, a new efficient architecture for video action recognition which is based on a proposed learnable 3D spatiotemporal shift operation instead. We analyze the suitability of our new primitive for video action recognition and explore several novel variations of our approach to enable stronger representational flexibility while maintaining an efficient design. We benchmark our approach on several standard video recognition datasets, and observe that our method achieves comparable or better accuracy than prior work on efficient video action recognition at a fraction of the performance cost, with 2.9-5.9x fewer parameters and 2.1-3.7x fewer FLOPs. We also perform a series of controlled ablation studies to verify our significant boost in the efficiency-accuracy tradeoff curve is rooted in the core contributions of our RubiksNet architecture. 