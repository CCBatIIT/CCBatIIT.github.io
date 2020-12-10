---
title: "Minh Lab - People"
layout: gridlay
excerpt: "Minh Lab -- People."
sitemap: false
permalink: /people/
---

Jump to [Members](#members), [Alumni](#alumni), or [Joining](#joining).

# Members

<!-- **We are looking for new PhD students, Postdocs, and Master students to join the team** [(see openings)]({{ site.url }}{{ site.baseurl }}/vacancies) **!** -->

<!--
Jump to [staff](#staff), [master and bachelor students](#master-and-bachelor-students), [alumni](#alumni), [administrative support](#administrative-support), [lab visitors](#lab-visitors). -->

{% assign number_printed = 0 %}
{% for member in site.data.team_members %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/head/{{ member.photo }}" class="img-responsive" width="25%" style="float: left" />
  <h4>{{ member.name }}</h4>
  <i>{{ member.info }} <br> {{ member.duration }}</i>
  {% if member.name contains "David D. L. Minh" %}
  [Curriculum Vitae]({{ site.baseurl }}/downloads/DavidMinh_CV.pdf)
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
  <img src="{{ site.url }}{{ site.baseurl }}/images/head/{{ member.photo }}" class="img-responsive" width="25%" style="float: left" />
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

# Joining

**Note: We currently don't have funding for additional PhD and postdoc positions. We can only welcome you if you have a fellowship.**

We are always on the lookout for qualified and motivated team members. Interested candidates for all positions should submit a cover letter and curriculum vitae to Dr. David Minh (david dot minh at iit dot edu).  Postdoctoral candidates should also submit contact information for 2-3 references.

* Postdoctoral positions are periodically available. Salary will be commensurate to experience. We are interested in supporting fellowship applications for competitive scholars.

* Current M.S. and Ph.D. students at Illinois Tech will be considered.

* Prospective M.S. and Ph.D. students should express interest in our group in their applications and also contact Dr. Minh.

* Current undergraduate students are accepted from all degree programs at the Illinois Institute of Technology. Additionally, many undergraduates have visited for summer internships.

* High school students may be considered for summer internships.
