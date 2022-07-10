df <- read.csv("Deportation_DataViz.csv", fileEncoding="UTF-8-BOM")

library(dplyr)
library(tidyr)
library(ggplot2)

ggplot(df, aes(fill=Numbers, y=Country, x=Years)) + 
  geom_tile() +
  scale_fill_gradient(low="grey", high="red") +
  coord_fixed() +
  theme_bw() +
  ggtitle("Deportation of migrants from destination countries\n") +
  theme(plot.title = element_text(hjust = 0.5), panel.grid.minor = element_blank()) +
  scale_y_discrete(limits=c("Canada","Japan","UK","South Africa","Mexico","EU","US","Saudi Arabia")) +
  labs(fill='Migrants deported\nper year')
