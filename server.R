library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  output$scatter <- renderPlot({
    
    x <- Orange[[input$x_var]]
    y <- Orange[[input$y_var]]
    
    title <- paste(x, "vs", y)
    
    ggplot() +
      geom_point(mapping = aes(x = x, y = y), 
                 size = input$size, 
                 color = input$color) +
      labs(x = input$x_var, y = input$y_var, title = title)
  })
})