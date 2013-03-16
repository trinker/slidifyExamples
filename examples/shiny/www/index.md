---
title: Shiny App with Slidify
subtitle: Reproducible HTML5 Slides
author: Ramnath Vaidyanathan
url: {lib: libraries}
framework: shiny
--- .span4 .well





This is a demonstration of how to use shiny with slidify.





<label class="control-label" for="dist">Distribution:</label>
<select id="dist">
  <option value="norm" selected="selected">Normal</option>
  <option value="exp">Exponential</option>
  <option value="unif">Uniform</option>
  <option value="lnorm">Log-Normal</option>
</select>




<label>Number of Observations</label>
<input id="n" type="number" value="500" min="1" max="1000"/>



*** =output .span8

<div id="plot" class="shiny-plot-output" style="width: 100%; height: 400px"></div> 
<div id="table" class="shiny-html-output"></div>
