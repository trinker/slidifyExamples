library(shiny)

shinyServer(function(input, output){
  dat <- reactive(function(){
    dist = switch(input$dist, norm = rnorm, unif = runif, 
      exp = rexp, rnorm)
    dist(input$n)
  })
  
  output$plot <- reactivePlot(function(){
    dist = input$dist
    n = input$n
    # hist(dat(), main = sprintf("r%s(%s)", dist, n))
    print(ggplot2::qplot(dat()))
  })
    
  output$table <- reactiveTable(function(){
    data.frame(x = dat())
  }) 
})


