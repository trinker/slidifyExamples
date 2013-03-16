<script>
$(function (){ 
  $("#example").popover(); 
  $("[rel='tooltip']").tooltip(); 
  
  var pop = Popcorn.vimeo(
    "player",
    "http://player.vimeo.com/video/41823197");
  handleDomLoadedExtra(pop);
});
</script>
