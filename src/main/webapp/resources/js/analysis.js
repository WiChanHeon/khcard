$(document).ready(function(){
	
	$('#selectbox').change(function(){
		
		var data =$('#selectbox option:selected').val();
		
		ap_reg=data;
		
		$.ajax({
			type:'post',
			data:{ap_reg:data},
			url:'analysisMonthAjax.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
			
				if(data.result=='logout'){
					alert('로그인해야 조회 할 수 있습니다.');	
				}else if(data.result=='success'){
					alert('조회성공');
					
				}else{
					alert('조회시 오류발생');
				}
					
				
			   
			},
			error:function(){
				alert('네트워크 오류발생!');
			}
		});
	});
	
});