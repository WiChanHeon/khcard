$(document).ready(function(){
	
	//Scroll to top
	$(window).scroll(function() {
		if($(this).scrollTop() != 0) {
			$('.scrollToTop').fadeIn();	
		} else {
			$('.scrollToTop').fadeOut();
		}
	});	
	$('.scrollToTop').click(function() {
		$('body,html').animate({scrollTop:0},300);
	});
	
});