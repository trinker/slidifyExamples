## Slidio | Integrated Learning made Easy!

__Slidio__ is an interactive learning environment that combines interactive HTML slides with a synchronized media track to provide a better learning experience.

This is a demonstration of how widgets can be easily integrated into Slidify. This demo features the following widgets

1. NVD3 | A d3.js wrapper
2. Shiny
3. Popcorn.js
4. Quiz

### Getting Started

You can see the demo in action [here](http://glimmer.rstudio.com/ramnathv/slidifyWidgets). You can also run it locally in your R console as 

```
shiny::runGitHub('slidifyWidgets', 'ramnathv')
```

### Install Dependencies

If you wish to make modifications and build the application yourself, you will need to first install all required dependencies.

```
library(devtools)
install_github('shiny', 'rstudio')
install_github('slidify', 'ramnathv')
install_github('poirot', 'ramnathv')
```

### Clone Repo

```
$ git clone git://github.com/ramnathv/slidifyWidgets.git
```

### Run Application

The slide deck will have to be run as a Shiny application. You can do that by running the following in your R console, after switching to the root directory of the application. 

```
library(shiny)
library(slidify)
pagify('www/index.Rmd')
runApp(".")
```

## Credits

__Slidio__ is powered by several open source projects.

1. [Google IO 2012](https://code.google.com/p/io-2012-slides/)
2. [knitr](http://github.com/yihui/knitr)
3. [OpenCPU](http://www.opencpu.org)
4. [PopCornJS](http://popcornjs.org/)
5. [jQuery-Quiz](https://github.com/lurodrigo/jquery-quiz)
6. [Ace](http://ace.ajax.org/)
7. [Bootstrap](http://twitter.github.com/bootstrap/)

*** =pnotes

__Slidio__ uses the slide framework developed by Eric Bidelman and Luke Mahé for the Google IO 2012 conference. It is an amazing, feature-rich framework with a great looking UI. All the computations are powered by `knitr`, an R package by Yihui Xie. 


