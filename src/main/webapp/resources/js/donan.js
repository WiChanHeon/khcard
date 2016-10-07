$(document).ready(function() {

		
	$(".lossApply").click(function(event){
		if(confirm('정말 해당 카드를 분실처리 하시겠습니까?')==true){
		    
			
			
			//카드번호
			var data =$(this).attr('data-num');
			//재발급 여부
			var data2 =$('#loss_selectbox'+data+' option:selected').val();
			//버튼 숨김
			$('#'+data).remove();
			$('#lossview'+data).text('일시정지');
			
			$.ajax({
				type:'post',
				data:{card_num:data,loss_memo:data2},
				url:'lossApplyCardAjax.do',
				dataType:'json',
				cache:false,
				timeout:30000,
				success:function(data){
				 if(data.result=='success'){
					 alert('분실신고 완료');
					 						
					}else if(data.result='failure'){
						alert('분실시 오류발생');
					}else if(data.result="duplicated"){
						alert('이미 분실신고된 카드입니다');
					}  
				},
				error:function(){
					alert('네크워크 오류 발생!');
				}
			});
			
		
			
		}else{
			return false;
		}
	});
	
	
	
	
});
