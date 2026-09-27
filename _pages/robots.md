---
layout: page
title: Robots
permalink: /robots/
tags: robots
---
<div class="col-12">
{% assign cnt = 0 %}
{% for robot_kv in site.data.robots %}
  {% assign robot = robot_kv[1] %}
  {% assign cnt = cnt | modulo:4 %}

  {% if cnt == 0 %}
    <div class="clearfix"></div>
  {% endif %}

  {% assign cnt = cnt | plus:1 %}

  <div class="col-2 authornames">
    <img src="{{ '/images/robots/' | append: robot.image | relative_url }}" alt="{{ robot.name | escape }}" loading="lazy" class="robotimages img-responsive" />
    <p>{{ robot.name }}</p>
    <p class="authortitle">{{ robot.note }}</p>
    <p>&nbsp;</p>
  </div>

{% endfor %}
</div>
