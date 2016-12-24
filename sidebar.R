# Module UI function
sidebarUI <- function(id) {
  
  # All UI function bodies start with this statement
  # which creates a namespace function
  ns <- NS(id)
  
  # Wrap multiple UI objects in tagList() 
  tagList(
    
    # Sidebar with a slider input for number of bins
    sidebarPanel(
      
      # Wrap all input or output ID's in the UI body in ns()
      selectInput(ns("drop-down"), label = "Drop-down menu", choices = c("A", "B")),
      uiOutput(ns("slider"))
    )
  )
}

# Module server function
sidebar <- function(input, output, session) {
  
  # Render the second drop-down menu
  output$slider <- renderUI({
    ns <- session$ns
    switch(
      input$"drop-down",
      "A" = sliderInput(ns("bins"), "Number of bins:", min = 1, max = 25, value = 10),
      "B" = sliderInput(ns("bins"), "Number of bins:", min = 26, max = 50, value = 40)
    )
  })
  
  # Return reactive output from the slider as a 
  # reactive expression
  return(reactive(input$bins))

}
