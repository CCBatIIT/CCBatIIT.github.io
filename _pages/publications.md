---
title: "Minh Lab - Publications"
layout: gridlay
excerpt: "Minh Lab -- Publications."
sitemap: false
permalink: /publications/
---

Jump to [Minh lab publications](#minh-lab-publications) or [David's prior work](#davids-prior-work). Also see David's profile on [ResearcherID](http://www.researcherid.com/rid/A-4655-2009) or [ORCID](https://orcid.org/0000-0002-4802-2618).

## Minh lab publications

{% for publi in site.data.publist %}

  {% if publi.year > 2013 %}

  {{ publi.title }} <br />
  <em>{{ publi.authors }} </em><br /><a href="{{ publi.link.url }}">{{ publi.link.display }}</a>

  {% endif %}

{% endfor %}

## David's prior work

{% for publi in site.data.publist %}

  {% if publi.year <= 2013 %}

  {{ publi.title }} <br />
  <em>{{ publi.authors }} </em><br /><a href="{{ publi.link.url }}">{{ publi.link.display }}</a>

  {% endif %}

{% endfor %}
