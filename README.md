# module_example_2
A Shiny module is a piece of code that is included as part of a Shiny app. This simple modularized shiny app is based on the Hello Shiny example that comes with the Shiny package. You can run it by typing the following in the R console:

``` {.r}
library(shiny)
runExample("01_hello")
``` 

Hello Shiny uses the sidebarLayout, with a sliderInput in the sidebarPanel and a histogram displayed in the mainPanel. My version of the app modularizes the sidebarPanel part of the sidebarLayout.

This version is the same as module_example_1, exept that it adds renderUI. 

You can see it in action here: <https://xplor.shinyapps.io/module_example_2/>