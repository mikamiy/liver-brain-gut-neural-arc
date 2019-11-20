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

`#Load the ggtern library
library(ggtern)
library(ggplot2)

# Generation of ternary plot 
p <- ggtern(df,aes(x=avg_CD11bSP,y=avg_DP,z=avg_CD11cSP))  + 
  theme_bw(base_size = 15)  +  
  stat_density_tern(aes(fill=..level.., alpha=..level..),geom='polygon') + 
  scale_fill_gradient2(high = "lightblue") +                                    
  geom_point(size=2, color = "blue") + 
  theme_nomask() +                                                          
  geom_segment(data = lines, 
               aes(x, y, z, 
                   xend = xend, yend = yend, zend = zend), 
               color = 'blue', size = 0.5) +
  guides(color = "none", fill = "none", alpha = "none")   `
  
  

