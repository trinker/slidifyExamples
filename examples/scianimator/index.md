---
title: SciAnimator
subtitle: Test
author: Ramnath Vaidyanathan
job: Assistant Professor, McGill
url:
  lib: ../../libraries
widgets: [quiz, bootstrap]
--- 

<style>
body {
  background-color: #000;
}
</style>

<script src={{page.url.widgets}}/scianimator/js/jquery.scianimator.pack.js></script>
<link rel='stylesheet' href={{page.url.widgets}}/scianimator/css/scianimator.css>


## kMeans Animation



<div class="scianimator">
<div id="unnamed_chunk_1" style="display: inline-block;">
</div>
</div>
<script type="text/javascript">
  (function($) {
    $(document).ready(function() {
      var imgs = Array(8);
      for (i=0; ; i++) {
        if (i == imgs.length) break;
        imgs[i] = "assets/fig/unnamed-chunk-1" + (i + 1) + ".png";
      }
      $("#unnamed_chunk_1").scianimator({
          "images": imgs,
          "delay": 1000,
          "controls": ["first", "previous", "play", "next", "last", "loop", "speed"],
      });
      $("#unnamed_chunk_1").scianimator("play");
    });
  })(jQuery);
</script>


--- .quiz &radio

## Question 1

<style>
.modal-body iframe {
  height: 350px;
}
</style>

The number of friends a person has on facebook is approximately normal with mean 190 and standard deviation 36. If the number of friends Chris has is 2.5 standard deviations above the mean, how many friends does he have? 

1. 192.5
2. _280_
3. 226
4. 262

*** .explanation

It is trivial

<iframe width="560" height="200" src="http://www.youtube.com/embed/cRb2ONJAvog" frameborder="0" allowfullscreen></iframe>

--- .quiz &radio

## Question 2

The number of friends a person has on facebook is approximately normal with mean 190 and standard deviation 36. What percentage of people have less than 240 facebook friends ?




1. _92%_
2. 80%
3. 60%
4. 55%

*** .hint

Convert 240 to a z-score and use the standard normal table.

*** .explanation

## Solution 

<iframe width="560" height="315" src="http://www.youtube.com/embed/GF0qAvNKpOA" frameborder="0" allowfullscreen></iframe>

---

## Variables

<iframe src="http://www.screenr.com/embed/qyT8" width="650" height="200" frameborder="0"></iframe>

*** =pnotes

A variable is simply a placeholder to store an object in R. Watch this video to quickly get up to speed on how to create variables in R.
