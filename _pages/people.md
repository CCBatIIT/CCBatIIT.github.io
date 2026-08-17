---
title: "CCB Lab - People"
layout: gridlay
excerpt: "CCB Lab -- People."
sitemap: false
permalink: /people/
---

Jump to [Members at the time of archiving](#members-at-the-time-of-archiving), [Alumni](#alumni), or the [archive status](#archive-status).

# Members at the time of archiving

The following roster reflects the site&rsquo;s last update in August 2026.

{% assign number_printed = 0 %}
{% for member in site.data.team_members %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/head/{{ member.photo }}" alt="{{ member.name | escape }}" loading="lazy" class="img-responsive" width="25%" style="float: left" />
  <h4>{{ member.name }}</h4>
  <i>{{ member.info }} <br> {{ member.duration }}</i>
  {% if member.name contains "David Minh" %}
  [Curriculum Vitae]({{ site.baseurl }}/downloads/DavidMinh_CV.pdf) / 
  [Meet The Prof](https://meettheprof.com/view/professors/entry/david-minh/) /
  <a href="https://www.linkedin.com/in/davidminh/" target="_blank" rel="noopener" title="LinkedIn" aria-label="LinkedIn"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="16" height="16" fill="currentColor" style="vertical-align:text-bottom" aria-hidden="true" focusable="false"><path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.225 0z"/></svg> LinkedIn</a>
  {% endif %}
  <ul style="overflow: hidden">

  {% if member.number_educ == 1 %}
  <li> {{ member.education1 }} </li>
  {% endif %}

  {% if member.number_educ == 2 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  {% endif %}

  {% if member.number_educ == 3 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  {% endif %}

  {% if member.number_educ == 4 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  {% endif %}

  {% if member.number_educ == 5 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  <li> {{ member.education5 }} </li>
  {% endif %}

  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

# Alumni

{% assign number_printed = 0 %}
{% for member in site.data.alumni %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/head/{{ member.photo }}" alt="{{ member.name | escape }}" loading="lazy" class="img-responsive" width="25%" style="float: left" />
  <h4>{{ member.name }}</h4>
  <i>{{ member.info }} <br> {{ member.duration }}</i>
  {% if member.subsequently %}
  <i>Subsequently: {{ member.subsequently }}</i>
  {% endif %}
  <ul style="overflow: hidden">

  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

## Research project students
(involved for one or more semesters)

{% for member in site.data.alumni_project %}
{{ member.name }}
{% endfor %}

# Archive status

This is an archive of the Computational Chemical Biology Lab at Illinois Tech. David Minh is no longer affiliated with Illinois Tech, and this site is not accepting applications or inquiries on behalf of the former lab.
