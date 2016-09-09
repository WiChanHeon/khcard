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
	
	
	//메뉴 hover 시 배경 dimmed + 서브메뉴 slideUp/Down
	$('.main-navigation:not(.onclick) .navbar-nav li.dropdown').hover(function(){
		$(this).addClass('active');
		$('ul.dropdown-menu', this).stop().slideDown('fast');
		$('.dimmed').css('display','block');
		var subH = $('ul.dropdown-menu li div', this).height();
		/*Math.max();*/
		/*alert(subH);*/
		$('ul.dropdown-menu li div', this).matchHeight();
	},function(){
		$(this).removeClass('active');
		$('ul.dropdown-menu', this).stop().slideUp('fast');
		$('.dimmed').css('display','none');
	});
	


	
});