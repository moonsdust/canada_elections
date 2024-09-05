library(tidyverse)

raw_canadian_elections <- read_csv(
  file = "https://www.elections.ca/res/rep/off/ovr2021app/53/data_donnees/table_tableau11.csv",
  show_col_types = FALSE,
  )

write_csv(
  x = raw_canadian_elections,
  file = "canadian_elections.csv"
)