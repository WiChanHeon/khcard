$(document).ready(function(){
	
	//유효성 체크
	$('#y_cb-writeForm, #y_code-modify').submit(function(){
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
	
	
	//글쓰기 폼 불러오기-닫기
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
	
	//글쓰기 폼 닫기 (등록취소)
	$('#y_cb-cancel').click(function(){
		$('#y_cb-writeForm').slideUp('fast');
		$('#y_cb-write').text('글쓰기');
	});
	
	//수정폼 불러오기
	$('#y_code-original #y_code-original_modify').click(function(){
		var Oheight = $('#y_code-original #y_code-original_p').height();
		$('#y_code-original').hide();
		$('#y_code-modify textarea').css('height',Oheight+10); //높이 그대로 불러오기
		$('#y_code-modify').show();
		$('.y_dimmed').show();
	});
	
	//수정폼 취소
	$('#y_code-modify #y_code-modify_cancel').click(function(){
		$('#y_code-modify').hide();
		$('#y_code-original').show();
		$('.y_dimmed').hide();
	});
	
	//수정폼 텍스트 입력 시 textarea 높이 변경
	$('#y_code-modify textarea').keyup(function(){
		$(this).css('height','300');
	});
	
	//상세보기 줄바꿈
	if(location.href.indexOf('coboardDetail.do')>0){ //detail 페이지 체크
		$('#y_code-original_p').html($('#y_code-original_p').html().replace(/\n/g,'<br>'));
	}
	
	
	
	
});