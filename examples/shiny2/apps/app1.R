dat <- reactive(function(){
  # blogify::pagify('www/index.Rmd')
  dist = switch(input$dist, norm = rnorm, unif = runif, 
    exp = rexp, rnorm)
  dist(input$n)
})

output$plot1 <- reactivePlot(function(){
  dist = input$dist
  n = input$n
  hist(dat(), main = sprintf("r%s(%s)", dist, n))
})

output$table <- reactiveTable(function(){
  data.frame(x = dat())
})