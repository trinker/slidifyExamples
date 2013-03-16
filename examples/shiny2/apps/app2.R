datasetInput <- reactive(function() {
  switch(input$dataset,
    "rock" = rock,
    "pressure" = pressure,
    "cars" = cars)
})

output$caption <- reactiveText(function() {
  input$caption
})

output$summary <- reactivePrint(function() {
  dataset <- datasetInput()
  summary(dataset)
})

output$view <- reactiveTable(function() {
  head(datasetInput(), n = input$obs)
})