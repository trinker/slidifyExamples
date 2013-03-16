.slidifyEnv = new.env()

runCode <- function(code){
  code = paste('```{r echo = F,message = F, comment = NA}\n', code, "\n```", 
    collapse = '\n')
  out = knitr::knit(text = code, envir = .slidifyEnv)
  markdown::markdownToHTML(text = out, fragment = TRUE)
}

invisible(lapply(1:2, function(i){
  output[[paste0('result', i)]] <- reactive(function(){
    if (input[[paste0('run', i)]] == 0)
      return()
    return(isolate({
      runCode(input[[paste0('code', i)]])
    }))
  })
}))