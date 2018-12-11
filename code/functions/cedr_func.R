cedr_func <- function(x) {
  file.path(url.root,
          "LivingResources",
          "TidalPlankton",
          "Reported",
          "1-01-1970",
          todays.date, 
          "17",
          "Station",
          paste(station.vec, collapse = ",")) %>%
  fromJSON() %>% 
  clean_up()
}