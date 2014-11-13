
//hide and show answers
$(document).ready(function(){

  //if you wish to keep both the divs hidden by default then dont forget to hide //them           
  $("#answers").hide();

  $("#submit").click(function(){
       $("#answers").show("slow");
  });

      
});