#Load the ggtern library. 
library(ggtern). 
library(ggplot2). 
  
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
               color = 'blue', size = 0.5) +. 
  guides(color = "none", fill = "none", alpha = "none")                    



