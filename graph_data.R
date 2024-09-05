#### Preamble ####
# Purpose: Create visualization about the number of ridings won by 
# each party in the 2021 Canadian Federal Election. 
# Author: Group 19
# Date: 5 September 2024
# Prerequisites: Have installed the necessary package and have ran download_data.R (first) and clean_data.R (Second)

#### Workspace setup ####
# install.packages("tidyverse")
# install.packages("janitor")

library(tidyverse)
library(janitor)

#### Read in the data ####
cleaned_elections_data <-
  read_csv(
    file = "cleaned_canadian_elections.csv",
    show_col_types = FALSE
  )

# Count the number of seats won by each party
cleaned_elections_data |>
  count(party)

# Create the graph
cleaned_elections_data |>
  ggplot(aes(x = party)) +
  geom_bar() +
  theme_minimal() + # Make the theme neater
  ggtitle("Number of ridings won by each party in the 2021 Canadian Federal Election") + 
  labs(x = "Party", y = "Number of seats") # Make labels more meaningful