clean_string <- function(x) {
  x %>% 
    stringr::str_trim() %>% 
    tolower() %>% 
    stringr::str_replace_all("\\s+", " ") %>% 
    stringr::str_replace_all(" ", "_") %>%  
    if_else(. == "", as.character(NA), .)
}