shinydashboard::dashboardPage(skin = "blue",
              shinydashboard::dashboardHeader(title = "Phyto",
                              .list = NULL, 
                              #this space is for outputting the date to the login bar
                              #it needs to be an html list item(li) with class dropdown
                              #to output properly
                              tags$li(textOutput("info"),
                                      class = "dropdown")
              ),
              shinydashboard::dashboardSidebar(
                width = 250),
              
              shinydashboard::dashboardBody(
                tags$head(
                  #this links the shiny app to main.css which can be used to easily define and 
                  #alter styles(color,font size, alignments) across allui/server elements
                  tags$link(rel = "stylesheet", type = "text/css", href = "CSS/main.css")),
               
                # selectInput("load_choice", "select api or csv upload",
                #   list("api", "cvs")),
                checkboxInput("csv", "use a csv instead of CEDR api?"),
                conditionalPanel(
                  condition = "input.csv == false",
                  actionButton("download_cedr", label = "download cedr")
                ),
                
                conditionalPanel(
                  condition = "input.csv == true",
                  fileInput("event", "choose your event file", multiple = FALSE,  accept = c("text/csv",
                                                                                             "text/comma-separated-values,text/plain",
                                                                                             ".csv"), width = NULL),
                  fileInput("taxa", "choose your taxa file", multiple = FALSE, accept = c("text/csv",
                                                                                                    "text/comma-separated-values,text/plain",
                                                                                                    ".csv"), width = NULL)
                ),
                
                textOutput("test")
            
                
              )#end of body
)#end of dahboard page