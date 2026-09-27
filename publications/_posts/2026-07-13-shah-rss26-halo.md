---
layout: publication
title: "Memory Retrieval in Visuomotor Policies for Long-Horizon Robot Control"
authors: "Rutav Shah, Yisu Li*, Femi Bello*, Yuke Zhu, Roberto Martín-Martín"
pub_info_name: "Robotics: Science and Systems (RSS)"
pub_info_date: July 2026
excerpt: text text text
images:
  thumb: shah-rss26-halo.png
  main: shah-rss26-halo.png
paper_link: "https://arxiv.org/abs/2606.25136v1"
webpage_link: "https://robin-lab.cs.utexas.edu/HALO/"
code_link: "https://github.com/UT-Austin-RobIn/HALO"
---
General-purpose robots operating in partially observable environments, such as homes, require memory to support autonomy. They must recall diverse information from the past, such as where objects were placed, which tasks a human partner has completed, and when an appliance was turned on. Achieving this versatility requires a general memory retrieval mechanism. Transformer architectures that use attention over long contexts for memory retrieval provide a promising approach, as they learn retrieval from data rather than relying on task-specific or hand-designed rules. However, directly incorporating them into imitation learning from offline data introduces two key challenges: (1) the policy may learn spurious correlations between past information and predicted actions, and (2) errors accumulate in memory due to prediction inaccuracies and their compounding interactions with the environment, causing model drift and cascading failures. To address both challenges, we introduce HALO, a visuomotor policy with an attention-based memory retrieval mechanism for long-horizon control. First, to suppress spurious correlations, HALO distills vision-language model (VLM) priors into the policy. It generates memory-dependent question--answer pairs from demonstration trajectories and trains jointly with a video question--answering objective, steering retrieval toward task-relevant information. Second, to reduce the impact of accumulated errors in memory during closed-loop control, HALO uses sparse attention that restricts retrieval to only the most relevant parts of the history. Together, these components enable more reliable long-horizon control by guiding the policy to retrieve task-relevant information from up to eight minutes of past experience. Project website: https://robin-lab.cs.utexas.edu/HALO/
