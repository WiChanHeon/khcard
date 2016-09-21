/**
 * 카드발급 
 */
$(document).ready(function(){
	var ap_num;
	
	function initButton(){
		$('#b'+ap_num).hide();
		$('#d'+ap_num).hide();
		$('#a'+ap_num).hide();
	}
	
	
	//발급
	$('.confirmCard').click(function(event){
		
		if(confirm('정말 해당 회원에게 발급처리 하시겠습니까?')==true){
			
		
		
		var data =$(this).attr('data-num');
		ap_num =data;
		
		$.ajax({
			type:'post',
			data:{ap_num:data},
			url:'confirmCardAjax.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				 
				if(data.result=='logout'){
					alert('로그인해야 삭제 할 수 있습니다.');
				}else if(data.result=='duplicated'){
					alert('이미 카드발급된 회원입니다.')
					//모든버튼 숨김 b:발급 d:거절 a:보류
					initButton();
					
					$('#p'+ap_num).text('발급');
					
				}else if(data.result=='denied'){
					alert('발급 거절된 회원입니다.');
					//모든버튼 숨김 b:발급 d:거절 a:보류
					initButton();
					$('#p'+ap_num).text('거절');
					
				}else if(data.result=='success'){
					alert('발급완료');
					$('#p'+ap_num).text('발급');
					
					//모든버튼 숨김 
					initButton();
					
				}else{
					alert('발급시 오류발생');
				}
				
			},
			error:function(){
				
				alert('네트워크 오류 발생!');
			}
		});
		
		}else{
			return;
		}
		
	});
	
   $('.deleteCard').click(function(event){
	   
	   var data =$(this).attr('data-num');
	   ap_num=data;
	   
	   $.ajax({
		   type:'post',
			data:{ap_num:data},
			url:'deleteCardAjax.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				 
				if(data.result=='logout'){
					alert('로그인해야 발급취소 할 수 있습니다.');
				}else if(data.result=='isExist'){
					alert('카드 미발급 회원입니다.');
					$('#p'+ap_num).text('대기');
					$('#b'+ap_num).show();
				}else if(data.result=='success'){
					alert('발급 취소 완료');
					$('#p'+ap_num).text('대기');
					//발급버튼 보여주기
					$('#b'+ap_num).show();
					
				}else{
					alert('발급취소시 오류발생');
				}
				
			},
			error:function(){
				
				alert('네트워크 오류 발생!');
			}
	   });
	   
	   
	   
   });
   
  //보류 
 $('.deferCard').click(function(event){
	   
	   var data =$(this).attr('data-num');
	   ap_num=data;
	   
	   
	   $.ajax({
		   type:'post',
			data:{ap_num:data},
			url:'deferCardAjax.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				 
				if(data.result=='logout'){
					alert('로그인해야 발급취소 할 수 있습니다.');
				}else if(data.result=='isdefered'){
					alert('이미 보류 처리된 회원입니다.');
					//보류버튼 숨김, 거절버튼 발급버튼 노출
					$('#p'+ap_num).text('보류');
					$('#a'+ap_num).hide();
					$('#b'+ap_num).show();
					$('#d'+ap_num).show();
					
					
				}else if(data.result=='isconfirmed'){
					alert('이미 카드 발급된 회원입니다.')
					initButton();
					$('#p'+ap_num).text('발급');
				}else if(data.result=='isdenied'){
					alert('이미 거절된 회원입니다.');
					initButton();
					$('#p'+ap_num).text('거절');
				}else if(data.result=='success'){
					alert('보류 완료');
					$('#p'+ap_num).text('보류');
					//보류버튼 숨김, 거절버튼 발급버튼 노출
					$('#a'+ap_num).hide();
					$('#b'+ap_num).show();
					$('#d'+ap_num).show();
				
					
				}else{
					alert('보류시 오류발생');
				}
				
			},
			error:function(){
				
				alert('네트워크 오류 발생!');
			}
	   });
	   
	   
	   
   });
 
 //거절 
 $('.denyCard').click(function(event){
	   
	 if(confirm('정말 해당 회원을 거절처리 하시겠습니까?')==true){
		 
	 
	 
	   var data =$(this).attr('data-num');
	   ap_num=data;
	 
	   
	   $.ajax({
		   type:'post',
			data:{ap_num:data},
			url:'denyCardAjax.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				 
				if(data.result=='logout'){
					alert('로그인해야 발급취소 할 수 있습니다.');
				}else if(data.result=='isdenied'){
					alert('이미 거절 처리된 회원입니다.');
					//보류버튼 숨김, 거절버튼 발급버튼 노출
					$('#p'+ap_num).text('거절');
					//모든버튼 숨김
					initButton();
			
				}else if(data.result=='isconfirmed'){
                     alert('이미 카드발급된 회원입니다.');
                     initButton();
 					
 					$('#p'+ap_num).text('발급');
 			
				}else if(data.result=='success'){
					alert('거절 완료');
					$('#p'+ap_num).text('거절');
					
					initButton();
				
					
				}else{
					alert('거절시 오류발생');
				}
				
			},
			error:function(){
				
				alert('네트워크 오류 발생!');
			}
	   });
	   
	 }else{
		 return;
	 }
	   
   });
 
		
	
	
	
});