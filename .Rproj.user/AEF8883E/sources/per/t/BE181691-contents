# Libraries ----
pacman::p_load(tidyverse, rio, gtsummary)

# Data ----
andorra_clean <-
  import("MyData/andorra_clean.rds") %>% 
  mutate_at(c(1,4:11), fct_drop)

# Work ----
# 1. Summary
  # A simple summary table for all the variables
(summary_table <- 
  andorra_clean %>% 
  tbl_summary())

# Save docx
summary_table %>% 
  as_gt() %>% 
  gt::gtsave(file = "Results/Tables/summary_table.docx")

# Save data
export(summary_table, file = "MyData/2_tables/summary_table.rds")

# 2. Emancipative: urban vs rural
  # Test the difference in emancipative and variables related
  # to the importance of value in life by urbanicity of region 
  # of residence.
(emancipative_table <- 
  andorra_clean %>% 
  select(h_urbrural,
         emancipative,
         starts_with("q")) %>% 
  tbl_summary(by = h_urbrural) %>% 
  add_p())

# Save docx
emancipative_table %>% 
  as_gt() %>% 
  gt::gtsave(file = "Results/Tables/emancipative_table.docx")

# Save data
export(emancipative_table, file = "MyData/2_tables/emancipative_table.rds")