$(document).ready(function(){
	
	
	//카드선택버튼 슬라이드업/다운
	$('.y_card-img1').mouseover(function(){
		var id = $(this).attr('id');
		var imgW = $('#'+id).width(); 
		var imgH =  $('#'+id).height();
		
		$('#'+id+'_btnview').css('top','25px').css('left','40px').css('width',imgW).css('height',imgH+30);
		$('#'+id+'_btnview span.y_img_span').css('top','18px').css('left','0px').css('width',imgW).css('height',imgH);
		$('#'+id+'_btnview').show();
	});
	$('.y_img_btndiv').mouseout(function(){
		$(this).hide();
	});
	
	
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
	
		
	//관심카드가 2개 이상일 때만 비교 가능 체크
	$('#y_cbtn').click(function(){
		if($('#y_ccount').text() < 2){
			alert('관심카드가 2개 이상일 때만 카드비교가 가능합니다.');
			return false;
		}
	});
	
	
	//비교페이지에서 카드 개수에 따라 td width 지정
	if($('#y_ccount2').val() == 2){
		$('#y_ctable tr td').css('width','45%');
	}else if($('#y_ccount2').val() == 3){
		$('#y_ctable tr td').css('width','30%');
	}
	
	//정보 모두 비어있을 경우 tr 지우기
	$('#y_ctable tr').each(function(index,item){
		var td1 = $('td:eq(0)',item).text();
		var td2 = $('td:eq(1)',item).text();
		var td3 = $('td:eq(2)',item).text();
		
		if(td1=='' && td2 =='' && td3 ==''){
			$(this).empty();
		}
	});
	
	
	//비교불가 카드들 버튼 막기 (비교 불가)
	
	
	
	
	/////////////////카드추천////////////////////
	$('#quiz0 span:eq(0)').click(function(){
		$(this).parent().hide();
		$('#quiz1').show();
	});
	$('#quiz0 span:eq(1)').click(function(){
		alert('흑흑2');
	});
    
	
    
    
    
    /////////////////AJAX////////////////////
    
    //비교함 카드 빼기 (on 사용)
    $(document).on('click','.y_clink',function(e){
    	var id = $(this).attr('data-id');
    	
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
					
		    		$('#'+id+' span').removeClass('glyphicon-minus').addClass('glyphicon-plus');   	
		        	$('#'+id+'_tooltip').text('관심카드 담기');
					
					if(ccount==0){
						$('#y_ccount').text('');
						$('#y_ccount2').text('');
					}else{
						$('#y_ccount').text(ccount);
						$('#y_ccount2').text('('+ccount+')');
					}
					
					//비교함 비우고 데이터 새로 로딩
					for(var i=0;i<3;i++){
						$('#y_cimg'+(i+1)).empty();
						$('#y_compareForm input[name=card'+(i+1)+']').val('');
						if(choice[i]!=null){
							$('#y_cimg'+(i+1)).append('<a href="#" class="y_clink" data-id="'+choice[i]+'"><img src="../resources/images/card/card_'+choice[i]+'.png"></a>');
							$('#y_compareForm input[name=card'+(i+1)+']').val(choice[i]);
						}
					}
					$('#y_compare').show();
					
					setTimeout(function(){
						$('#y_compare').slideUp(300);
					},2000);
					
				}else if(data.result=='none'){
					alert('더 이상 제거할 카드가 없습니다.');
				}else if(data.result=='wrong'){
					alert('오류:제거 대상 카드 없음');
				}else if(data.result=='failure'){
					alert('카드 제거 오류');
				}
			},
			error:function(){
				alert('카드 제거  중 네트워크 오류 발생');
			}
    	});	

    	e.preventDefault();
    });
    
    
    //추가-제거 버튼으로 비교함에 카드 보관하기
    $('.y_button').click(function(){
    	var id = $(this).attr('id');
    	
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
						
				    	$('#'+id+' span').removeClass('glyphicon-plus').addClass('glyphicon-minus');   	
				    	$('#'+id+'_tooltip').text('관심카드 빼기');
						$('#y_ccount').text(ccount);
						$('#y_ccount2').text('('+ccount+')');
						
						//비교함 비우고 데이터 새로 로딩
						for(var i=0;i<3;i++){
							$('#y_cimg'+(i+1)).empty();
							$('#y_compareForm input[name=card'+(i+1)+']').val('');
							if(choice[i]!=null){
								$('#y_cimg'+(i+1)).append('<a href="#" class="y_clink" data-id="'+choice[i]+'"><img src="../resources/images/card/card_'+choice[i]+'.png"></a>');
								$('#y_compareForm input[name=card'+(i+1)+']').val(choice[i]);
							}
						}
						$('#y_compare').show();
						
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
						
			    		$('#'+id+' span').removeClass('glyphicon-minus').addClass('glyphicon-plus');   	
			        	$('#'+id+'_tooltip').text('관심카드 담기');
						
						if(ccount==0){
							$('#y_ccount').text('');
							$('#y_ccount2').text('');
						}else{
							$('#y_ccount').text(ccount);
							$('#y_ccount2').text('('+ccount+')');
						}
						
						//비교함 비우고 데이터 새로 로딩
						for(var i=0;i<3;i++){
							$('#y_cimg'+(i+1)).empty();
							$('#y_compareForm input[name=card'+(i+1)+']').val('');
							if(choice[i]!=null){
								$('#y_cimg'+(i+1)).append('<a href="#" class="y_clink" data-id="'+choice[i]+'"><img src="../resources/images/card/card_'+choice[i]+'.png"></a>');
								$('#y_compareForm input[name=card'+(i+1)+']').val(choice[i]);
							}
						}
						$('#y_compare').show();
						
						setTimeout(function(){
							$('#y_compare').slideUp(300);
						},2000);
						
					}else if(data.result=='none'){
						alert('더 이상 제거할 카드가 없습니다.');
					}else if(data.result=='wrong'){
						alert('오류:제거 대상 카드 없음');
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