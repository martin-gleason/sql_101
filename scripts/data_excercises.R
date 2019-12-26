#excercises and scripts
library(tidyverse)
library(googlesheets4)
path <- here("rds/data.RDS")
clerks <- read_rds(path)[[2]]

# gun_shots <- read_rds("rds/gun_deaths_2017.RDS")
