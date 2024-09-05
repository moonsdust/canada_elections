#### Preamble ####
# Purpose: Simulates dataset pertaining to the Canadian election
# Author: Group 19
# Date: 5 September 2024
# Prerequisites: Know where to get Canadian election data.

#### Workspace setup ####
# install.packages("tidyverse")
# install.packages("janitor")
library(tidyverse)
library(janitor)

# Set seed
set.seed(646)

# Simulate data
simulated_data <-
  tibble(
    # Use 1 through to 338 to represent each federal riding
    "Division" = 1:338,
    # Randomly pick an option, with replacement, 338 times
    "Party" = sample(
      x = c("Liberal", "Conservative", "Bloc Québécois", "New Democratic", "Green"),
      size = 338,
      replace = TRUE
    )
  )

simulated_data