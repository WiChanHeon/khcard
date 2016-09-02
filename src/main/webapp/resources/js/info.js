$(document).ready(function(){

	//추가-제거 버튼 툴팁
	$('.y_button').hover(function(){
		var id = $(this).attr('id');
		var x = $(this).offset().left - $(window).scrollLeft();
		var y = $(this).offset().top - $(window).scrollTop();
		$('#'+id+'_tooltip').css('top',y-23).css('left',x-32);
		$('#'+id+'_tooltip').show();
	},function(){
		var id = $(this).attr('id');
		$('#'+id+'_tooltip').hide();
	});
	
	
	//연회비 툴팁
	$('.y_afee').hover(function(){
		var id = $(this).attr('id');
		var x = $(this).offset().left - $(window).scrollLeft();
		var y = $(this).offset().top - $(window).scrollTop();
		$('#'+id+'_view').css('top',y).css('left',x);
		$('#'+id+'_view').show();
	},function(){
		var id = $(this).attr('id');
		$('#'+id+'_view').hide();
	});
	
	/*$('#y_btn-compare').button();*/
	
	//비교함 노출
	$('#y_btn-compare').on('click',function(){
		$('#y_compare').toggle();

		/*//버튼색상변경
		$(this).toggle(function(){
			   $(this).css('background-color','red');
		},
			function(){
			   $(this).css('background-color','white');
		});*/

		
	});
	
	
	//카드 이미지 크기 구하기



	
	//카드선택버튼 슬라이드업/다운
	$('.y_card-img1').hover(function(event){
		var id = $(this).attr('id');
	    var imgW = $('#'+id).width(); 
	    var imgH =  $('#'+id).height();
		$('#'+id+'_btnview').css('top','46px').css('left','40px').css('width',imgW).css('height',imgH);
		$('#'+id+'_btnview').show();
	},function(){
		var id = $(this).attr('id');
		$('#'+id+'_btnview').hide();
	});
	
	
	
	
	
	

	
});