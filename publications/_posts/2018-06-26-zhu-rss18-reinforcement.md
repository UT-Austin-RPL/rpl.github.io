---
layout: publication
title: "Reinforcement and Imitation Learning for Diverse Visuomotor Skills"
authors: "Yuke Zhu, Ziyu Wang, Josh Merel, Andrei Rusu, Tom Erez, Serkan Cabi, Saran Tunyasuvunakool, János Kramár, Raia Hadsell, Nando de Freitas, Nicolas Heess"
pub_info_name: "Robotics: Science and Systems (RSS)"
pub_info_date: June 2018
excerpt: text text text
images:
  thumb: zhu-rss18-reinforcement.png
  main: zhu-rss18-reinforcement.png
paper_link: "papers/zhu-rss18-reinforcement.pdf"
video_link: "https://www.youtube.com/watch?v=EDl8SQUNjj0&feature=youtu.be"
---
We propose a model-free deep reinforcement learning method that leverages a small amount of demonstration data to assist a reinforcement learning agent. We apply this approach to robotic manipulation tasks and train end-to-end visuomotor policies that map directly from RGB camera inputs to joint velocities. We demonstrate that our approach can solve a wide variety of visuomotor tasks, for which engineering a scripted controller would be laborious. In experiments, our reinforcement and imitation agent achieves significantly better performances than agents trained with reinforcement learning or imitation learning alone. We also illustrate that these policies, trained with large visual and dynamics variations, can achieve preliminary successes in zero-shot sim2real transfer.