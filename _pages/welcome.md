---
title: "Minh Lab - Welcome"
layout: homelay
excerpt: "Minh Lab at Illinois Tech."
sitemap: false
permalink: /
---

We are computational scientists who develop and apply methods to characterize interactions between small molecules and biological macromolecules. These methods are helpful for structure-based drug design.

Much, but not all, of our effort is focused on implicit ligand theory (ILT), a theoretical framework for binding free energies which David [derived in 2012](http://dx.doi.org/10.1063/1.4751284). Most binding free energy calculations involve computationally expensive molecular simulations of flexible binding partners. David showed that, in theory, equally good results may be achieved by computing free energies between flexible ligands and multiple rigid receptor configurations.

Our group has made a number of contributions to science.

{% assign number_printed = 0 %}
{% for publi in site.data.publist_highlights %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if publi.highlight == 1 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6">
 <div class="well clearfix">
  <a href="{{ publi.link.url }}">
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubs/{{ publi.image }}" alt="{{ publi.link.display }}" class="img-responsive" width="100%" style="float:center align:center" />
  </a>
  <p>{{ publi.description }}</p>
  {% if publi.news1 %}<p><span> See article in {{ publi.news1 }}</span>{% if publi.news2 %}<span> and {{ publi.news2 }}</span>{% endif %}.</p>
  {% endif %}
 </div>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endif %}
{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

For other work, see our [complete list of publications](/publications).

Our research has been supported by

<div class="row">
<div class="col-sm-4" align="center">
<a href="http://www.nih.gov/"><img alt="National Institutes of Health" src="{{ site.url }}{{ site.baseurl }}/images/logos/nih_minimal.png" style="height:100px"></a>
</div>
<div class="col-sm-4" align="center">
<a href="http://www.nsf.gov/"><img alt="National Science Foundation" src="{{ site.url }}{{ site.baseurl }}/images/logos/nsf.png" style="height:100px"></a>
</div>
<div class="col-sm-4" align="center">
<div class="center">
Robert E. Frey
</div>
</div>
</div>

<!-- <div markdown="0" id="carousel" class="carousel slide" data-ride="carousel" data-interval="5000" data-pause="hover" >
    <!- Menu ->
    <ol class="carousel-indicators">
        <li data-target="#carousel" data-slide-to="0" class="active"></li>
        <li data-target="#carousel" data-slide-to="1"></li>
        <li data-target="#carousel" data-slide-to="2"></li>
        <li data-target="#carousel" data-slide-to="3"></li>
        <li data-target="#carousel" data-slide-to="4"></li>
        <li data-target="#carousel" data-slide-to="5"></li>
        <li data-target="#carousel" data-slide-to="6"></li>
    </ol>

    <!- Items ->
    <div class="carousel-inner" markdown="0">

        <div class="item active">
            <img src="{{ site.url }}{{ site.baseurl }}/images/slider7001400/SaphireSTM2.jpg" alt="Slide 1" />
        </div>
        <div class="item">
            <img src="{{ site.url }}{{ site.baseurl }}/images/slider7001400/STS.jpg" alt="Slide 2" />
        </div>
        <div class="item">
            <img src="{{ site.url }}{{ site.baseurl }}/images/slider7001400/cake_web.jpg" alt="Slide 3" />
        </div>
        <div class="item">
            <img src="{{ site.url }}{{ site.baseurl }}/images/slider7001400/logos.jpg" alt="Slide 4" />
        </div>
        <div class="item">
            <img src="{{ site.url }}{{ site.baseurl }}/images/slider7001400/NoiseCover2.jpg" alt="Slide 5" />
        </div>
        <div class="item">
            <img src="{{ site.url }}{{ site.baseurl }}/images/slider7001400/SmartTipSide.jpg" alt="Slide 6" />
        </div>       
         <div class="item">
            <img src="{{ site.url }}{{ site.baseurl }}/images/slider7001400/lab.jpg" alt="Slide 7" />
        </div>
    </div>
  <a class="left carousel-control" href="#carousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

-->

<!--
<figure class="fourth">
  <img src="{{ site.url }}{{ site.baseurl }}/images/logos/Logo_Leiden.jpg" style="width: 210px">
  <img src="{{ site.url }}{{ site.baseurl }}/images/logos/Logo_Nanofront.jpg" style="width: 110px">
  <img src="{{ site.url }}{{ site.baseurl }}/images/logos/Logo_NWO.jpg" style="width: 120px">
  <img src="{{ site.url }}{{ site.baseurl }}/images/logos/Logo_ERC.jpg" style="width: 110px">
</figure>
-->
