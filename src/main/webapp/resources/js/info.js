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
    
    
    function loadChoiceBtn(){
    	
    }
    
    
    $('.y_button').click(function(){
    	var id = $(this).attr('id');
    	
    	////세션값 체크해서 function(selectData)로 세션값 불러오고
    	//- 바꾸고 장바구니 저장하고 count 저장하기
    	if($('#'+id+'_tooltip').text()=='관심카드 담기'){

    		$.ajax({
	    		type:'post',
	    		data:{info_id:id},
	    		url:'choicePlusAjax.do',
	    		dataType:'json',
	    		cache:false,
				timeout:30000,
				success:function(data){
					if(data.result=='success'){
						var ccount = data.ccount;
						var choice = data.choice;
						
						alert('id:' + id); //test
						alert(choice[0]+', '+choice[1]+', '+choice[2]+' --- '+ccount);
						
				    	$('#'+id+' span').removeClass('glyphicon-plus').addClass('glyphicon-minus');   	
				    	$('#'+id+'_tooltip').text('관심카드 빼기');
						$('#y_ccount').text(ccount);
						$('#y_compare').show();
						
						$('#y_cimg1').text(choice[0]); //수정 필요
						$('#y_cimg2').text(choice[1]);
						$('#y_cimg3').text(choice[2]);
						
					}else if(data.result=='excess3'){
						alert('카드담기는 3개까지 가능합니다.');
					}else if(data.result=='exist'){
						alert('오류:이미 존재하는 카드');
					}else if(data.result=='failure'){
						alert('카드 추가 오류');
					}
				},
				error:function(){
					alert('카드 추가 중 네트워크 오류 발생');
				}
	    	});
	    	
    	}else if($('#'+id+'_tooltip').text()=='관심카드 빼기'){
        	
        	$.ajax({
	    		type:'post',
	    		data:{info_id:id},
	    		url:'choiceMinusAjax.do',
	    		dataType:'json',
	    		cache:false,
				timeout:30000,
				success:function(data){
					if(data.result=='success'){
						var ccount = data.ccount;
						var choice = data.choice;
						
						
						alert(id + '제거완료'); //test
						alert(choice[0]+', '+choice[1]+', '+choice[2]+' --- '+ccount);

						/*if($('.y_cimg').val() == id){
							var cNum = $(this).text();
							alert(cNum);
						}						
						$('#'+cNum).text('');*/ //수정 필요
						
			    		$('#'+id+' span').removeClass('glyphicon-minus').addClass('glyphicon-plus');   	
			        	$('#'+id+'_tooltip').text('관심카드 담기');
						$('#y_ccount').text(ccount);
						$('#y_compare').show();
						
						$('#y_cimg1').text(choice[0]); //수정 필요
						$('#y_cimg2').text(choice[1]);
						$('#y_cimg3').text(choice[2]);
						
						/*$('#y_compare').hide(2000);*/
						
					}else if(data.result=='none'){
						alert('더이상 카드를 뺄 수 없습니다.');
					}else if(data.result=='wrong'){
						alert('오류:제거할 카드 없음');
					}else if(data.result=='failure'){
						alert('카드 제거 오류');
					}
				},
				error:function(){
					alert('카드 제거  중 네트워크 오류 발생');
				}
	    	});
    	}
    });
    
    

	
});