---
layout: publication
title: "Scaling Short-Term Memory of Visuomotor Policies for Long-Horizon Tasks"
authors: "Rutav Shah, Rajat Kumar Jenamani, Xiaohan Zhang, Lingfeng Sun, Roberto Martín-Martín, Yuke Zhu, Deva Ramanan, Karl Schmeckpeper"
pub_info_name: "RSS 2026 Workshop on Planning and Control with Imperfect Sensors and Perception"
pub_info_date: July 2026
excerpt: text text text
images:
  thumb: shah-wpcis26-prism.png
  main: shah-wpcis26-prism.png
paper_link: "https://arxiv.org/abs/2606.16178"
webpage_link: "https://shahrutav.github.io/short-term-memory/"
code_link: "https://github.com/ShahRutav/ReMemBench"
---
Many robotic tasks require short-term memory, whether it's retrieving an object that's no longer visible or turning off an appliance after a set period. Yet, most visuomotor policies trained via imitation learning rely only on immediate sensory input without using past experiences to guide decisions. We present PRISM, a transformer-based architecture for visuomotor policies to effectively use short-term memory via two key components: (i) gated attention, which filters retrieved information to suppress irrelevant details, improving performance by reducing the spurious correlations between the history and current action prediction, (ii) a hierarchical architecture that first compresses local information into compact tokens and then integrates them to capture temporally extended dependencies, improving its compute and memory footprint. Together, these mechanisms enable us to scale short-term memory in visuomotor policies for up to two minutes. To systematically evaluate memory in visuomotor control, we introduce ReMemBench—a benchmark of eight diverse household manipulation tasks spanning four categories of short-term memory—designed to foster general memory mechanisms rather than siloed, task-specific solutions. PRISM consistently outperforms prior works, including recurrent architectures, transformers, and their variants—achieving an absolute improvement of 5%–12% over the strongest baseline. On the RoboCasa and LIBERO benchmarks, it achieves absolute improvements of 11%–15% over its no-memory variant and fine-tuned Vision-Language-Action baselines such as GR00T-N1-3B and OpenVLA, despite not leveraging any large-scale pretraining. Together, PRISM and ReMemBench establish a foundation for developing and evaluating short-term memory-augmented visuomotor policies that scale to long-horizon tasks.
