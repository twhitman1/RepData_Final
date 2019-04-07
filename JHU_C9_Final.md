Developing Data Products Class Project:  
Final Project Presentation
========================================================
author: Tom Whitman
date: 07-April-2019
autosize: true
transition: rotate

Introduction
========================================================

This is a presentation about a basic, reactive Shiny application.  This Shiny application was built for the Johns Hopkins University  Coursera Course, titled "Developing Data Products."
<https://www.coursera.org/lecture/data-products/welcome-to-developing-data-products-FXAbr>.  

This Shiny app was developed in RStudio version 1.1.463, using R version 3.5.3 (_*"Great Truth"*_).
I used the dataset _*Diamonds*_, which is availble via ggplot2 package.

About the data used
========================================================

The Diamonds dataset includes data from almost 54,000 individual diamonds.  It includes quantitative and qualitative measures of the physical characteristics of each diamond, along with price in US Dollars (USD).


```r
library(ggplot2)
head(diamonds)
```

```
# A tibble: 6 x 10
  carat cut       color clarity depth table price     x     y     z
  <dbl> <ord>     <ord> <ord>   <dbl> <dbl> <int> <dbl> <dbl> <dbl>
1 0.23  Ideal     E     SI2      61.5    55   326  3.95  3.98  2.43
2 0.21  Premium   E     SI1      59.8    61   326  3.89  3.84  2.31
3 0.23  Good      E     VS1      56.9    65   327  4.05  4.07  2.31
4 0.290 Premium   I     VS2      62.4    58   334  4.2   4.23  2.63
5 0.31  Good      J     SI2      63.3    58   335  4.34  4.35  2.75
6 0.24  Very Good J     VVS2     62.8    57   336  3.94  3.96  2.48
```

Description of the application
========================================================

* This application uses an underlying, basic linear regression
* The user selects the carat value for a diamond
* Based on this user input, the linear regression will run and provide a mean price
* For reference, a plot of carat (x axis) vs. price (y axis) is provided
  + This plot is colored by diamond clarity rating
  + Trendline is shown by clarity rating
* An explanation of the variables within the dataset is also provided within the application
* The Shiny application is accessible here on shinyapps.io: (<https://twhitman1.shinyapps.io/jhc_c9final-diamonds/>)
* The underlying UI.r and server.r files have been saved to GitHub here: (<https://github.com/twhitman1/RepData_Final>)

Application output
========================================================

![Alt text](app.png)
