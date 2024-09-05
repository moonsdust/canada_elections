#### Preamble ####
# Purpose: Downloads and saves the data pertaining to the Canadian election
# Author: Group 19
# Date: 5 September 2024
# Prerequisites: Know where to get Canadian election data.

#### Workspace setup ####
# install.packages("tidyverse")
# install.packages("janitor")
library(tidyverse)
library(janitor)

# Read the data
raw_canadian_elections <- read_csv(
  file = "https://www.elections.ca/res/rep/off/ovr2021app/53/data_donnees/table_tableau11.csv",
  show_col_types = FALSE,
  )

# Save the data as a CSV
write_csv(
  x = raw_canadian_elections,
  file = "canadian_elections.csv"
)
