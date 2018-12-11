clean_up <- function(x) {
  x %>% 
    rename_all(clean_string) %>% 
    mutate_if(is.character, funs(clean_string))%>% 
    distinct()
}