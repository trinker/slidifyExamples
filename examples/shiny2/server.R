library(shiny)
shinyServer(function(input, output){
  addResourcePath('libraries', '../../libraries')
  apps = dir("apps", pattern = '^app', full = T)
  for (app in apps){
    source(app, local = TRUE)
  }
})


