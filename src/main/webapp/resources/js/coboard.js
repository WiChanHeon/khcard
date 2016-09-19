$(document).ready(function(){
	
	//유효성 체크
	$('#y_cb-writeForm').submit(function(){
		if($('#co_title').val() == ''){
			alert('제목을 입력하세요.');
			$('#co_title').focus();
			return false;
		}
		if($('#co_content').val() == ''){
			alert('내용을 입력하세요.');
			$('#co_content').focus();
			return false;
		}
	});
	
	
	//글쓰기 폼 불러오기
	$('#y_cb-write').click(function(){
		if($(this).text() == '글쓰기'){
			$('#y_cb-writeForm').slideDown('fast');
			$('#co_title').focus();
			$(this).text('창닫기');
		}else if($(this).text() == '창닫기'){
			$('#y_cb-writeForm').slideUp('fast');
			$(this).text('글쓰기');
		}
	});
	
	
});