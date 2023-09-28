###################
# 25 September 2023
# Lucas Mackenzie (lucas.mackenzie@umontreal.ca)
# Script for mini-project
# Living Data Project Productivity and Reproducibility
###################

install.packages("palmerpenguins")
install.packages("tidyverse")
install.packages("renv")

library(palmerpenguins)
library(tidyverse)
library(renv)

renv::restore()

data(package = 'palmerpenguins')

penguins

write.csv(penguins_raw,"./00_rawdata/penguins_raw.csv")
write.csv(penguins,"./00_rawdata/penguins.csv")

###############

renv::init()

renv::snapshot()

install.packages("prereg")
library("prereg")
library("tinytex")
 prereg::prereg_pdf()
 
 rmarkdown::draft(
  "my_preregistration.Rmd"
  , "cos_prereg"
  , package = "prereg"
  , create_dir = FALSE
  , edit = FALSE
)

 install.packages("ggplot2")
 install.packages("aes")
library(ggplot2)
 
 {r echo=FALSE, message=FALSE, warning=FALSE}
 bill_length = penguins$bill_length_mm
 bill_depth = penguins$bill_depth_mm

 plot(bill_length, bill_depth)

 title(main = "Bill Depth vs Bill Length ",
       cex.main = 3,   font.main = 2, col.main = "darkblue"
 )
 

   penguin_sum <- penguins %>%
   group_by(island, year) %>%
   summarize(mean_body_mass_g = mean(body_mass_g, na.rm = TRUE)) %>% 
   ungroup()