$(document).ready(function(){
	
	//글쓰기 폼 불러오기
	$('#y_cb-write').click(function(){
		if($(this).text() == '글쓰기'){
			$('#y_cb-writeForm').show();
			$(this).text('창닫기');
		}else if($(this).text() == '창닫기'){
			$('#y_cb-writeForm').hide();
			$(this).text('글쓰기');
		}
	});
	
	
});