shinyServer(function(input, output, session) {
  output$info  <- renderText({

    #    paste("Today's date is", as.character(test_date$test_date_value))
    paste("this is phyto") #as.character(test_date),"  ")
  })
  
  #selectInput()
  #test_var = 3
  #station.vec <- station_func()
  
  
  phyto_cedr.df <- observeEvent(input$download_cedr, {
    cedr_func()
  })
  

  
  data <- reactive({
    file1 <- input$event
    if(is.null(file1)){return()}
    read.table(file=file1$datapath, header =TRUE, sep = ",", quote = "")
  })
  
  output$filedf <- renderTable({
    if(is.null(data())){return()}
     input$event
  })
  
  output$test <- renderText(
    as.character(input$event)
  )
  
  test <-  observeEvent(input$event,{
     file1=input$event
     if (is.null(file1)) {
       return(NULL)
     }
     
     events.df <- data.table::fread(file.path(file1$datapath) 
     ,
     data.table = FALSE,
     na.strings = "")
     
     #read.csv(file1$datapath)
     dir.create(file.path(rprojroot::find_rstudio_root_file(), "data/phytoplankton"),
                recursive = TRUE, showWarnings = FALSE)

     data.table::fwrite(events.df, file.path(rprojroot::find_rstudio_root_file(), "data/phytoplankton", "phyto_event.csv"))

  #   phyto.df <- clean_up(phyto.df)
   })

})