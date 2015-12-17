---
title: "Methods"
order: 3
---

### Marker Panel Construction

A "Marker Panel” on the [One Codex platform](https://app.onecodex.com) consists of a set of target sequences that are compared against an input dataset of short reads, long reads, assemblies, or complete genomes. The target sequences in a marker panel by the aggregate coverage, depth, and nucleotide identity of all input sequences aligned against the target sequence. Target sequences can also be organized into aggregate groups, in which case the total number of targets detected and the average depth of sequencing is presented to the user. An [example Marker Panel result page](https://app.onecodex.com/markerpanel/public/3edda39206444222) is shown in [Figure 1](#figure-1).

The *B. anthracis* marker panel was assembled to detect the presence of *B. anthracis* in three complementary ways:

1.  A set of 31bp k-mers were identified by [Petit, et al., (2015)](https://read-lab-confederation.github.io/nyc-subway-anthrax-study/)  as being specific to the main chromosome of *B. anthracis*, and not shared by any other Bacilli. A non-overlapping set of 1,605 of these target sequences was used for the “Core Genome” panel shown at the bottom of [Figure 1](#figure-1).
2.  The complete set of overlapping 50bp sequences from the pXO1 and pXO2 plasmids were compared against the One Codex Database (containing roughly 40,000 complete microbial genomes), and all markers specific to *B. anthracis* were used as plasmid-specific target sequences (pXO1 – n=115; pXO2 – n=112), displayed in the middle two panels in [Figure 1](#figure-1).
3.  A single SNP was identified by [Easterday, et al., (2005)](http://jcm.asm.org/content/43/4/1995) as being ubiquitous and specific to *B. anthracis*. A 31bp marker spanning that SNP was used as a target sequence and is displayed in the top panel of [Figure 1](#figure-1).


### *B. anthracis* Marker Panel on One Codex

The *B. anthracis* detection panel can be used on the One Codex platform ([link](https://app.onecodex.com)) by uploading FASTQ datasets via the GUI interface or the command line client ([details here](https://docs.onecodex.com)). An example of the results page is shown in [Figure 1](#figure-1). Please contact the authors for further guidance on the use of this tool on One Codex.


### Marker Panel Execution

The *B. anthracis* detection panel is executed on the One Codex platform as part of an automated analysis. Each sequence in an input dataset is compared against every target sequence with a minimal exact match length of 31bp and a tolerance of up to 3 SNPs. For those markers 31bp in length, an exact match is required for detection. The platform records the number of input sequences matching each target, and presents the user with a single display that summarizes the abundance of these 1,833 markers across four categories (plcR, pXO1, pXO2, and the main chromosome). An example of this display is shown in [Figure 1](#figure-1).

### Inclusivity & Exclusivity Testing

The accuracy of the *B. anthracis* marker panel was assessed by analyzing a diverse collection of *B. anthracis* isolates available from public repositories as short-read shotgun sequencing datasets. A minimum threshold of 3X average sequencing depth was used to ensure sufficient genome coverage, and datasets were all downsampled to <=20X genome coverage to control for the contribution of low-frequency sequencing error. For each of those input datasets, we quantified the number of markers detected from each category. Those results were compared against those from a collection of non-*B. anthracis* isolates from the genus Bacillus that were also available from public repositories. The number of datasets analyzed from each species is shown in [Table 1](#table-1), and the complete list of datasets is available as [Table S1](https://github.com/refgenomics/science-wip-analyses/blob/gh-pages/data/accessions.tsv). The results of this analysis are shown in [Figure 2](#figure-2).


### Limit of Detection Analysis

We executed the detection panel Using *in silico* mixed samples with target organisms present at a range of abundances. The background for all of the *in silico* spike-in samples were 5 million reads from a soil sample ([SRR351473](http://www.ncbi.nlm.nih.gov/sra/?term=SRR351473)) that was sequenced as part of the Great Prairie Soil Metagenome project ([PRJNA50473](http://www.ncbi.nlm.nih.gov/bioproject/PRJNA50473)). Six WGS datasets were spiked in at a range of abundances (n=6) from 0.1X to 2X sequencing depth. A second series of samples was created that also included 150K reads from a near neighbor (*B. thuringensis*), for roughly 10X sequencing depth. For each of these datasets, the proportion of markers detected was calculated and plotted as a function of the spike-in level and near neighbor presence [Figure 3](#figure-3).
