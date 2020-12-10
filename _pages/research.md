---
title: "Minh Lab - Research"
layout: gridlay
excerpt: "Minh Lab -- Research."
sitemap: false
permalink: /research/
---

Most of our active research projects are in these areas: [fast binding free energy calculations](#fast-binding-free-energy-calculations), [enhanced sampling methods](#enhanced-sampling-methods), [Bayesian analysis of binding experiments](#bayesian-analysis-of-binding-experiments), and [modeling metabolic enzymes from pathogenic bacteria](#modeling-metabolic-enzymes-from-pathogenic-bacteria).

<p align="center">
![Ensembles](../images/banners/BPMF_ensembles.png)
</p>

# Fast binding free energy calculations

Fast and accurate prediction of the binding affinity between a small molecule and biological macromolecule is a holy grail of computational chemistry. Success in this endeavor would have a large impact on drug design and chemical biology. We derive new theories that enable computational shortcuts to rigorous binding free energy calculations. We also develop and test computer software that implements the new theory.

## Implicit ligand theory

We have developed a rigorous theoretical framework that shows the connection between fast but inaccurate molecular docking methods and accurate but slow alchemical pathway techniques [1]–[3]. In principle, one can “tune a knob” that adjusts the balance between accuracy and speed required for a particular application. My research group is actively developing a computer program to estimate the binding potential of mean force (BPMF), the free energy between a flexible ligand and rigid receptor [4], [5]. We have also shown that based on implicit ligand theory, the fast Fourier transform can be used to estimate protein-ligand binding free energies [6]. We are presently able to recapitulate more expensive calculations on a simple system (T4 lysozyme) with a correlation coefficient around 0.9 [7]. In the Drug Design Data Resource (D3R) Grand Challenge 3, our workflow led to some of the submissions with the highest correlation to experimental for vascular endothelial growth factor receptor 2 [8]. Finally, we have identified a statistical metric to evaluate clustering methods used select snapshots for molecular docking or BPMF calculations.

## End point methods

We have also been developing end-point binding free energy methods, which are based on molecular simulations of bound complexes (and sometimes unbound species). We have provided a derivation of the popular Molecular Mechanics/Poisson-Boltzmann Surface Area method and showed how entropy may be estimated based on a cumulant expansion [9]. We have also evaluated the effects of harmonic restraints in end-point binding free energy calculations [10].

## Related references

[1]	D. D. L. Minh, “Implicit ligand theory: Rigorous binding free energies and thermodynamic expectations from molecular docking,” [Journal of Chemical Physics, vol. 137, no. 10, p. 104106, 2012](http://dx.doi.org/10.1063/1.4751284).

[2]	T. H. Nguyen and D. D. L. Minh, “Implicit ligand theory for relative binding free energies,” [Journal of Chemical Physics, vol. 148, no. 10, p. 104114, 2018](http://dx.doi.org/10.1063/1.5017136).

[3]	T. H. Nguyen and D. D. L. Minh, “Implicit ligand theory for relative binding free energies: II. An estimator based on control variates,” [J. Phys. Commun., vol. 4, no. 11, p. 115010, Nov. 2020](http://dx.doi.org/10.1088/2399-6528/abcbac).

[4]	D. D. L. Minh, “Alchemical Grid Dock (AlGDock): Binding Free Energy Calculations between Flexible Ligands and Rigid Receptors,” [Journal of Computational Chemistry, vol. 41, no. 7, pp. 715–730, 2020](http://dx.doi.org/10.1002/jcc.26036).

[5]	D. D. L. Minh, “Power transformations improve interpolation of grids for molecular mechanics interaction energies,” [Journal of Computational Chemistry, vol. 39, no. 19, pp. 1200–1207, Jul. 2018](http://dx.doi.org/10.1002/jcc.25180).

[6]	T. H. Nguyen, H.-X. Zhou, and D. D. L. Minh, “Using the Fast Fourier Transform in Binding Free Energy Calculations,” [Journal of Computational Chemistry, vol. 39, pp. 621–636, 2018](http://dx.doi.org/10.1002/jcc.25139).

[7]	B. Xie, T. H. Nguyen, and D. D. L. Minh, “Absolute Binding Free Energies between T4 Lysozyme and 141 Small Molecules: Calculations Based on Multiple Rigid Receptor Configurations,” [Journal of Chemical Theory and Computation, vol. 13, no. 6, pp. 2930–2944, 2017](http://dx.doi.org/10.1021/acs.jctc.6b01183).

[8]	B. Xie and D. D. L. Minh, “Alchemical Grid Dock (AlGDock) calculations in the D3R Grand Challenge 3,” [Journal of Computer-Aided Molecular Design, vol. 33, no. 1, pp. 61–69, 2019](http://dx.doi.org/10.1007/s10822-018-0143-9).

[9]	W. Menzer, C. Li, W. Sun, B. Xie, and D. D. L. Minh, “Simple Entropy Terms for End-Point Binding Free Energy Calculations,” [Journal of Chemical Theory and Computation, vol. 14, pp. 6035–6049, 2018](http://dx.doi.org/10.1021/acs.jctc.8b00418).

[10]	W. M. Menzer, B. Xie, and D. D. L. Minh, “On Restraints in End-Point Protein-Ligand Binding Free Energy Calculations,” [Journal of Computational Chemistry, vol. 41, no. 6, pp. 573–586, 2020](http://dx.doi.org/10.1002/jcc.26119).

# Enhanced sampling methods

Markov chain Monte Carlo methods have been widely applied to otherwise intractable problems in statistical mechanics and statistical inference, such as sampling biological macromolecules on rugged energy landscapes. One key limitation of the methods, however, is that a Markov chain often becomes trapped in a local probability maximum; it does not quickly ‘mix’ across the support of the distribution. We have contributed to several simulation techniques that can improve this mixing. We showed, for the first time, that constrained dynamics can be used as one of several Monte Carlo moves that explores the entirety of configuration space in accordance with the Boltzmann distribution [1]. Subsequently, we extended the constrained dynamics software to not only perform torsional and fully flexible dynamics, but include “ball” and “cylinder joints” [2].

In addition to developing new methods, we have provided an important insight into the popular replica exchange method. We have shown that if there are a sufficient number of states in a replica exchange simulation, the precise definition of states does not affect sampling efficiency [3]. Previously, many scientists thought that the number of states in replica exchange should be carefully optimized.

Previously, David also participated in developing nonequilibrium candidate Monte Carlo, which uses a configuration obtained from a nonequilibrium driven process as a Monte Carlo trial move [4]. He also contributed to developing two other techniques that treat a probability density of interest as a sum of simpler density functions [5], [6].

## Related references

[1]	L. Spiridon and D. D. L. Minh, “Hamiltonian Monte Carlo with Constrained Molecular Dynamics as Gibbs Sampling,” [Journal of Chemical Theory and Computation, vol. 13, no. 10, pp. 4649–4659, 2017](http://dx.doi.org/10.1021/acs.jctc.7b00570).

[2]	L. Spiridon, T. A. Sulea, D. D. L. Minh, and A. J. Petrescu, “Robosample: rigid-body molecular simulation based on robot mechanics,” [BBA - General Subjects, vol. 1864, p. 129616, 2020).

[3]	T. H. Nguyen and D. D. L. Minh, “Intermediate Thermodynamic States Contribute Equally to Free Energy Convergence: A Demonstration with Replica Exchange,” [Journal of Chemical Theory and Computation, vol. 12, no. 5, pp. 2154–2161, 2016](http://dx.doi.org/10.1021/acs.jctc.6b00060).

[4]	J. P. Nilmeier, G. E. Crooks, D. D. L. Minh, and J. D. Chodera, “PNAS Plus: Nonequilibrium candidate Monte Carlo is an efficient tool for equilibrium simulation,” [Proceedings of the National Academy of Sciences of the United States of America, vol. 108, no. 45, pp. E1009–E1018, Nov. 2011](http://dx.doi.org/10.1073/pnas.1106094108).

[5]	D. L. Minh, D. D. L. Minh, and A. L. Nguyen, “Regenerative Markov chain Monte Carlo for any distribution,” [Communications in Statistics - Simulation and Computation, vol. 41, no. 9, pp. 1745–1760, 2012](http://dx.doi.org/10.1080/03610918.2011.615433).

[6]	D. D. L. Minh, D. L. Minh, and A. L. Nguyen, “Layer Sampling,” [Communications in Statistics - Simulation and Computation, vol. 45, no. 1, pp. 73–100, Jan. 2016](http://dx.doi.org/10.1080/03610918.2013.854907).

# Bayesian analysis of binding experiments

Full understanding of binding processes can require integrating large amounts of data collected using multiple analytical instruments and experimental protocols. Existing statistical methods and software do not fully integrate data from multiple sources to produce useful knowledge. In collaboration with [John Chodera of the Memorial Sloan Kettering Cancer Center](https://www.choderalab.org/) and [Lulu Kang from the applied mathematics department](http://math.iit.edu/~lkang2/), we are pioneering use of a new approach (a "Bayesian network") as a general framework for analyzing chemical measurement data from multiple instruments and protocols and for designing new experiments. The framework will be usable for both small laboratory experiments and the massive datasets generated by automated instrumentation. The software (including a straightforward user interface) will be used to teach the underlying principles in related courses, will be made freely available online, along with tutorials and clear documentation.
Our team is developing chemometric methods and software for analyzing data related to binding. We have developed Bayesian methods to analyze X-ray solution scattering [1] and isothermal titration calorimetry [2]. We are working to fuse data from diverse methods, including isothermal titration calorimetry (ITC), surface plasmon resonance (SPR), absorbance, fluorescence, and X-ray solution scattering. Key features of the software include (1) automated parameter determination for physical binding models, (2) uncertainty propagation and quantification for model parameters, (3) automated and principled model selection and hypothesis testing, and (4) Bayesian experimental design to maximize acquisition of new information while minimizing cost. The software will automatically construct Bayesian networks that consider all sources of experimental error (e.g. dispensing, weighing, transfer, and measurement) for any experiment described in a machine-readable standard. It will then perform Bayesian inference to weigh evidence for competing physical models, obtain credible intervals for thermodynamic and kinetic parameters, and propose new experiments. Using this software, robotic experiments, statistical inference, and Bayesian experimental design may be efficiently iterated to reduce model ambiguity and improve parameter precision.

## Related references

[1]	D. D. L. Minh and L. Makowski, “Wide-angle X-ray solution scattering for protein-ligand binding: multivariate curve resolution with bayesian confidence intervals.,” [Biophysical Journal, vol. 104, no. 4, pp. 873–83, Feb. 2013](http://dx.doi.org/10.1016/j.bpj.2012.12.019).

[2]	T. H. Nguyen et al., “Bayesian analysis of isothermal titration calorimetry for binding thermodynamics,” [PloS One, vol. 13, no. 9, p. e0203224, 2018](http://dx.doi.org/10.1371/journal.pone.0203224).

# Modeling metabolic enzymes from pathogenic bacteria

We are working with [Oscar Juarez from the biology department](https://juarezlab.wixsite.com/research), performing molecular modeling to characterize metabolic enzymes in pathogenic bacteria. Most of our collaborative work has been on the ion pump NQR. In Tuz et. al. [1], we performed molecular docking of ubiquinone to the entire complex and predicted the catalytic binding site. The predicted site was corroborated by site-directed mutagenesis and modified biochemical activity. We then performed molecular docking to mutants of subunit D and obtained results consistent measured activity [2]. We have also performed homology modeling and molecular dynamics simulations to help identify a critical pair of residues which are swapped between the homologs from V. Cholera and P. Aeruginosa [3]. When the residues were mutated in the V. cholera homolog, it exhibited the predicted resistance to the natural antibiotic HQNO. Our groups have also collaborated on the flavin transferase ApbE, which is involved in the biosynthesis of NQR [4]. We performed pKa calculations to corroborate the proposed enzymatic mechanism of the enzyme. Our groups are funded by a NIH grant that includes the discovery of succinate dehydrogenase (another metabolic enzyme) inhibitors through novel methods for binding free energy calculations.

## Related references

[1]	K. Tuz et al., “Identification of the Catalytic Ubiquinone-binding Site of Vibrio cholerae Sodium-dependent NADH Dehydrogenase,” [Journal of Biological Chemistry, vol. 292, no. 7, pp. 3039–3048, Feb. 2017](http://dx.doi.org/10.1074/jbc.M116.770982).

[2]	D. A. Raba et al., “Role of subunit D in the ubiquinone binding site of Vibrio cholerae NQR: pocket flexibility and inhibitor resistance,” [ACS Omega, vol. 4, no. 21, pp. 19324–19331, 2019](http://dx.doi.org/10.1021/acsomega.9b02707).

[3]	D. A. Raba et al., “Characterization of the Pseudomonas aeruginosa NQR Complex, a Bacterial Proton Pump with Roles in Autopoisoning Resistance,” [Journal of Biological Chemistry, vol. 293, pp. 15664–15677, 2018](http://dx.doi.org/10.1074/jbc.RA118.003194).

[4]	X. Fang et al., “Conserved residue His-257 of Vibrio cholerae flavin transferase ApbE plays a critical role in substrate binding and catalysis,” [Journal of Biological Chemistry, vol. 294, pp. 13800–13810, 2019](http://dx.doi.org/10.1074/jbc.RA119.008261).

<!-- Replace '](http://dx.doi.org/' with '](http://dx.doi.org/' -->
<!-- Replace ',” ' with ',” []' -->
