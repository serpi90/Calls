$(document).ready(function(){
	/*$('.datepicker').pickadate({
		format:'yyyy-mm-dd'
	});*/
	/*$('.monthpicker').pickadate({
		format:'yyyy-mm'
	});*/
	$('.timepicker').inputmask('hh:mm');
	$('input[type=tel].calling_party').inputmask('phone', {
		url:"js/phone-codes-national.js",
		showMaskOnHover: false,
		greedy: false
	});
	$('input[type=tel].called_party').inputmask('phone', {
		url:"js/phone-codes-international.js",
		showMaskOnHover: false,
		greedy: false
	});
	$(".button-collapse").sideNav();
	$('.modal-trigger').leanModal();
	$('.collapsible').collapsible();
})

