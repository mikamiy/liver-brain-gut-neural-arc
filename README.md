# liver-brain-gut-neural-arc

This package contains code to analyze genomic measurements (RNA-seq):  
The liver-brain-gut neural arc maintains the niche of regulatory T cells in the gut, Teratani T, et al. 2019.  

## Requirement
### Software
kallisto v0.44.0 	https://pachterlab.github.io/kallisto/  
sleuth http://pachterlab.github.io/sleuth/  
MORPHEUS https://software.broadinstitute.org/morpheus/  
ggtern v3.1.0 https://cran.r-project.org/web/packages/ggtern/index.html  
R v3.5.2 	https://www.r-project.org/  

### Raw data processing

This step pseudo-aligns bulk RNA-seq reads to the transcriptome. we pseudo-aligned RNA-seq reads to ENSEMBL transcripts (release 95 GRCm38), using kallisto (v0.44.0, options: -b 100).

`In line code`

We visualized the expression levels of APC subset signature genes with neurotransmitter receptor genes by creating heatmaps with hierarchically clustered rows and columns (MORPHEUS; https://software.broadinstitute.org/morpheus/) and the ternary plot (ggtern v3.1.0).

