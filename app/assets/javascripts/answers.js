
//hide and show answers
$(document).ready(function(){

  //if you wish to keep both the divs hidden by default then dont forget to hide //them           
  $("#answers").hide();
  $("#response").hide();

  $("#submit_answer").click(function(){
       $("#answers").fadeIn();
       $("#submit_answer").hide("slow");
       $("#response").fadeIn();
  });

      
});