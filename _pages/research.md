---
layout: page
title: Research
permalink: /research/
tags: research
---

[Robot Learning Reading Group](https://ut-robotlearning.github.io)

[RPL YouTube Channel](https://www.youtube.com/channel/UCH3TGGcTeLMYBhNfuaglwHw/videos)

----------

#### Talks and Tutorials
You can learn more about our recent research from our talks and tutorials.

- **Building Generalist Humanoid Robots.** ICRA 2026 Keynote, Vienna, June 2026. ([website](https://2026.ieee-icra.org/program/keynote-sessions/), [video](https://www.youtube.com/watch?v=cNU_8t7i8Mk), [slides](../talks/building_generalist_humanoid_robots.pdf))

- **Toward Generalist Humanoid Robots: Recent Advances, Opportunities, and Challenges.** Carnegie Mellon University RI Seminar, October 2025. ([website](https://www.ri.cmu.edu/event/toward-generalist-humanoid-robots-recent-advances-opportunities-and-challenges/), [video](https://www.youtube.com/watch?v=49LnlfM9DBU), [slides](../talks/towards_generalist_humanoid_robots.pdf))

- **Data Pyramid and Data Flywheel for Robotic Foundation Models.** Princeton Symposium on Safe Deployment of Foundation Models in Robotics, November 2024. ([website](https://ai.princeton.edu/princeton-symposium-safe-deployment-foundation-models-robotics), [video](https://ai.princeton.edu/events/robotics-symposium-videos), [slides](../talks/data_pyramid_and_data_flywheel_for_robotic_foundation_models.pdf))

- **Pathway to Generalist Robots: Scaling Law, Data Flywheel, and Humanlike Embodiment.** CoRL 2023 Early Career Keynote, November 2023. ([website](https://www.corl2023.org/speakers), [video](https://youtu.be/hFPZSBnJeLc), [slides](../talks/pathway_to_generalist_robots.pdf))

- **The Data Pyramid for Building Generalist Agents.** MIT Embodied Intelligence Seminar, December 2022. ([website](https://ei.csail.mit.edu/seminars.html), [video](https://www.youtube.com/watch?v=G3HLQLsW0_o), [slides](../talks/data_pyramid_for_building_generalist_agents.pdf))

- **Objects, Skills, and the Quest for Compositional Robot Autonomy.** Stanford Robotics Seminar, February 2022. ([website](https://stanfordasl.github.io/robotics_seminar/), [video](https://www.youtube.com/watch?v=xwviwNTIR-c), [slides](../talks/2022_02_18_stanford_yukezhu_rpl.pdf))

<!-- - **Visual Affordance Learning for Robot Manipulation.** Toyota Research Institute, August 2021. ([slides](../talks/visual_affordance_learning_for_robot_manipulation.pdf)) -->

<!-- - **Visual Imitation Learning: Generalization, Perceptual Grounding, and Abstraction.** RSS'20 Workshop on Advances & Challenges in  Imitation Learning for Robotics, July 2020. ([workshop](https://sites.google.com/utexas.edu/rss-2020-imitation-learning), [slides](../talks/visual_imitation_learning_rss2020.pdf)) -->

- **Building General-Purpose Robot Autonomy: A Progressive Roadmap.** Samsung Forum, June 2020. ([video](https://www.youtube.com/watch?v=vxdxIBXC9x4), [slides](../talks/building_general_purpose_robot_autonomy.pdf))

<!-- - **Learning Keypoint Representations for Robot Manipulation.** IROS'19 Workshop on Learning Representations for Planning and Control, November 2019. ([workshop](https://sites.google.com/view/iros-2019-workshop-lrpc/home), [slides](../talks/keypoint_representations_for_interaction.pdf)) -->

<!-- - **Learning How-To Knowledge from the Web.** IROS'19 Workshop on the Applications of Knowledge Representation and Semantic Technologies in Robotics, November 2019. ([workshop](http://wiki.aiisc.ai/index.php/Answer-Robotic-SemanticWeb-IoT-Workshop-IROS2019), [slides](../talks/learning_how_to_knowledge_from_the_web.pdf)) -->

- **Closing the Perception-Action Loop: Towards General-Purpose Robot Autonomy.** Stanford Ph.D. Defense, August 2019. ([dissertation](../publications/papers/zhu-phd-dissertation.pdf),  [slides](../talks/closing_perception_action_loop.pdf))

----------

#### Open-Source Software & Data
We devote effort to making scientific research more reproducible and making knowledge accessible to a broader population. Open-sourcing research software and datasets is one of our key practices. You can find open-source code and data from our research on the [Publications](../publications) page or on our [GitHub](https://github.com/UT-Austin-RPL). We highlight some public resources below:

- [**SONIC**](https://nvlabs.github.io/GEAR-SONIC/): unified platform for developing and deploying advanced humanoid controllers

- [**GR00T N1**](https://developer.nvidia.com/isaac/gr00t): the world's first open humanoid robot foundation model

- [**RoboCasa**](https://robocasa.ai/): large-scale simulation of everyday tasks for generalist robots

- [**MineDojo**](https://github.com/MineDojo/MineDojo): building open-ended embodied agents with Internet-scale knowledge

- [**Deoxys**](https://github.com/UT-Austin-RPL/deoxys_control): modular, real-time controller library for Franka Emika Panda arms

- [**RoboMimic**](https://arise-initiative.github.io/robomimic-web/): open-source framework for robot learning from demonstration

- [**RoboSuite**](https://robosuite.ai): modular simulation framework and benchmark for robot learning

- [**RoboTurk**](https://roboturk.stanford.edu/): large-scale crowdsourced teleoperation dataset for robotic imitation learning

- [**SURREAL**](https://github.com/SurrealAI): distributed reinforcement learning framework and robot manipulation benchmark

- [**AI2-THOR**](https://ai2thor.allenai.org/): open-source interactive environments for embodied AI

<!-- - [**Visual Genome**](https://visualgenome.org/): visual knowledge base that connects structured image concepts to language -->

----------

#### Selected Media Coverage

{% for publication in site.categories.media %}
  {% include _media_list_entry.html %}
{% endfor %}
