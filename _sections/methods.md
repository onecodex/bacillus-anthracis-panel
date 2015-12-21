---
title: "Methods"
order: 3
---

### Marker Panel Construction

A "Marker Panel” on the [One Codex platform](https://app.onecodex.com) consists of a set of target sequences that are compared against an input dataset of short reads, long reads, assemblies, or complete genomes (in either FASTA or FASTQ format). A marker panel summarizes samples by the aggregate coverage, depth, and nucleotide identity of all input sequences aligned against the carefully selected target sequences. These target sequences are grouped for ease of interpretation and presented to the end user with group-level summary statistics. An [example Marker Panel result page](https://app.onecodex.com/markerpanel/public/5a6a90255a354bf5) is shown in [Figure 2](#figure-2).

The *B. anthracis* marker panel was assembled to detect the presence of *B. anthracis* using four specific types of probes:

1.  **plcR SNP**: A single SNP was identified by [Easterday, et al., (2005)](http://jcm.asm.org/content/43/4/1995) as being ubiquitous and specific to *B. anthracis*. A 31bp marker spanning that SNP was used as a target sequence and is displayed in the top panel of [Figure 2](#figure-2).

2.  **Virulence plasmid markers**: The complete set of 50bp sequences from the pXO1 and pXO2 plasmids were compared against the One Codex Database (containing roughly 40,000 complete microbial genomes), and all non-overlapping markers specific to *B. anthracis* were used as plasmid-specific target sequences (pXO1 – _n=115_; pXO2 – _n=112_), displayed in the second and third panels in [Figure 2](#figure-2).

3.  **Core genome SNPs**: A set of 31bp k-mers were identified by [Petit, et al., (2015)](https://read-lab-confederation.github.io/nyc-subway-anthrax-study/)  as being specific to the main chromosome of *B. anthracis*, and not shared by any other _Bacillus_ species. A non-overlapping set of 1,605 of these target sequences was used for the “Core Genome” panel shown in the fourth panel of [Figure 2](#figure-2).

4. **"Near neighbor control markers"**: A final panel presents select highly conserved markers present across _Bacillus_ species. These markers _**do not**_ indicate the presence of _B. anthracis_, but rather serve to estimate the relative depth of sequencing across all _Bacillus_ species present in a sample. The resulting coverage statistics can also be used to distinguish between the genuine but low-level presence of _B. anthracis_ and sequencing error in a deeply sequenced sample.


### *B. anthracis* Marker Panel on One Codex

The *B. anthracis* detection panel can be used on the [One Codex platform](https://app.onecodex.com) by uploading FASTQ datasets via the GUI interface or the command line client ([details here](https://docs.onecodex.com)). An example of the results page is shown in [Figure 2](#figure-2). Please contact the authors for further guidance on the use of this tool on One Codex.


### Marker Panel Execution

The *B. anthracis* detection panel is executed on the One Codex platform as part of an automated analysis. Each sequence in an input dataset is compared against every target sequence with a minimal exact match length of 31bp and a tolerance of up to 3 SNPs. For those markers 31bp in length, an exact match is required for detection. The platform records the number of input sequences matching each target, and presents the user with a single display that summarizes the abundance of these 1,841 markers across four categories (plcR, pXO1/pXO2, the main chromosome, and the cross-_Bacillus_ depth controls). An example of this display is shown in [Figure 2](#figure-2).

### Inclusivity & Exclusivity Testing

The accuracy of the *B. anthracis* marker panel was assessed by analyzing a diverse collection of *B. anthracis* isolates available from public repositories as short-read shotgun sequencing datasets. A minimum threshold of 3X average sequencing depth was used to ensure sufficient genome coverage, and datasets were all downsampled to <=20X genome coverage to control for the contribution of low-frequency sequencing error. For each of those input datasets, we quantified the number of markers detected from each category. Those results were compared against those from a collection of non-*B. anthracis* isolates from the genus _Bacillus_ that were also available from public repositories. The number of datasets analyzed from each species is shown in [Table 1](#table-1), and the complete list of datasets is available as [Table S1](https://github.com/refgenomics/bacillus-anthracis-panel/blob/gh-pages/data/accessions.tsv). The results of this analysis are shown in [Figure 3](#figure-3).


### Limit of Detection Analysis

We executed the detection panel using *in silico* mixed samples with target organisms present at a range of abundances. The background for all of the *in silico* spike-in samples were 5 million reads from a soil sample ([SRR351473](http://www.ncbi.nlm.nih.gov/sra/?term=SRR351473)) that was sequenced as part of the Great Prairie Soil Metagenome project ([PRJNA50473](http://www.ncbi.nlm.nih.gov/bioproject/PRJNA50473)). Six WGS datasets were spiked in at a range of abundances (n=6) from 0.1X to 2X sequencing depth. A second series of samples was created that also included 150K reads from a near neighbor (*B. thuringiensis*), for roughly 8X sequencing depth. For each of these datasets, the proportion of markers detected was calculated and plotted as a function of the spike-in level and near neighbor presence [Figure 6](#figure-6).
