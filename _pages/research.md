---
title: "CCB Lab - Research"
layout: gridlay
excerpt: "CCB Lab -- Research."
sitemap: false
permalink: /research/
---

Most of our active research projects are in these areas: [signaling protein activation](#signaling-protein-activation), [fast binding free energy calculations](#fast-binding-free-energy-calculations), [enhanced sampling methods](#enhanced-sampling-methods), [data analysis methods](#data-analysis-methods), and [modeling metabolic enzymes from pathogenic bacteria](#modeling-metabolic-enzymes-from-pathogenic-bacteria).

<p align="center">
![Ensembles](../images/banners/BPMF_ensembles.png)
</p>

<!-- References are from Zotero, Create Bibliography from Citation, ACS Style [Bracketed] -->

# Signaling protein activation

Compared to the effort that has been committed to predicting the affinity between small molecules and biological macromolecules, much less research has been performed to understand how ligands affect protein function. Ligands that bind to enzyme catalytic sites are likely to be competitive inhibitors. On the other hand, ligands that bind to signaling proteins including cell surface receptors and nuclear hormone receptors can have a wide range of pharamcological behavior. We have developed a method to identify structural mechanisms of activation and predict the signaling efficacy of ligands that bind to the μ opioid receptor along both G protein and β-arrestin pathways [1]. The μ opioid receptor is a prototypical seven transmembrane receptor (7TMR), the largest class of cell surface receptors. We are working on testing the method on other 7TMRs, signaling proteins, and signaling pathways.

[1] Cooper, D. A.; DePaolo-Boisvert, J.; Nicholson, S. A.; Gad, B.; Minh, D. D. L. Intracellular Pocket Conformations Determine Signaling Efficacy through the μ Opioid Receptor. J. Chem. Inf. Model. 2025, 65 (3), 1465–1475. https://doi.org/10.1021/acs.jcim.4c01437.

# Fast binding free energy calculations

Fast and accurate prediction of the binding affinity between a small molecule and biological macromolecule is a holy grail of computational chemistry. Success in this endeavor would have a large impact on drug design and chemical biology. We derive new theories that enable computational shortcuts to rigorous binding free energy calculations. We also develop and test computer software that implements the new theory.

## Implicit ligand theory

We have developed a rigorous theoretical framework that shows the connection between fast but inaccurate molecular docking methods and accurate but slow alchemical pathway techniques [1, 3, 8]. In principle, one can “tune a knob” that adjusts the balance between accuracy and speed required for a particular application. We developed a computer program to estimate the binding potential of mean force (BPMF), the free energy between a flexible ligand and rigid receptor [7]. We have also shown that based on implicit ligand theory, the fast Fourier transform can be used to estimate protein-ligand binding free energies [4]. We are presently able to recapitulate more expensive calculations on a simple system (T4 lysozyme) with a correlation coefficient around 0.9 [2]. In the Drug Design Data Resource (D3R) Grand Challenge 3, our workflow led to some of the submissions with the highest correlation to experimental for vascular endothelial growth factor receptor 2 [6]. Finally, we have identified a statistical metric to evaluate clustering methods used select snapshots for molecular docking or BPMF calculations [5].

[1] Minh, D. D. L. Implicit Ligand Theory: Rigorous Binding Free Energies and Thermodynamic Expectations from Molecular Docking. J. Chem. Phys. 2012, 137 (10), 104106. https://doi.org/10.1063/1.4751284.

[2] Xie, B.; Nguyen, T. H.; Minh, D. D. L. Absolute Binding Free Energies between T4 Lysozyme and 141 Small Molecules: Calculations Based on Multiple Rigid Receptor Configurations. J. Chem. Theory Comput. 2017, 13 (6), 2930–2944. https://doi.org/10.1021/acs.jctc.6b01183.

[3] Nguyen, T. H.; Minh, D. D. L. Implicit Ligand Theory for Relative Binding Free Energies. J. Chem. Phys. 2018, 148 (10), 104114. https://doi.org/10.1063/1.5017136.

[4] Nguyen, T. H.; Zhou, H.-X.; Minh, D. D. L. Using the Fast Fourier Transform in Binding Free Energy Calculations. J. Comput. Chem. 2018, 39 (11), 621–636. https://doi.org/10.1002/jcc.25139.

[5] Xie, B.; Clark, J. D.; Minh, D. D. L. Efficiency of Stratification for Ensemble Docking Using Reduced Ensembles. J. Chem. Inf. Model. 2018, 58 (9), 1915–1925. https://doi.org/10.1021/acs.jcim.8b00314.

[6] Xie, B.; Minh, D. D. L. Alchemical Grid Dock (AlGDock) Calculations in the D3R Grand Challenge 3. J. Comput.-Aided Mol. Des. 2019, 33 (1), 61–69. https://doi.org/10.1007/s10822-018-0143-9.

[7] Minh, D. D. L. Alchemical Grid Dock (AlGDock): Binding Free Energy Calculations between Flexible Ligands and Rigid Receptors. J. Comput. Chem. 2020, 41 (7), 715–730. https://doi.org/10.1002/jcc.26036.

[8] Nguyen, T. H.; Minh, D. D. L. Implicit Ligand Theory for Relative Binding Free Energies: II. An Estimator Based on Control Variates. Journal of Physics Communications 2020, 4 (11), 115010. https://doi.org/10.1088/2399-6528/abcbac.

## End point methods

We have also been developing end-point binding free energy methods, which are based on molecular simulations of bound complexes (and sometimes unbound species). We have provided a derivation of the popular Molecular Mechanics/Poisson-Boltzmann Surface Area method and showed how entropy may be estimated based on a cumulant expansion [1]. We have also evaluated the effects of harmonic restraints in end-point binding free energy calculations [2]. To overcome issues of configuration space overlap, we have trained deep neural networks to learn mappings from one ensemble to another [3].

[1] Menzer, W.; Li, C.; Sun, W.; Xie, B.; Minh, D. D. L. Simple Entropy Terms for End-Point Binding Free Energy Calculations. J. Chem. Theory Comput. 2018, 14, 6035–6049. https://doi.org/10.1021/acs.jctc.8b00418.

[2] Menzer, W. M.; Xie, B.; Minh, D. D. L. On Restraints in End-Point Protein-Ligand Binding Free Energy Calculations. J. Comput. Chem. 2020, 41 (6), 573–586. https://doi.org/10.1002/jcc.26119.

[3] Willow, S. Y.; Kang, L.; Minh, D. D. L. Learned Mappings for Targeted Free Energy Perturbation between Peptide Conformations. Journal of Chemical Physics 2023, 159, 124104. https://doi.org/10.1063/5.0164662.

# Enhanced sampling methods

Markov chain Monte Carlo methods have been widely applied to otherwise intractable problems in statistical mechanics and statistical inference, such as sampling biological macromolecules on rugged energy landscapes. One key limitation of the methods, however, is that a Markov chain often becomes trapped in a local probability maximum; it does not quickly ‘mix’ across the support of the distribution. We have contributed to several simulation techniques that can improve this mixing. We showed, for the first time, that constrained dynamics can be used as one of several Monte Carlo moves that explores the entirety of configuration space in accordance with the Boltzmann distribution [5]. Subsequently, we extended the constrained dynamics software to not only perform torsional and fully flexible dynamics, but include “ball” and “cylinder joints” [6].

In addition to developing new methods, we have provided an important insight into the popular replica exchange method. We have shown that if there are a sufficient number of states in a replica exchange simulation, the precise definition of states does not affect sampling efficiency [4]. Previously, many scientists thought that the number of states in replica exchange should be carefully optimized.

Previously, David also participated in developing nonequilibrium candidate Monte Carlo, which uses a configuration obtained from a nonequilibrium driven process as a Monte Carlo trial move [1]. He also contributed to developing two other techniques that treat a probability density of interest as a sum of simpler density functions [2, 3].

[1] Nilmeier, J. P.; Crooks, G. E.; Minh, D. D. L.; Chodera, J. D. PNAS Plus: Nonequilibrium Candidate Monte Carlo Is an Efficient Tool for Equilibrium Simulation. Proc. Natl. Acad. Sci. USA 2011, 108 (45), E1009–E1018. https://doi.org/10.1073/pnas.1106094108.

[2] Minh, D. L.; Minh, D. D. L.; Nguyen, A. L. Regenerative Markov Chain Monte Carlo for Any Distribution. Commun. Stat. Simul. Comput. 2012, 41 (9), 1745–1760. https://doi.org/10.1080/03610918.2011.615433.

[3] Minh, D. D. L.; Minh, D. L.; Nguyen, A. L. Layer Sampling. Commun. Stat. Simul. Comput. 2016, 45 (1), 73–100. https://doi.org/10.1080/03610918.2013.854907.

[4] Nguyen, T. H.; Minh, D. D. L. Intermediate Thermodynamic States Contribute Equally to Free Energy Convergence: A Demonstration with Replica Exchange. J. Chem. Theory Comput. 2016, 12 (5), 2154–2161. https://doi.org/10.1021/acs.jctc.6b00060.

[5] Spiridon, L.; Minh, D. D. L. Hamiltonian Monte Carlo with Constrained Molecular Dynamics as Gibbs Sampling. J. Chem. Theory Comput. 2017, 13 (10), 4649–4659. https://doi.org/10.1021/acs.jctc.7b00570.

[6] Spiridon, L.; Sulea, T. A.; Minh, D. D. L.; Petrescu, A. J. Robosample: Rigid-Body Molecular Simulation Based on Robot Mechanics. BBA - General Subjects 2020, 1864, 129616. https://doi.org/10.1016/j.bbagen.2020.129616.

# Data analysis methods

In collaboration with Lulu Kang and John Chodera, we have developed chemometric methods for analyzing data related to binding, including Bayesian methods to analyze X-ray solution scattering [1] and isothermal titration calorimetry [2]. We have shown that the latter yields better uncertainity quantification than error propagation [4]. Moreover, we used Bayes factors, which quantify how much the data favor one mathematical model over another, to identify the most suitable model to fit isothermal titration calorimetry data in which an enantiomeric mixture of compounds was mixed with a protein [3].

We have shown how to incorporate control data in fits to concentration response curves, and that this yields more accurate and precise estimates of parameters [5].

[1] Minh, D. D. L.; Makowski, L. Wide-Angle X-Ray Solution Scattering for Protein-Ligand Binding: Multivariate Curve Resolution with Bayesian Confidence Intervals. Biophys. J. 2013, 104 (4), 873–883. https://doi.org/10.1016/j.bpj.2012.12.019.

[2] Nguyen, T. H.; Rustenburg, A. S.; Krimmer, S. G.; Zhang, H.; Clark, J. D.; Novick, P. A.; Branson, K.; Pande, V. S.; Chodera, J. D.; Minh, D. D. L. Bayesian Analysis of Isothermal Titration Calorimetry for Binding Thermodynamics. PLoS ONE 2018, 13 (9), e0203224. https://doi.org/10.1371/journal.pone.0203224.

[3] Nguyen, T. H.; La, V. N. T.; Burke, K.; Minh, D. D. L. Bayesian Regression and Model Selection for Isothermal Titration Calorimetry with Enantiomeric Mixtures. PLoS ONE 2022, 17 (9), e0273656. https://doi.org/10.1371/journal.pone.0273656.

[4] La, V. N. T.; Minh, D. D. L. Bayesian Regression Quantifies Uncertainty of Binding Parameters from Isothermal Titration Calorimetry More Accurately Than Error Propagation. Int. J. Mol. Sci. 2023, 24 (20), 15074. https://doi.org/10.3390/ijms242015074.

[5] La, V. N. T.; Nicholson, S.; Haneef, A.; Kang, L.; Minh, D. D. L. Inclusion of Control Data in Fits to Concentration–Response Curves Improves Estimates of Half-Maximal Concentrations. J. Med. Chem. 2023, 66 (18), 12751–12761. https://doi.org/10.1021/acs.jmedchem.3c00107.

# Modeling metabolic enzymes from pathogenic bacteria

We are working with [Oscar Juarez from the biology department](https://sites.google.com/iit.edu/juarez-research-lab), performing molecular modeling to characterize metabolic enzymes in pathogenic bacteria. Most of our collaborative work has been on the ion pump NQR. In Tuz et. al. [1], we performed molecular docking of ubiquinone to the entire complex and predicted the catalytic binding site. The predicted site was corroborated by site-directed mutagenesis and modified biochemical activity. We then performed molecular docking to mutants of subunit D and obtained results consistent measured activity [2]. We have also performed homology modeling and molecular dynamics simulations to help identify a critical pair of residues which are swapped between the homologs from V. Cholera and P. Aeruginosa [4]. When the residues were mutated in the V. cholera homolog, it exhibited the predicted resistance to the natural antibiotic HQNO. We have also performed QM/MM calculations to identify factors that contribute to the redox state of FMN [5] and molecular docking of riboflavin to NQR [6].

Our groups have also collaborated on the flavin transferase ApbE, which is involved in the biosynthesis of NQR [3]. We performed pKa calculations to corroborate the proposed enzymatic mechanism of the enzyme. 

We are funded by a NIH grant that includes the discovery of NQR inhibitors through novel methods for binding free energy calculations.

[1] Tuz, K.; Li, C.; Fang, X.; Raba, D. A.; Liang, P.; Minh, D. D. L.; Juárez, O. Identification of the Catalytic Ubiquinone-Binding Site of Vibrio Cholerae Sodium-Dependent NADH Dehydrogenase: A NOVEL UBIQUINONE-BINDING MOTIF. J. Biol. Chem. 2017, 292 (7), 3039–3048. https://doi.org/10.1074/jbc.M116.770982.

[2] Raba, D. A.; Rosas-Lemus, M.; Menzer, W. M.; Li, C.; Fang, X.; Liang, P.; Tuz, K.; Minh, D. D. L.; Juárez, O. Characterization of the Pseudomonas Aeruginosa NQR Complex, a Bacterial Proton Pump with Roles in Autopoisoning Resistance. J. Biol. Chem. 2018, 293, 15664–15677. https://doi.org/10.1074/jbc.RA118.003194.

[3] Fang, X.; Osipiuk, J.; Chakravarthy, S.; Yuan, M.; Menzer, W.; Nissen, D.; Liang, P.; Raba, D. A.; Tuz, K.; Howard, A. J.; Joachimiak, A.; Minh, D. D. L.; Juárez, O. Conserved Residue His-257 of Vibrio Cholerae Flavin Transferase ApbE Plays a Critical Role in Substrate Binding and Catalysis. J. Biol. Chem. 2019, 294, 13800–13810. https://doi.org/10.1074/jbc.RA119.008261.

[4] Raba, D. A.; Yuan, M.; Fang, X.; Menzer, W. M.; Xie, B.; Liang, P.; Tuz, K.; Minh, D. D. L.; Juárez, O. Role of Subunit D in Ubiquinone-Binding Site of Vibrio Cholerae NQR: Pocket Flexibility and Inhibitor Resistance. ACS Omega 2019, 4 (21), 19324–19331. https://doi.org/10.1021/acsomega.9b02707.

[5] Willow, S. Y.; Yuan, M.; Juárez, O.; Minh, D. D. L. Electrostatics and Water Occlusion Regulate Covalently‐bound Flavin Mononucleotide Cofactors of Vibrio Cholerae Respiratory Complex NQR. Proteins: Struct., Funct., Bioinf. 2021, 89, prot.26158. https://doi.org/10.1002/prot.26158.

[6] Tuz, K.; Yuan, M.; Hu, Y.; Do, T. T. T.; Willow, S. Y.; DePaolo-Boisvert, J. A.; Fuller, J. R.; Minh, D. D. L.; Juárez, O. Identification of the Riboflavin Cofactor-Binding Site in the Vibrio Cholerae Ion-Pumping NQR Complex: A Novel Structural Motif in Redox Enzymes. J. Biol. Chem. 2022, 298 (8), 102182. https://doi.org/10.1016/j.jbc.2022.102182.

<!-- Replace '](http://dx.doi.org/' with '](http://dx.doi.org/' -->
<!-- Replace ',” ' with ',” []' -->
