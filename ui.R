library(shiny)

select_values <- colnames(Orange)

shinyUI(fluidPage(
  h1("Growth of Oranges"),
  selectInput("x_var", "X Variable", select_values, selected = "Tree"),
  selectInput("y_var", "Y Variable", select_values, selected = "age"),
  sliderInput("size", "Size of Point", min = 1, max = 10, value = 5),
  selectInput("color", "Color", c("Blue", "Purple", "Green")),
  plotOutput("scatter")
))
