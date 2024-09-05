cleaned_elections_data <-
  read_csv(
    file = "cleaned_canadian_elections.csv",
    show_col_types = FALSE
  )
cleaned_elections_data |>
  count(party)

cleaned_elections_data |>
  ggplot(aes(x = party)) +
  geom_bar() + 
  labs(x = "Party", y = "Number of seats") # Make labels more meaningful
