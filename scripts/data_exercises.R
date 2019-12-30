#excercises and scripts
library(here)
library(tidyverse)
library(googlesheets4)
path <- file.path("rds/data.RDS")
clerks <- read_rds(path)[[2]]
me_full <- read_rds(path)[[3]]
gun_shots <- read_rds(path)[[1]]
