#install tidyverse
install.packages("dplyr")
library(tidyverse)
#install remotes
install.packages(remotes)
#install data
remotes::install_github("allisonhorst/palmerpenguins")
library(palmerpenguins)
penguins
#check data import
library(palmerpenguins)
penguins
#double check data import
glimpse(penguins)
#exploring import
unique(penguins$species)
unique(penguins$island)
#scatterplot data viz
ggplot(data = penguins,
       aes(x = bill_length_mm, y = body_mass_g)) +
  geom_point(aes(color = species, shape = species),
             size = 3, alpha = 0.8) +
  #theme_minimal() +
  scale_color_manual(values = c("darkred", "cyan3", "pink")) +
  labs(title = "Penguin size, Palmer Station LTER",
       subtitle = "Bill length and body mass for Adelie, Chinstrap, and Gentoo Penguins",
       x = "Bill length (mm)",
       y = "Body mass (g)",
       color = "Penguin species",
       shape = "Penguin species") +
  theme_minimal()