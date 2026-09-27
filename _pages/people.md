---
layout: page
title: People
permalink: /people/
tags: people
---

<div class="col-12">

{% capture person_title %}'None'{% endcapture %}
{% assign cnt = 0 %}
{% for person_kv in site.data.people %}

  {% assign person = person_kv[1] %}
  {% assign cnt = cnt | plus:1 %}
  {% assign cnt = cnt | modulo:4 %}

  {% if cnt == 0 %}
    <div class="clearfix"></div>
  {% endif %}

  {% capture title %}{{ person.category }}{% endcapture %}
  {% if person_title != title %}
    <div class="clearfix"></div>
    {% include _people_title.html %}
    {% assign cnt = 0 %}
  {% endif %}
  {% capture person_title %}{{ title }}{% endcapture %}

  <div class="col-2 authornames">
    {% if person.category == 'Lab Alumni' %}
      <a href="{{ person.link }}" style="text-align:left">
        <p>{{ person.name }}</p>
        <p class="authortitle">{{ person.title }} ({{ person.year }})</p>
        <p>&nbsp;</p>
      </a>
    {% else %}
      <a href="{{ person.link }}">
        <img src="{{ '/images/members/' | append: person.image | relative_url }}" alt="{{ person.name | escape }}" loading="lazy" class="authorimages img-responsive" />
        <p>{{ person.name }}</p>
        <p class="authortitle">{{ person.title }}</p>
        <p class="authortitle">{{ person.email }}</p>
        <p>&nbsp;</p>
      </a>
    {% endif %}
  </div>
  
{% endfor %}
</div>

<!-- ----------------->
