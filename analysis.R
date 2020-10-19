#LET'S CREATE SOME DATA TO PLAY AROUND WITH IN THIS FIRST DEMO PROJECT
#USING GITHUB!

df <- data.frame(x = rnorm(50, 16, 4),
                 group = rep(c("group1", "group2"), each = 25))

#INSTALL THEN LOAD IN TIDYVERSE...

install.packages("tidyverse")
library(tidyverse)

df %>% group_by(group)%>%
  summarise(mean = mean(x),
            n = length(n),
            sd = sd(x))