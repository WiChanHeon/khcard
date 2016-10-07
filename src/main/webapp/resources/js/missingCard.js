$(document).ready(function(){
	
	
	//발급
	$('.returnCard').click(function(event){
		
		if(confirm('정말 해당 회원을 정상 처리 하시겠습니까?')==true){
			
		
		//카드 번호
		var data =$(this).attr('data-num');
		//분실 번호
		var data2=$(this).attr('data-num2');
		//분실 상태 텍스트 변경
		$('#'+data2).text('정상');
		//버튼 없애기
		$('#a'+data2).empty();
		card_num =data;
		
		$.ajax({
			type:'post',
			data:{card_num:data},
			url:'returnCardAjax.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				  
				if(data.result=='success'){
					
					alert('정상처리 완료');
				}else if(data.result=='failure'){
					alert('정상처리 시 오류 발생');
				}
	    
				
			},
			error:function(){
				
				alert('네트워크 오류 발생!');
			}
		});
		
		}else{
			return false;
		}
		
	});
	
	//파기 버튼 클릭시  버튼 보여주기
	$('.destroyButtonView').click(function(event){
		var data =$(this).attr('data-num');
		$('#a'+data).hide();
		$('#b'+data).show();
		
		
	});
	
	//파기처리
	$('.destroy').click(function(event){
		
		if(confirm('정말 해당 회원의 카드를 파기처리 하시겠습니까?')==true){
			
		
		
		//카드번호
		var data=$(this).attr('data-num');
		var data2=$(this).attr('data-num2');
		$('#'+data2).text('파기');
		$('#b'+data2).empty();
		
		$.ajax({
			type:'post',
			data:{card_num:data},
			url:'destroyCardAjax.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				
                if(data.result=='success'){
					
					alert('파기처리 완료');
				}else if(data.result=='failure'){
					alert('파기처리 시 오류 발생');
				}
				
				
				},
			error:function(){
				alert('네트워크 오류 발생!');
				}
		});
			
		}else{
			return false;
		}	
		
	});
	
	//카드 재발급
	$('.reissue').click(function(event){
		
		if(confirm('정말 해당 회원의 카드를 재발급 처리 하시겠습니까?')==true){
			
			
			
			//카드번호
			var data=$(this).attr('data-num');
			var data2=$(this).attr('data-num2');
			$('#'+data2).text('재발급');
			$('#b'+data2).empty();
			
			$.ajax({
				type:'post',
				data:{card_num:data,loss_num:data2},
				url:'reissueCardAjax.do',
				dataType:'json',
				cache:false,
				timeout:30000,
				success:function(data){
					
	                if(data.result=='success'){
						//성공시 재발급 번호 보여주기
	                	
	                	$('#b'+data.loss_num).text("재발급 번호: "+data.cardNum);
	                	
	                	
						alert('재발급 처리 완료');
						
						
					}else if(data.result=='failure'){
						alert('재발급 처리 시 오류 발생');
					}
					
					
					},
				error:function(){
					alert('네트워크 오류 발생!');
					}
			});
				
			}else{
				return false;
			}	
		
		
	});
	
	
	
	
	
	
	
	
	
});