---
title: "CCB Lab - Publications"
layout: gridlay
excerpt: "CCB Lab -- Publications."
sitemap: false
permalink: /publications/
---

Jump to [CCB Lab publications](#minh-lab-publications) or [David's prior work](#davids-prior-work). Also see David's profile on [Google Scholar](https://scholar.google.com/citations?user=kbqLbQsAAAAJ), [ORCID](https://orcid.org/0000-0002-4802-2618), or [ResearcherID](http://www.researcherid.com/rid/A-4655-2009).

## CCB Lab publications

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
