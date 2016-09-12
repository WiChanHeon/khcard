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
	$('.y_afee').mouseover(function(){
		var id = $(this).attr('id');
		var x = $(this).offset().left - $(window).scrollLeft();
		var y = $(this).offset().top - $(window).scrollTop();
		$('#'+id+'_view').css('top',y).css('left',x);
		$('#'+id+'_view').show();
	});
	$('.y_tooltip-afee').mouseout(function(){
		$(this).hide();
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
	
	
	//카드추천 인터넷신청,전화신청 버튼
	$(document).on('mouseover','.y_matchCard',function(){
		var id = $(this).attr('data-id');
		var imgW = $(this).width();
		var imgH =  $(this).height();
		var x = $(this).offset().left;
		var y = $(this).offset().top;
		
		var btnview = $(this).siblings().first();
		btnview.css('top',y).css('left',x).css('width',imgW).css('height',imgH+30);
		btnview.find('.y_img_span').css('top','15px').css('left','0').css('width',imgW).css('height',imgH);
		btnview.show();
	});
	$(document).on('mouseout','.y_matchCard-btndiv',function(){
		$(this).hide();
	});
	
	
	//비교불가 카드 관심카드 담기 버튼 삭제
	$('#TB').hide();
	$('#CMH').hide();
	
	
	//id로 카드 결과 페이지 호출
	function loadCard(card,info_name,info_stitle){
		var link1 = "alert('아하1')"; //변경필요
		var link2 = "alert('어허2')"; //변경필요
		var link3 = "location.href='matchCard.do'";
		
		var output = '';
		
		output += '<div id="y_answer">';
		output += '<p class="y_quiztitle-card">내게 맞는 카드 상품은?</p>';
		output += '<div class="y_qcard">';
		output += '<img src="../resources/images/card/card_'+card+'.png" class="y_matchCard" data-id="'+card+'">';
		output += '<div class="y_matchCard-btndiv" id="'+card+'_btnview" style="display:none;">';
		output += '<a class="btn btn-primary y_matchCard-btn" onclick="'+link1+'">인터넷신청</a>';
		output += '<a class="btn y_matchCard-btn y_matchCard-btn2" onclick="'+link2+'">전화신청</a>';
		output += '<div class="y_img_span"></div></div>';
		output += '<br><div class="y_name"><a href="../detail/'+card+'.do">'+info_name+' ></a></div>';
		output += '<br><p>'+info_stitle+'</p>';
		output += '</div><br><input type="button" class="btn btn-default y_q_first-btn" value="처음부터" onclick="'+link3+'"></div>';
		
		$('.y_quizbox').append(output);
	}
	
	/////////////////카드추천선택지////////////////////
	$('#quiz0 span:eq(0)').click(function(){ //포인트 -> 연회비,혜택금액
		$(this).parent().hide();
		$('#quiz1').show();
		/*$('#quiz1').show('slide',{direction:'up'},1000);*/
	});
		$('#quiz1 span:eq(0)').click(function(){ //연회비 -> 금액
			$(this).parent().hide();
			$('#quiz1-1').show();
		});
			$('#quiz1-1 span:eq(0)').click(function(){ //연회비 - 1만원이하
				$(this).parent().hide();
				loadCard('CMH','현대카드M HYBRID','M포인트 적립 하이브리드카드'); //CMH
			});
			$('#quiz1-1 span:eq(1)').click(function(){ //연회비 - 1~2만원
				$(this).parent().hide();
				loadCard('ME2','현대카드M Edition2','강력한 포인트카드'); //M
			});
			$('#quiz1-1 span:eq(2)').click(function(){ //연회비 - 2~5만원
				$(this).parent().hide();
				loadCard('MPE2','현대카드M2 Edition2','강력한 포인트카드'); //M2
			});
			$('#quiz1-1 span:eq(3)').click(function(){ //연회비 - 5만원이상
				$(this).parent().hide();
				$('#y_answerT3M3').show(); //T3 & M3
			});
		$('#quiz1 span:eq(1)').click(function(){ //혜택금액 -> 월사용금액,주요사용처
			$(this).parent().hide();
			$('#quiz1-2').show();
		});
			$('#quiz1-2 span:eq(0)').click(function(){ //월사용금액 -> 금액
				$(this).parent().hide();
				$('#quiz1-2-1').show();
			});
				$('#quiz1-2-1 span:eq(0)').click(function(){ //월사용금액 - 50만원이하
					$(this).parent().hide();
					loadCard('ZRO','현대카드ZERO','조건없는 할인카드'); //ZERO
				});
				$('#quiz1-2-1 span:eq(1)').click(function(){ //월사용금액 - 50~100만원 -> y,n
					$(this).parent().hide();
					$('#y_M-service').show(); //M 플래티넘 서비스
				});
				$('#quiz1-2-1 span:eq(2)').click(function(){ //월사용금액 - 100~200만원 -> y,n
					$(this).parent().hide();
					$('#y_M-service').show(); //M 플래티넘 서비스
				});
				$('#quiz1-2-1 span:eq(3)').click(function(){ //월사용금액 - 200만원이상
					$(this).parent().hide();
					$('#y_answerT3M3').show(); //T3 & M3
				});			
			$('#quiz1-2 span:eq(1)').click(function(){ //주요사용처 -> 생활,포인트,항공사
				$(this).parent().hide();
				$('#quiz1-2-2').show();
			});
				$('#quiz1-2-2 span:eq(0)').click(function(){ //생활
					$(this).parent().hide();
					loadCard('ZRO','현대카드ZERO','조건없는 할인카드'); //ZERO
				});
				$('#quiz1-2-2 span:eq(1)').click(function(){ //포인트 -> y,n
					$(this).parent().hide();
					$('#y_M-service').show(); //M 플래티넘 서비스
				});
				$('#quiz1-2-2 span:eq(2)').click(function(){ //항공사
					$(this).parent().hide();
					loadCard('T3PE2','현대카드T3 Edition2','트래블  &amp; 마일리지카드'); //T3
				});
		
	$('#quiz0 span:eq(1)').click(function(){ //할인 -> 연회비, 혜택금액
		$(this).parent().hide();
		$('#quiz2').show();
	});
		$('#quiz2 span:eq(0)').click(function(){ //연회비 -> 금액
			$(this).parent().hide();
			$('#quiz2-1').show();
		});
			$('#quiz2-1 span:eq(0)').click(function(){ //연회비 - 1만원이하
				$(this).parent().hide();
				loadCard('ZRO','현대카드ZERO','조건없는 할인카드'); //ZERO
			});
			$('#quiz2-1 span:eq(1)').click(function(){ //연회비 - 1~2만원
				$(this).parent().hide();
				loadCard('XE2','현대카드X Edition2','쓸수록 커지는 할인카드'); //X
			});
			$('#quiz2-1 span:eq(2)').click(function(){ //연회비 - 2~5만원
				$(this).parent().hide();
				loadCard('XPE2','현대카드X2 Edition2','쓸수록 커지는 할인카드'); //X2
			});
			$('#quiz2-1 span:eq(3)').click(function(){ //연회비 - 5만원이상
				$(this).parent().hide();
				loadCard('X3PE2','현대카드X3 Edition2','쓸수록 커지는 할인카드'); //X3
			});
		$('#quiz2 span:eq(1)').click(function(){ //혜택금액 -> 월사용금액,주요사용처
			$(this).parent().hide();
			$('#quiz2-2').show();
		});
			$('#quiz2-2 span:eq(0)').click(function(){ //월사용금액 -> 금액
				$(this).parent().hide();
				$('#quiz2-2-1').show();
			});
				$('#quiz2-2-1 span:eq(0)').click(function(){ //월사용금액 - 50만원이하
					$(this).parent().hide();
					loadCard('ZRO','현대카드ZERO','조건없는 할인카드'); //ZERO
				});
				$('#quiz2-2-1 span:eq(1)').click(function(){ //월사용금액 - 50~100만원 -> y,n
					$(this).parent().hide();
					$('#y_X-service').show(); //X 플래티넘 서비스
				});
								
				$('#quiz2-2-1 span:eq(2)').click(function(){ //월사용금액 - 100~200만원 -> y,n
					$(this).parent().hide();
					$('#y_X-service').show(); //X 플래티넘 서비스
				});
				$('#quiz2-2-1 span:eq(3)').click(function(){ //월사용금액 - 200만원이상
					$(this).parent().hide();
					loadCard('X3PE2','현대카드X3 Edition2','쓸수록 커지는 할인카드'); //X3
				});
			$('#quiz2-2 span:eq(1)').click(function(){ //주요사용처 -> 5대생활영역, 빈도높은사용처
				$(this).parent().hide();
				$('#quiz2-2-2').show();
			});
				$('#quiz2-2-2 span:eq(0)').click(function(){ //5대생활영역
					$(this).parent().hide();
					loadCard('ZRO','현대카드ZERO','조건없는 할인카드'); //ZERO
				});
				$('#quiz2-2-2 span:eq(1)').click(function(){ //빈도높은사용처 -> 5%, 10%
					$(this).parent().hide();
					$('#quiz2-2-2-2').show();
				});
					$('#quiz2-2-2-2 span:eq(0)').click(function(){ //5% -> y,n
						$(this).parent().hide();
						$('#y_X-service').show(); //X 플래티넘 서비스
					});					
					$('#quiz2-2-2-2 span:eq(1)').click(function(){ //10%
						$(this).parent().hide();
						loadCard('X3PE2','현대카드X3 Edition2','쓸수록 커지는 할인카드'); //X3
					});
    
	
	//M 플래티넘 서비스 - Y, N
	$('#y_M-service span:eq(0)').click(function(){ //Yes
		$(this).parent().hide();
		loadCard('MPE2','현대카드M2 Edition2','강력한 포인트카드'); //M2
	});
	$('#y_M-service span:eq(1)').click(function(){ //No
		$(this).parent().hide();
		loadCard('ME2','현대카드M Edition2','강력한 포인트카드'); //M
	});
	
	//X 플래티넘 서비스 - Y, N
	$('#y_X-service span:eq(0)').click(function(){ //Yes
		$(this).parent().hide();
		loadCard('XPE2','현대카드X2 Edition2','쓸수록 커지는 할인카드'); //X2
	});
	$('#y_X-service span:eq(1)').click(function(){ //No
		$(this).parent().hide();
		loadCard('XE2','현대카드X Edition2','쓸수록 커지는 할인카드'); //X
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