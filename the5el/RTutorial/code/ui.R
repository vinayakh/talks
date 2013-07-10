library(shiny)

shinyUI(pageWithSidebar(

  headerPanel("Flexible Visualisation"),

  sidebarPanel(
    selectInput("variable2", "X",
                list("Cylinders" = "cyl", 
                     "Transmission" = "trans", 
                     "Manufacturer" = "manufacturer", 
                     "Displacement" = "displ", 
                     "Class" = "class", 
                     "Year" = "year")),
    selectInput("variable1", "Y",
                list("Highway Miles" = "hwy", 
                     "City Miles" = "cty")),
    selectInput("variable3", "Color",
                list("Class" = "class",
                     "Transmission" = "trans", 
										 "Cylinders" = "cyl", 
                     "Manufacturer" = "manufacturer", 
                     "Displacement" = "displ", 
                     "Year" = "year"))
  ),

  mainPanel(
    h3(textOutput("caption")),

    plotOutput("mpgPlot")
  )
))
