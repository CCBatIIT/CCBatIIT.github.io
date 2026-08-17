---
title: "CCB Lab Archive"
layout: homelay
excerpt: "Archive of the Computational Chemical Biology Lab at Illinois Tech through August 2026."
sitemap: false
permalink: /
---

<img src="{{ site.url }}{{ site.baseurl }}/images/logos/ccb_only.jpg" alt="Computational Chemical Biology Lab" width="100%" style="float:center align:center">

<h1>Computational Chemical Biology Lab Archive</h1>

The Computational Chemical Biology Lab was an Illinois Tech research group led by David Minh. Its researchers focused on chemical biology&mdash;the interactions between small molecules and biological macromolecules&mdash;and developed and applied methods relevant to structure-based drug design. This site preserves the group&rsquo;s work through August 2026; David Minh is no longer affiliated with Illinois Tech.

One of the group&rsquo;s major efforts was to understand structural mechanisms of activation and to calculate the strength of signaling through seven transmembrane receptors (7TMRs), traditionally known as G protein coupled receptors (GPCRs), and other signaling proteins. The group developed a method that combines physics-based molecular simulation with machine learning to [identify intracellular pocket conformations and to compute signaling efficacy with an error of less than 20%](https://doi.org/10.1021/acs.jcim.4c01437). Based on this technology, some group members started a company, [Biagon Inc](https://biagoninc.com/).

Another major research area was [implicit ligand theory (ILT)](research/#implicit-ligand-theory), a theoretical framework for binding free energies which David [derived in 2012](http://dx.doi.org/10.1063/1.4751284). Most binding free energy calculations involve computationally expensive molecular simulations of flexible binding partners. David showed that, in theory, equally good results may be achieved by computing free energies between flexible ligands and multiple rigid receptor configurations.

Some of the group&rsquo;s achievements are described below.

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
  {% if publi.dates1 %}<p><span> See article in {{ publi.dates1 }}</span>{% if publi.dates2 %}<span> and {{ publi.dates2 }}</span>{% endif %}.</p>
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

This archive contains information about the group&rsquo;s [research projects](research), a [complete list of publications](publications) from [the lab](publications/#minh-lab-publications) and [David&rsquo;s prior work](publications/#davids-prior-work), links to [source code and data](resources/#source-code-and-data), a scientific [blog](blog), the group&rsquo;s [members and alumni](people), [photos](photos), and its [former Illinois Tech location](visit).

The group&rsquo;s research was supported by

<div class="row">
<div class="col-sm-4" align="center">
<a href="http://www.nih.gov/"><img alt="National Institutes of Health" src="{{ site.url }}{{ site.baseurl }}/images/logos/nih_minimal.png" style="height:100px"></a>
</div>
<div class="col-sm-4" align="center">
<a href="http://www.nsf.gov/"><img alt="National Science Foundation" src="{{ site.url }}{{ site.baseurl }}/images/logos/nsf.png" style="height:100px"></a>
</div>
<div class="col-sm-4" align="center">
<div class="center">
Robert E. Frey, Jr.
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
