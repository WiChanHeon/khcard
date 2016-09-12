$(document).ready(function(){
	
	//스크롤 생성 시 화면 상단으로 이동시켜주는 아이콘
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
	
	
	//스크롤 시 상단 메뉴 숨김
	$(window).scroll(function(){
		if($(this).scrollTop() != 0){ //스크롤 생성
			$('#y_header').css('transform','translate3d(0px, -105px, 0px)');
			$('.y_nav_menu').css('transform','translate3d(0px, -105px, 0px)');
			$('.y_mfix').css('transform','translate3d(0px, -105px, 0px)');
			$('.y_compare_header').css('transform','translate3d(0px, -105px, 0px)');
		}else{ //스크롤 없음
			$('#y_header').css('transform','translate3d(0px, 0px, 0px)');
			$('.y_compare_header').css('transform','translate3d(0px, 0px, 0px)');
			$('.y_mfix').css('transform','translate3d(0px, 0px, 0px)');
			$('.y_nav_menu').css('transform','translate3d(0px, 0px, 0px)');
			$('#y_header').removeAttr('style');
		}
	});
	
	
	//메뉴 hover 시 배경 dimmed + 서브메뉴 slideUp/Down + div 작업
	$('#y_makeMenu.main-navigation:not(.onclick) .navbar-nav li.dropdown').hover(function(){
		$(this).addClass('active'); //menu 열린 상태
		$('ul.dropdown-menu', this).stop().slideDown('fast'); //submenu slideDown
		$('.y_dimmed').css('display','block'); //dimmed
		$('ul.dropdown-menu li div', this).matchHeight(); //div 높이 맞춤 (별도js사용)
		
		//단일메뉴는 li 위치와 div 위치 맞춤
		if($('ul.dropdown-menu li div', this).length == 1){
			var liX = $(this).offset().left;
			$('ul.dropdown-menu li div', this).css('left',liX-30);
		}
	},function(){
		$(this).removeClass('active');
		$('ul.dropdown-menu', this).stop().slideUp('fast');
		$('.y_dimmed').css('display','none');
	});
	
	
	//사용하지 않는 메뉴 alert 처리
	$('#y_header ul.dropdown-menu li a').click(function(){
		if($(this).attr('href') == '#'){
			alert('준비중인 메뉴입니다.');
			return false;
		}
	});
	
	
	//푸터 공지 변경
	$(document).on('click','.o_fnotice h5 a',function(){
		var num = Number($(this).parent().attr('data-id'));
		
		if($(this).attr('data-id') == 'right'){
			//다음 숫자 계산
			if(num == 5){ num = 0; }
			num += 1; 
			
			//값 받아오기
			var noticeHref = $('#o_fnotice-'+num+' span:eq(0)').text();
			var noticeTitle = $('#o_fnotice-'+num+' span:eq(1)').text();
			var noticeDate = $('#o_fnotice-'+num+' span:eq(2)').text();
			
			//데이터 변경
			$('#o_fnotice-0 > a').attr('href',noticeHref); //주소
			$('#o_fnotice-0 > a').text(noticeTitle); //공지 제목
			$('#o_fnotice-0 > span:eq(1)').text(noticeDate); //공지 날짜
			$('#o_fnotice-0 span:eq(0) span').text(num+'/5'); //공지 순서
			$('#o_fnotice-0 span:eq(0)').attr('data-id',num); //내부 번호
			
			return false;
		}
		if($(this).attr('data-id') == 'left'){
			//다음 숫자 계산
			if(num == 1){ num = 6; }
			num -= 1; 
			
			//값 받아오기
			var noticeHref = $('#o_fnotice-'+num+' span:eq(0)').text();
			var noticeTitle = $('#o_fnotice-'+num+' span:eq(1)').text();
			var noticeDate = $('#o_fnotice-'+num+' span:eq(2)').text();
			
			//데이터 변경
			$('#o_fnotice-0 > a').attr('href',noticeHref); //주소
			$('#o_fnotice-0 > a').text(noticeTitle); //공지 제목
			$('#o_fnotice-0 > span:eq(1)').text(noticeDate); //공지 날짜
			$('#o_fnotice-0 span:eq(0) span').text(num+'/5'); //공지 순서
			$('#o_fnotice-0 span:eq(0)').attr('data-id',num); //내부 번호
			
			return false;
		}
	});


	
});