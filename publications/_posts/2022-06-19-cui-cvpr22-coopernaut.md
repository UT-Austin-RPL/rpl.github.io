---
layout: publication
title: "COOPERNAUT: End-to-End Driving with Cooperative Perception for Networked Vehicles"
authors: "Jiaxun Cui*, Hang Qiu*, Dian Chen, Peter Stone, Yuke Zhu"
pub_info_name: "IEEE Conference on Computer Vision and Pattern Recognition (CVPR)"
pub_info_date: June 2022
excerpt: text text text
images:
  thumb: cui-cvpr22-coopernaut.jpg
  main: cui-cvpr22-coopernaut.jpg
paper_link: "https://arxiv.org/abs/2205.02222"
webpage_link: "https://ut-austin-rpl.github.io/Coopernaut/"
code_link: "https://github.com/UT-Austin-RPL/Coopernaut"

---

Optical sensors and learning algorithms for autonomous vehicles have dramatically advanced in the past few years. Nonetheless, the reliability of today's autonomous vehicles is hindered by the limited line-of-sight sensing capability and the brittleness of data-driven methods in handling extreme situations. With recent developments of telecommunication technologies, cooperative perception with vehicle-to-vehicle communications has become a promising paradigm to enhance autonomous driving in dangerous or emergency situations. We introduce COOPERNAUT, an end-to-end learning model that uses cross-vehicle perception for vision-based cooperative driving. Our model encodes LiDAR information into compact point-based representations that can be transmitted as messages between vehicles via realistic wireless channels. To evaluate our model, we develop AutoCastSim, a network-augmented driving simulation framework with example accident-prone scenarios. Our experiments on AutoCastSim suggest that our cooperative perception driving models lead to a 40\% improvement in average success rate over egocentric driving models in these challenging driving situations and a 5 times smaller bandwidth requirement than prior work V2VNet. COOPERNAUT and AUTOCASTSIM are available at https://ut-austin-rpl.github.io/Coopernaut/.
