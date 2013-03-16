---
title: Integrated Learning Environment
subtitle: A Prototype
author: Ramnath Vaidyanathan
job: Assistant Professor, McGill 
--- dt:10




## Outline

This is a prototype for an integrated learning environment that combines video with slides and an interactive R console to facilitate learning. It uses several open source tools 

1. [Popcorn](http://popcornjs.org/)
2. [jQuery-Quiz](https://github.com/lurodrigo/jquery-quiz)
3. [Shiny](https://github.com/rstudio/shiny)
4. [knitr](https://github.com/yihui/knitr)

---

<iframe src='http://glimmer.rstudio.com:8787/'></iframe>

--- .segue bg:#68A6F7


## Shiny

--- &shiny dt:20

## Shiny Application 1

*** =input

<label class="control-label" for="dist">Distribution:</label>
<select id="dist">
  <option value="norm" selected="selected">Normal</option>
  <option value="exp">Exponential</option>
  <option value="unif">Uniform</option>
  <option value="lnorm">Log-Normal</option>
</select><label>Number of Observations</label>
<input id="n" type="number" value="500" min="1" max="1000"/>


*** =output

<div id="plot1" class="shiny-plot-output" style="width: 100% ; height: 300px"></div>



--- &shiny dt:30

## Shiny Application 2


*** =input 

### Inputs

<label>Caption:</label>
<input id="caption" type="text" value="Data Summary"/><label class="control-label" for="dataset">Choose a dataset:</label>
<select id="dataset">
  <option value="rock" selected="selected">rock</option>
  <option value="pressure">pressure</option>
  <option value="cars">cars</option>
</select><label>Number of observations to view:</label>
<input id="obs" type="number" value="10"/>


*** =output

<h3>
  <div id="caption" class="shiny-text-output"></div>
</h3><div id="view" class="shiny-html-output"></div>


--- &tryr3 dt:40 sno:1

## Try R

Type any sequence of R commands in the box below and hit the Run button to see the results of execution. Useful for R Tutorials.

<textarea class='knitCode'>
seq(1, 20)
</textarea>

--- &tryr3 sno:2 dt:60

## Flipping a Coin 500 times

We can now repeat the process of flipping 5 coins, 500 times and plot a histogram of the distribution.

<textarea class='knitCode'>
require(mosaic)
toss500 = do(500) * nflip(5)
hist(toss500$result)
</textarea>

> 1. Change the fill color to darkred.
> 2. Change the number of bins to 5.

*** =hint

You can use the `col` argument to change the fill color of the bars


```r
hist(toss500$result, col = "darkred")
```



--- &radio .quiz

## Quiz

What is the sum of 1 + 1?

1. 1
2. _2_
3. 3
4. 4

*** .hint

This is a hint

*** .explanation

This is the explanation

---
  
## Bootstrap
  
**Blocks**
  
<div class="alert alert-info">
 <p>This is an alert info block which should render in blue</p>
</div>
  
**Tooltips**
  
This is to check out tooltips in bootstrap <a href="#" rel="tooltip" data-original-title="Default tooltip">you probably</a>
  
**Popover**
  
<a class="btn btn-large btn-danger" rel="popover" data-content="And here's some amazing content. It's very engaging. right?" data-original-title="A Title" id='example'>Click to toggle popover</a>
  
*** =pnotes

The font size and color needs some tweaking.

---

## Mathjax ##

$$
\begin{aligned}
\nabla \times \vec{\mathbf{B}} -\, \frac1c\, \frac{\partial\vec{\mathbf{E}}}{\partial t} & = \frac{4\pi}{c}\vec{\mathbf{j}} \\   \nabla \cdot \vec{\mathbf{E}} & = 4 \pi \rho \\
\nabla \times \vec{\mathbf{E}}\, +\, \frac1c\, \frac{\partial\vec{\mathbf{B}}}{\partial t} & = \vec{\mathbf{0}} \\
\nabla \cdot \vec{\mathbf{B}} & = 0 \end{aligned}
$$
<br />
$$
\mathbf{V}_1 \times \mathbf{V}_2 =  \begin{vmatrix}
\mathbf{i} & \mathbf{j} & \mathbf{k} \\
\frac{\partial X}{\partial u} &  \frac{\partial Y}{\partial u} & 0 \\
\frac{\partial X}{\partial v} &  \frac{\partial Y}{\partial v} & 0
\end{vmatrix}
$$

--- &popcorn

<section class="video" id="video">
  <div id="player" style="width: 160px; height: 120px"></div>
</section>
