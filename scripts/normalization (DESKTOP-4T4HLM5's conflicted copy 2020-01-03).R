#normalization by tidyverse
library(DBI)
library(odbc)
library(here)

"}8mvbn%JZtR&be^iMtWEkFM}"


key <- here("/keys/rdskey.txt") %>%
  read_file()

demographics <- gun_shots %>% select(casenumber, age, gender, race, latino)

incidentdate <- gun_shots %>% select(casenumber, incidentdate = incident_date, deathdate = death_date)

incidentlocations <- gun_shots %>% select(casenumber, incidentstreet = incident_street, longitude, latitude, 
                                          locationtype = location.type,
                                          locationcoordinates = location.coordinates, 
                                          incident_zip, incident_city)

residentlocations <- gun_shots %>% select(casenumber, residencezip = residence_zip, residencecity = residence_city)

mannerofdeath <- gun_shots %>% select(casenumber, manner, primarycause, secondarycause, gunrelated, opioids,
                                      coldreleated = cold_related, heatrelated = heat_related,
                                      primarycauselineb = primarycause_lineb, 
                                      primarycauselinec = primarycause_linec)

con <- dbConnect(odbc::odbc(),
                 driver = "ODBC Driver 17 for SQL Server",
                 database = "gsdataset",
                 uid = "ocs_training",
                 pwd = key,
                 Server = "sql-server-training.cv7ubu6fhdtz.us-east-2.rds.amazonaws.com",
                 port = "1433")


