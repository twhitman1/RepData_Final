# Johns Hopkins University Coursera Program
# for certificate in Data Sciences
# Data Products Class:  Final Project (Shiny app)
# 
# THis is the server code.

library(shiny)
library(ggplot2)
library(dplyr)


shinyServer(function(input, output) {
  
  # Obtain input variables separated by +
  # if nothing is set, set to 1
 
  ggplot(diamonds) + aes()
  
  model <- lm(price~carat, data=diamonds)
 
  modelpred<- reactive ({
    caratinput <- input$caratselect
    predict(model, newdata = data.frame(carat = caratinput))
  })
  output$lm1 = renderText({
    modelpred()
  })
  br()
  output$plot1 <- renderPlot({
    ggplot(diamonds) + aes(carat, price, color=diamonds$cut) + geom_point() + stat_smooth() + 
      ggtitle("Carat vs. Price color groupings by cut")
  })
}
)