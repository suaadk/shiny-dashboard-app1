
library(shiny)
library(lubridate)

title <- 'Data Visualization 4'
subtitle <- 'Building Dashboards'
start <- "starts in"
schedule <- as.POSIXct("2024-05-08 13:30:00")



server <- function(input, output) {
  output$title <- renderText(title)
  output$subtitle <- renderText(subtitle)
  output$start <-renderText(start)
  output$time <- renderText(as.character({
    invalidateLater(250)
    color <- ifelse(schedule > Sys.time(), "black", "red")
    span(as.period(interval(schedule, Sys.time())),
         style=paste("color", color, sep = ":"))
  }))
  
  
  observeEvent(input$setting_show, {
    showModal()
    
    
  })
}