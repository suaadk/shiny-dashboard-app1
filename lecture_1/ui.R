library(shiny)
library(particlesjs)


ui <- basicPage(
  tags$head(tags$link(rel = "stylesheet", 
                      type = "text/css", 
                      href = "app.css")),
  particles(),
  actionButton("setting_show","settings"),
  div(
    h1(uiOutput('title')),
    h2(uiOutput('subtitle')),
    h3(uiOutput("start")),
    uiOutput('time'),
    class = "center"
  )
  
)


