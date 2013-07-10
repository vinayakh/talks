library(shiny)
library(datasets)
library(ggplot2)
# We tweak the "am" field to have nicer factor labels. Since this doesn't
# rely on any user inputs we can do this once at startup and then use the
# value throughout the lifetime of the application
mpgData <- mpg 

# Define server logic required to plot various variables against mpg
shinyServer(function(input, output) {

  # Compute the forumla text in a reactive expression since it is 
  # shared by the output$caption and output$mpgPlot expressions

  # Return the formula text for printing as a caption
  output$caption <- renderText({
    paste(input$variable1, " Vs ",input$variable2, " using ", input$variable3, " as Color")
  })
  # Generate a plot of the requested variable against mpg and only 
  # include outliers if requested
  output$mpgPlot <- renderPlot({
	print(ggplot(mpgData, aes_string(x=input$variable2, y=input$variable1,color=input$variable3)) + geom_point()) 
  })
})
