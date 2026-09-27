---
layout: page
title: Publications
permalink: /publications/
tags: publications
---

{% include search.html %}
<!-- Page Content -->
<div class="container">

  <p>For the up-to-date publication list, please visit the <a href="https://scholar.google.com/citations?hl=en&user=mWGyYMsAAAAJ&view_op=list_works">Google Scholar</a> page.</p>
  
  <p><div class="pub-note">* Equal contribution.&nbsp;&nbsp;&dagger; Equal advising.</div></p>
  
  {% assign publications_sorted = site.categories.publications | sort: 'date' | reverse %}
  {% if publications_sorted.size > 0 %}
    {% assign first_publication_year = publications_sorted.first.date | date: '%Y' %}
  {% else %}
    {% assign first_publication_year = 'None' %}
  {% endif %}
  
  {% assign first_publication_year = first_publication_year | plus: 0 %}
  {% assign cutoff_year = first_publication_year | minus: 5 %}
  {% assign cutoff_year = cutoff_year | append: '' %}


  {% assign if_passed = 0 %}
  {% assign before_written = 0 %}
  {% capture written_year %}'None'{% endcapture %}

  {% for publication in publications_sorted %}
    {% capture year %}{{ publication.date | date: '%Y' }}{% endcapture %}
      {% if year == cutoff_year %}
        {% assign if_passed = 1 %}
      {% endif %}
      {% if year != written_year %}
        {% if if_passed == 0 %}
          {% include _publication_list_year.html %}
        {% else %}
          {% if before_written == 0 %}
            {% include _publication_list_year_prev.html cutoff_year=cutoff_year %}
            {% assign before_written = 1 %}
          {% endif %}
        {% endif %}
      {% endif %}
      {% capture written_year %}{{ year }}{% endcapture %}
      {% if year > cutoff_year %}
        {% include _publication_list_entry.html %}
      {% endif %}
  {% endfor %}

  <div id="HideShow" style="display:none">
  {% for publication in publications_sorted %}
      {% capture year %}{{ publication.date | date: '%Y' }}{% endcapture %}
      {% if year <= cutoff_year %}
        {% include _publication_list_entry.html %}
      {% endif %}
  {% endfor %}
  </div>

</div>
<!-- /.container -->
