$(document).ready(function () {
		$('#menu1-1').hide();
		$('#menu2-1').hide();
		$('#menu3-1').hide();
		$('#menu1-2').hide();
		$('#menu2-2').hide();
		$('#menu3-2').hide();
		$('#menu1-3').hide();
		$('#menu2-3').hide();
		$('#menu3-3').hide();
	$('#menu1').click(function() {
		$('#menu1').hide();
	    $('#menu2').hide();
	    $('#menu3').hide();
	    $('#menu1-1').show();
		$('#menu2-1').show();
		$('#menu3-1').show();
	})
	/*$('#menu2').click(function() {
	    $('#menu1').hide();
	    $('#menu2').hide();
	    $('#menu3').hide();
	    $('#menu1-2').show();
		$('#menu2-2').show();
		$('#menu3-2').show();
	}),*/
	/*$('#menu3').click(function() {
	    $('#menu1').hide();
	    $('#menu2').hide();
	    $('#menu3').hide();
	    $('#menu1-3').show();
		$('#menu2-3').show();
		$('#menu3-3').show();
	})*/
});
