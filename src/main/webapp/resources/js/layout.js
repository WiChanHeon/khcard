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
	
	
	//스크롤 시 메뉴 숨김
	$(window).scroll(function(){
		if($(this).scrollTop() != 0){ //스크롤 생성
			$('#o_header').css('transform','translate3d(0px, -105px, 0px)');
			$('.y_nav_menu').css('transform','translate3d(0px, -105px, 0px)');
			$('.y_mfix').css('transform','translate3d(0px, -105px, 0px)');
			$('.y_compare_header').css('transform','translate3d(0px, -105px, 0px)');
		}else{ //스크롤 없음
			$('#o_header').css('transform','translate3d(0px, 0px, 0px)');
			$('.y_compare_header').css('transform','translate3d(0px, 0px, 0px)');
			$('.y_mfix').css('transform','translate3d(0px, 0px, 0px)');
			$('.y_nav_menu').css('transform','translate3d(0px, 0px, 0px)');
			$('#o_header').removeAttr('style');
		}
	});
	
	
	
});