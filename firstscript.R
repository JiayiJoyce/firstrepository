install.packages(tidyverse)
install.packages("pacman")
pacman::p_load(
  tidyverse, 
  skimr,
  janitor
)
dplyr::arrange(mtcars, mpg) 
dplyr::arrange(mtcars, desc(mpg))

df <- mtcars %>% rename (milepergalon = mpg) #store change in a differen dataframe called df.
glimpse (df) #don't change the original dataframe
# storing change in a new data frame called df

#starwars %>%
  #dplyr::filter(sex=="female") %>%
  #arrange (desc(height))

starwars %>%
  dplyr::filter(height < 180 & height > 160) 

msleep %>%
  filter(order == "Primates", sleep_total > 10) %>%
  select(name, sleep_rem, sleep_cycle, sleep_total) %>%
  arrange(name) %>%
  mutate(sleep_total_min = sleep_total * 60)




