# Libraries ----
pacman::p_load(tidyverse, rio, sjPlot)

# Data ----
andorra_clean <-
  import("MyData/andorra_clean.rds") %>% 
  mutate_at(c(1,4:11), fct_drop)

# Analysis ----

## Model ----
  # A linear model testing the relationship between the emancipative
  # index and predictors (sex, age, urbanicity of region of residence)
model <- lm(emancipative ~ sex + age + h_urbrural,
            data = andorra_clean)

# Save data (model)
export(model, file = "MyData/4_models/model.rds")

# Regression table
  # The model regression table (save automaticaly)
tab_model(model,
          collapse.ci = TRUE,
          p.style = "stars",
          file = "Results/Tables/regression_table.doc")

# Save data (regression table)
regression_table <- 
  tab_model(model,
          collapse.ci = TRUE,
          p.style = "stars")

export(regression_table, file = "MyData/4_models/regression_table.rds")