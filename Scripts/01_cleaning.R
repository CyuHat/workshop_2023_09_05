# Libraries ----
pacman::p_load(tidyverse, rio, janitor, haven)

# Data ----
andorra_raw <- read_dta("Data/WVS_Wave_7_Andorra_Stata_v5.0.dta")

andorra_clean <- 
  andorra_raw %>% 
  clean_names() %>% 
  select(sex = q260, 
         age = q262,
         emancipative = resemaval,
         starts_with("h_"),
         q1:q6) %>% 
  filter_all(all_vars(. >= 0)) %>% 
  mutate_at(c(1,4:11), as_factor)

# Save ----
export(andorra_clean, file = "MyData/andorra_clean.rds")

Sys.sleep(40)