---
output:
  html_document: default
  pdf_document: default
---



---
title: 'RNAheteroplasmy'
aas-journal: Astrophysical Journal <- The name of the AAS journal.
date: "17 June 2021"
bibliography: paper.bib
authors:
- affiliation: 1, 2, 3
  name: Gabriele Lubatti^[first author]
- affiliation: 1,2, 3
  name: Antonio Scialdone^[corresponding author]
affiliations:
- index: 1
  name: Institute of Epigenetics and Stem Cells, Helmholtz Zentrum München, Munich, Germany
- index: 2
  name: Institute of Functional Epigenetics, Helmholtz Zentrum München, Neuherberg, Germany
- index: 3
  name: Institute of Computational Biology, Helmholtz Zentrum München, Neuherberg, Germany
tags:
- R
- bioinformatics
- single cell RNA seq
- heteroplasmy
aas-doi: 10.3847/xxxxx 
---

# Summary
To produce the energy they need, eukaryotic cells rely on mitochondria, organelles that are equipped with their own DNA (mtDNA). Each cell includes multiple mtDNA copies that are not perfectly identical but have differences in their sequence; such sequence variability is called heteroplasmy.
mtDNA heteroplasmy has been associated with diseases [@Nissanka2020], can affect cellular fitness and have an impact on cellular competition [@Lima2020].
Several protocols of single-cell sequencing provides the data to estimate mtDNA heteroplasmy, including single-cell DNA-seq, RNA-seq and ATAC-seq, in addition to dedicated protocols like MAESTER [@Miller2021].
Here, we provide Rnaheteroplasmy, a user-friendly software written in R that allows the estimation as well as downstream statistical analysis on the heteroplasmy calculated from single-cell datasets. Rnaheteroplasmy starts from FASTQ files, computes the frequency of each allele and starting from these, estimate the mtDNA heteroplasmy at each covered position for each cell.  
The parameters of the analysis (e.g., the filtering on the mtDNA positions to consider based on read quality and coverage) are easily tuneable, in a very user-friendly way. Moreover, statistical tests are available to explore the investigate the dependency of the mtDNA heteroplasmy on continuous or discrete covariates associate to cells (e.g., culture conditions, differentiation states, etc), as extensively shown in the detailed tutorials we include. 


# Statement of need
Despite mtDNA heteroplasmy has important consequences on human health [@Stewart2015], and plays a role during development [@Floros2019], there are still many open questions on how heteroplasmy affects cell's ability to function and regarding the mechanisms cells use to keep it under control. 
With the increasing availability of single-cell data, many questions can begin to be answered, but it is fundamental to have efficient and streamlined computational tools enabling researchers to estimate and analyse mtDNA heteroplasmy. 
Our package Rnaheteroplasmy, unlike others ([@Huang2021],[@Prashant2020]), covers all steps of the analysis, from the processing of raw FASTQ files to the estimation of the heteroplasmy and downstream statistical analysis, with user-friendly functions that are highly customizable. 

# Key functions

*The two main functions of `RNAheteroplasmy` are:*

*1. `get_raw_counts_allele`: a parallelized function that rely on Rsamtools and generates the raw counts matrix starting from FASTQ files, with cells as rows and bases with the four possible allele as columns.
2. `get_heteroplasmy`: Starting from the ouput of `get_raw_counts_allele`, it computes the matrix with heteroplasmy values (defined as 1 minus the frequency of the most common allele) and the matrix with allele frequencies values,for all the cells and bases that pass a filtering step procedure.

Among the down stream analysis implemented in the package there are: 
1. Several statistical tests (e.g. Wilcoxon rank-sum test) for identification of most different bases according to heteroplasmy, between group of cells or along a trajectory of cells (i.e., cells sorted according to a diffusion pseudo time).
2. Plotting functions for the visualization of heteroplamsy and corresponding allele frequencies values among cells
3. Hierarchical clustering on cells based on a distance matrix defined from angular distance of allele frequencies, that could be relevant for lineage tracing analysis [@LUDWIG20191325]

The package has been used in a recently published paper [@Lima2020], where we revealed that cells with higher levels of heteroplasmy are eliminated by cell competition in mouse embryos and are characterized by specific gene expression patterns.






# References

