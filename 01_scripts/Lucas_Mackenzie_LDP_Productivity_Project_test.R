###################
# 25 September 2023
# Lucas Mackenzie (lucas.mackenzie@umontreal.ca)
# Script for mini-project
# Living Data Project Productivity and Reproducibility
###################

install.packages("palmerpenguins")
install.packages("renv")

library(palmerpenguins)
library(tidyverse)
library(renv)

data(package = 'palmerpenguins')

penguins

write.csv(penguins_raw,"./00_rawdata/penguins_raw.csv")
write.csv(penguins,"./00_rawdata/penguins.csv")

###############

renv::init()

renv::snapshot()
