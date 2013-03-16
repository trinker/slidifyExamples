<style>
#perfbarplot svg {
  height: 500px;
  width: 800px;
  min-width: 100px;
  min-height: 100px;
/*
  margin: 50px;
  Minimum height and width is a good idea to prevent negative SVG dimensions...
  For example width should be =< margin.left + margin.right + 1,
  of course 1 pixel for the entire chart would not be very useful, BUT should not have errors
*/
}
</style>

<link rel="stylesheet" href="http://nvd3.org/src/nv.d3.css">
<script src="http://nvd3.org/lib/d3.v2.js"></script>
<script src="http://raw.github.com/novus/nvd3/master/nv.d3.js"></script>
<script src='http://coffeescript.org/extras/coffee-script.js'></script>

<script type="text/coffeescript">
# CHART DRAWING CODE
drawChart = (el, data) ->
    data2 = d3.nest()
      .key((d) -> "Returns")
      .entries(data.dat)
      
    chart = nv.models.discreteBarChart()
      .x( (d) -> d.Date )
      .y( (d) -> d.SP500 )
      .color( d3.scale.category10().range() )
      
    chart.xAxis
      .tickFormat (d) -> d3.time.format("%Y%") new Date(d) 
      
    d3.select(el).select('svg')
      .datum(data2)
      .transition().duration(500)
      .call(chart)
      
    nv.utils.windowResize chart.update
    chart

# BOILER PLATE
networkOutputBinding = new Shiny.OutputBinding()
$.extend networkOutputBinding, 
  find: (scope) ->
    $(scope).find ".shiny-network-output"
    
  renderValue: (el, data) ->
    drawChart(el, data)
    
Shiny.outputBindings.register(networkOutputBinding, 'timelyportfolio.networkbinding');
</script>
