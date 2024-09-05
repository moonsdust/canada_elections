library(tidyverse)
library(janitor)

# Load the raw data
raw_canadian_elections <-
  read_csv(
    file = "canadian_elections.csv",
    show_col_types = FALSE
  )

# Clean the column names
cleaned_canadian_elections <-
  clean_names(raw_canadian_elections)

# Select relevant columns and rename them
cleaned_canadian_elections <- 
  cleaned_canadian_elections |>
  select(
    electoral_district_name_nom_de_circonscription, 
    elected_candidate_candidat_elu
  ) |>
  rename(
    electoral_district = electoral_district_name_nom_de_circonscription,
    elected_candidate = elected_candidate_candidat_elu
  )


cleaned_canadian_elections <-
  cleaned_canadian_elections |>
  separate(col = elected_candidate,
           into = c("Other", "party"),
           sep = "/") |>
  select(-Other)

cleaned_canadian_elections <- 
  cleaned_canadian_elections |>
  mutate(party = recode(party, "Libéral" = "Liberal",
         "Conservateur" = "Conservative",
         "Bloc Québécois" = "Bloc Quebecois",
         "NPD-Nouveau Parti démocratique" = "New Democratic Party",
         "Parti Vert" = "Green Party")
         )

write_csv(
  x = cleaned_canadian_elections,
  file = "cleaned_canadian_elections.csv"
)