# Libraries ----
pacman::p_load(tidyverse, rio, gtsummary)

# Options ----
theme_set(theme_bw())
theme_update(legend.position = "top")

# Data ----
andorra_clean <- import("MyData/andorra_clean.rds")

# Visualization ----
# 1. Emancipative distribution
  # Simple dansity plot for the emancipative part
(emancipative_distribution <- 
  andorra_clean %>% 
  ggplot(aes(emancipative)) +
  geom_density(fill = "cyan", alpha = 0.5) +
  labs(title = "Emancipative index distribution"))

# Save png
emancipative_distribution %>% 
  ggsave(plot = .,
         filename = "Results/Figures/emancipative_distribution.png")

# Save ggplot
emancipative_distribution %>% 
  export(file = "MyData/3_figures/emancipative_distribution.rds")

# 2. Emancipaitve/sex/urbrural
  # Emancipative destribtuion by sex and urbanicity
  # region of residence
(emancipative_sex_urban <- 
  andorra_clean %>% 
  ggplot(aes(emancipative, fill = h_urbrural)) +
  geom_density(alpha = 0.5) +
  facet_wrap(~sex) +
  labs(title = "Emancipative index distribution",
       subtitle = "by sex and urbanicity of region of residence",
       fill = "Urbanicity"))

# Save png
emancipative_sex_urban %>% 
  ggsave(plot = .,
         scale = 1.5,
         filename = "Results/Figures/emancipative_sex_urban.png")

# Save ggplot
emancipative_sex_urban %>% 
  export(file = "MyData/3_figures/emancipative_sex_urban.rds")