dashboardPage(skin = "blue",
              dashboardHeader(title = "WMA 2018 DREX",
                              .list = NULL, 
                              #this space is for outputting the date to the login bar
                              #it needs to be an html list item(li) with class dropdown
                              #to output properly
                              tags$li(textOutput("date_text"),
                                      class = "dropdown")
              ),
)#end of dahboard page