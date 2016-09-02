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
	
	//비교함 노출
	$('#y_btn-compare').on('click',function(){
		$('#y_compare').toggle();
	});
	
	//카드선택버튼 슬라이드업/다운
	$('.y_card-img1').hover(function(){
		/*$(this).unbind('mouseenter mouseout');*/
		var id = $(this).attr('id');
	    var imgW = $('#'+id).width(); 
	    var imgH =  $('#'+id).height();
		$('#'+id+'_btnview').css('top','46px').css('left','40px').css('width',imgW).css('height',imgH);
		$('#'+id+'_btnview').show();
		
	},function(){
		var id = $(this).attr('id');
		$('#'+id+'_btnview').hide();
	});
	
	
	//위로 이동 버튼 기능
 	var offset = 220;  
    var duration = 500;  
    jQuery(window).scroll(function() {  
        if (jQuery(this).scrollTop() > offset) {  
            jQuery('.back_to_top').fadeIn(duration);  
        } else {  
            jQuery('.back_to_top').fadeOut(duration);  
        }  
    });  
      
    jQuery('.back_to_top').click(function(event) {  
        event.preventDefault();  
        jQuery('html, body').animate({scrollTop: 0}, duration);  
        return false;  
    })  

    
    
    
    
    /////////////////AJAX////////////////////
    
    $('.y_button').click(function(){
    	
    	var id = $(this).attr('id');
    	var count = $('#y_ccount').text();
    	
    	
    	if($('#'+id+'_tooltip').text()=='관심카드 담기'){ ///추후 카드3개인지도 체크해야 함
	    	$('#'+id+' span').removeClass('glyphicon-plus').addClass('glyphicon-minus');   	
	    	$('#'+id+'_tooltip').text('관심카드 빼기');
	    	
	    	/*$.ajax({
	    		type:'post',
	    		data:{info_id:id},
	    		url:'choicePlusAjax.do',
	    		dataType:'json',
	    		cache:false,
				timeout:30000,
				success:function(data){
					if(data.result=='success'){
						$('#y_compare').show();
						
						alert(id+' 추가완료'); //test
						$('#y_cimg1').text(id); //수정 필요
						
						
						
					}else if(data.result=='excess3'){
						alert('카드담기는 3개까지 가능합니다.');
					}else if(data.result=='exist'){
						alert('오류:이미 존재하는 카드');
					}else if(data.result=='failure'){
						alert('카드 추가 오류');
					}else{
						alert('카드 추가 시 알 수 없는 오류 발생');
					}
					
					
				},
				error:function(){
					alert('네트워크 오류 발생1');
				}
	    	});*/
	    	
	    	
    	}else if($('#'+id+'_tooltip').text()=='관심카드 빼기'){
    		$('#'+id+' span').removeClass('glyphicon-minus').addClass('glyphicon-plus');   	
        	$('#'+id+'_tooltip').text('관심카드 담기');
        	
        	
        	
        	/*$.ajax({
	    		type:'post',
	    		data:{info_id:id},
	    		url:'choiceMinusAjax.do',
	    		dataType:'json',
	    		cache:false,
				timeout:30000,
				success:function(data){
					if(data.result=='success'){
						$('#y_compare').show();
						
						alert(id + '제거완료'); //test
						$('#y_cimg1').text(''); //수정 필요
						
						
						
					}else if(data.result=='none'){
						alert('오류:제거할 카드 없음');
					}else if(data.result=='wrong'){
						alert('존재하지 않는 카드 제거 실패');
					}else if(data.result=='failure'){
						alert('카드 제거 오류');
					}else{
						alert('카드 제거 시 알 수 없는 오류 발생');
					}
					
					
				},
				error:function(){
					alert('네트워크 오류 발생2');
				}
	    	});*/
        	
    	}
    	
    });

	
});