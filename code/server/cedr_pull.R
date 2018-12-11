station.vec <- file.path(url.root,
                         "LivingResources",
                         "TidalPlankton",
                         "Reported",
                         "1-01-1970",
                         todays.date,
                         "17",
                         "Station") %>% 
  fromJSON() %>% 
  pull(unique(MonitoringLocationId))

