
//hide and show answers
$(document).ready(function(e){

  //if you wish to keep both the divs hidden by default then dont forget to hide //them
  $("#answers").hide();
  $("#response").hide();

  $("#submit_answer").click(function(){
       $("#answers").fadeIn();
       $("#submit_answer").hide("slow");
       $("#response").fadeIn();
  });

  $('#respond-yes').click(function(e) {
	$.ajax({
	  url: window.location.pathname + "/feedback",
	  type: "POST",
	  data: { correct: "yes"}
	})
	  .done(function( data ) {
	    if ( console && console.log ) {
	      console.log( "Sample of data:", data.slice( 0, 100 ) );
	    }
	});
  });

  $('#respond-yes').click(function(){
    notice("blah blah")
  });

});
