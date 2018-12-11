#source("code/functions/...R", local=TRUE)

source("code/functions/clean_up_func.R", local = TRUE)
source("code/functions/clean_string_func.R", local = TRUE)
source("code/functions/cedr_func.R", local = TRUE)
source("code/functions/station_func.R", local = TRUE)

project.dir <- rprojroot::find_rstudio_root_file()
url.root <- "http://datahub.chesapeakebay.net/api.JSON"
todays.date <- format(Sys.Date(), "%m-%d-%Y")


# green <- "background-color:#5CC33D"
# yellow <- "background-color:yellow"
# orange <- "background-color:orange"
# red <- "background-color:red"
# navy <- "background-color:navy"
# black <- "background-color: black"

