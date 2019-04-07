# Johns Hopkins University Coursera Program
# for certificate in Data Sciences
# Data Products Class:  Final Project (Shiny app)
# 
# run the application by clicking 'Run App' above.


library(shiny)
library(ggplot2)

shinyUI(
  fluidPage(
    titlePanel("Cost analysis of diamonds based on selected characteristics"),
    sidebarLayout(
      sidebarPanel(
        sliderInput("caratselect", "Choose preferred carat value of diamond", 1.00,6.00,value=1.50, step=.01),
        br(),
        h3("Predicted mean price based on carat:"),
        textOutput("lm1")
        ),
    mainPanel(
        plotOutput("plot1", click = "plot_click"),
        verbatimTextOutput("info"),
        hr(),
        h3("Description of data"),
        br(),
        p("This Shiny App provides linear regression output in order to predict mean diamond price based on carat (weight).  Following is some information regarding the source dataset:"),
        p("A data frame with almost 54,000 observations on 10 variables."),
        tags$ol(
          tags$li(code("carat"), "A unit measure of diamond weight (range: 0.2 - 5.01"),
          tags$li(code("Cut"), "Qalitative classification of diamond by cut;  from worst to best: Fair, Good, Very Good, Premium, Ideal"),
          tags$li(code("Color"), "Classification of diamond by color;  from worst to best: J, I, H, G, F, E, D"),
          tags$li(code("Clarity"), "Measure of how clear the diamond is; from worst to best: I1, SI2, SI1, VS2, VS1, VVS2, VVS1, IF"),
          tags$li(code("depth"), "total depth percentage = z / mean(x, y) = 2 * z / (x + y) (43-79)"),
          tags$li(code("table"), "width of top of diamond at widest point (43-95)"),
          tags$li(code("price"), "price in US dollars (326 USD - 18,823 USD)"),
          tags$li(code("x"), "length in mm (0-10.74)"),
          tags$li(code("y"), "width in mm (0-58.9)"),
          tags$li(code("z"), "depth in mm (0-31.8)")
        )
      ))
    )
  )
