# liver-brain-gut-neural-arc

This package contains code to analyze genomic measurements (RNA-seq):  
The liver-brain-gut neural arc maintains the niche of regulatory T cells in the gut, Teratani T, et al. Nature 2020 (https://doi.org/10.1038/s41586-020-2425-3).  

## Requirement
### Data
The data used in this study comes from GSE140952 (https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE140952).

### Software
kallisto v0.44.0 	https://pachterlab.github.io/kallisto/  
sleuth http://pachterlab.github.io/sleuth/  
MORPHEUS https://software.broadinstitute.org/morpheus/  
ggtern v3.1.0 https://cran.r-project.org/web/packages/ggtern/index.html  
R v3.5.2 	https://www.r-project.org/  

### Raw data processing

This step pseudo-aligns bulk RNA-seq reads to the transcriptome. we pseudo-aligned RNA-seq reads to ENSEMBL transcripts (release 95 GRCm38), using kallisto (v0.44.0, options: -b 100).

` kallisto.sh `

We visualized the expression levels of APC subset signature genes with neurotransmitter receptor genes by creating heatmaps with hierarchically clustered rows and columns (MORPHEUS; https://software.broadinstitute.org/morpheus/) and the ternary plot (ggtern v3.1.0).

` ternary_plot.R ` 

Gene lists for DC signatures and AchR are available as "GeneList_DC" and "GeneList_AchR".    
  

