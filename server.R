shinyServer(function(input, output, session) {
  output$info  <- renderText({

    #    paste("Today's date is", as.character(test_date$test_date_value))
    paste("this is phyto") #as.character(test_date),"  ")
  })
  
  #selectInput()
  #test_var = 3
  #station.vec <- station_func()
  
  
  phyto.df <- observeEvent(input$download_cedr, {
    cedr_func()
  })
  
  #phyto.df 
  test <-  observeEvent(input$event,{
     file1=input$event
     #read.csv(file1$datapath)
     dir.create(file.path(rprojroot::find_rstudio_root_file(), "data/phytoplankton"),
                recursive = TRUE, showWarnings = FALSE)
     
     data.table::fwrite(file1, file.path(rprojroot::find_rstudio_root_file(), "data/phytoplankton", "phyto_event.csv"))
  #   
  #   phyto.df <- clean_up(phyto.df)
  })
  
  output$test <- renderText(
    as.character(input$event)
  )

})