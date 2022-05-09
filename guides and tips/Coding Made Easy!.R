# Miscellaneous tools for making coding easier

## pipdiff package
# remotes::install_github("moodymudskipper/pipediff")
library(dplyr)

# This works better if you expand the Viewer pane on the bottom right
# of your screen
pipediff::pipediff()
starwars %>%
  group_by(species) %>%
  summarise(n = n(), mass = mean(mass, na.rm = TRUE)) %>%
  filter(n > 1, mass > 50)  %>%
  mutate(mass = round(mass)) %>%
  as.data.frame() %>%
  nrow()

## boomer package
# install.packages("boomer")
library(boomer)

mtcars %>%
  head(2) %>%
  subset(qsec > 17) %>%
  boom()

## loopurr package
# remotes::install_github("TimTeaFan/loopurrr")
library(loopurrr)

x <- list(1, c(1:2), c(1:3))
x %>% purrr::map(sum)

x %>% 
  purrr::map(sum) %>% 
  as_loop()

## Code Snippets (RStudio feature)
 
  
  
  


  
  
