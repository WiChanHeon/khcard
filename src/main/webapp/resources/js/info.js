$(document).ready(function(){
	
	/*$('#afee_button').hover(
			function(){ //mouseover효과
				var id = $(this).attr('data-id');
				$(this).hide();
				$('p').css('background-color','yellow');
			},function(){ //mouseout효과
				$(this).show();
				$('p').css('background-color','purple');
			}
	);*/
	
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

	
});