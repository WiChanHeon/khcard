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
	
	
	//detail Form content 줄바꿈
	if(location.href.indexOf('coboardDetail.do')>0){ //detail 페이지 체크
		$('#y_code-original_p').html($('#y_code-original_p').html().replace(/\n/g,'<br>'));
	}
	
	//ID 정보 표시용 popover
	/*$('[data-toggle="popover"]').popover();*/
	
	
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
	
	//수정 시 삭제 체크해야만 새로운 업로드 버튼 보임
	$('#y_filedel').click(function(){
		if($(this).is(':checked')){
			$('#y_upload-del').css('text-decoration','line-through');
			$('#y_code-modify_delupload').show();
		}else{
			$('#y_upload-del').removeAttr('style');
			$('#y_code-modify_delupload').hide();
		}
	});
	
	
	//업로드 파일 유효성 체크
	if(location.href.indexOf('coboardList.do') > 0 || location.href.indexOf('coboardDetail.do') > 0){ //페이지 체크
		$('input[type="file"]').change(function(){
			//용량 체크
			var uFileSize = $(this)[0].files[0].size; //파일사이즈
			var maxFileSize = 52428800; //제한용량 50MB
			
			if(uFileSize > maxFileSize){
				alert('업로드 용량은 50MB까지입니다.');
				$(this).val('');
			}
			
			//확장자 체크
			var ext = $(this).val().split('.').pop().toLowerCase();
			if($.inArray(ext, ['gif','jpg','jpeg','png','bmp']) == -1){
				alert('이미지 파일만 업로드할 수 있습니다.');
				$(this).val('');
			}
		});
	}
	
	
	//삭제 확인
	$('#y_code-original_delete').click(function(){
		var co_num = $(this).attr('data-num');
		var isDelete = confirm('정말 삭제하시겠습니까?');
		
		if(isDelete){
			location.href='coboardDelete.do?co_num='+co_num;
		}
	});
	
	
	//////댓글Ajax//////
	//목록 호출
	if(location.href.indexOf('coboardDetail.do') > 0){
		var currentPage;	
		
		//목록 호출 function
		function replyList(pageNum,co_num){
			currentPage = pageNum;
			
			if(pageNum == 1){
				$('#y_ad-comment').empty();
			}
			
			$.ajax({
				type:'post',
				data:{pageNum:pageNum,co_num:co_num},
				url:'coboardListAjax.do',
				dataType:'json',
				cache:false,
				timeout:30000,
				success:function(data){
					
					//목록 처리
					var relist = data.relist;
					var adminId = data.adminId;
					
					if(relist == null){
						alert('목록 없음');
					}
					
					$(relist).each(function(index,item){
						var output = '';
						output += '<div id="reNo'+item.co_re_num+'">';
						output += '<h3><span class="y_reName">'+item.m_name+'</span> <small>'+item.co_re_reg+'</small> '; 
						
						if(adminId!=null && adminId==item.m_id){
							output += '<button type="button" class="btn btn-default btn-sm" data-num="'+item.co_re_num+'" data-co_num="'+item.co_num+'"id="y_re-modifyBtn">수정</button> ';
							output += '<button type="button" class="btn btn-default btn-sm" data-num="'+item.co_re_num+'" data-co_num="'+item.co_num+'" id="y_re-deleteBtn">삭제</button>';
						}
						
						
						output += '</h3>'; 
						output += '<p class="y_reContent">';
						output += item.co_re_content.replace(/\n/g,'<br>');
						output += '</p><br></div>';
						
						$('#y_ad-comment').append(output);
					});
					
					//다음 댓글 보기 버튼 처리
					var count = data.count;
					var rowCount = data.rowCount;
					
					if(currentPage >= Math.ceil(count/rowCount)){
						$('#y_re-nextBtn').hide();
					}else{
						$('#y_re-nextBtn').show();
					}
					
				},
				error:function(){
					alert('댓글 목록 호출 중 네트워크 오류 발생!');
				}
			});
		}
		
		//다음 댓글 보기 버튼 클릭 시 추가 데이터 로드
		$('#y_re-nextBtn').click(function(){
			var pageNum = currentPage + 1;
			replyList(pageNum,$('#co_num').val());
		});

		//목록 호출
		replyList(1,$('#co_num').val());
	}
	
	
	
	
	//등록 폼 초기화
	function initReForm(){
		$('textarea').val('');
		
	}
	
	
	//댓글 등록
	$('#y_reWriteForm').submit(function(e){
		//유효성 체크
		if($('textarea', this).val() == ''){
			alert('내용을 입력하세요.');
			$('textarea', this).focus();
			return false;
		}
		
		//댓글 등록 ajax
		var data = $(this).serialize();
		
		$.ajax({
			type:'post',
			data:data,
			url:'coboardReplyWriteAjax.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				if(data.result == 'success'){
					initReForm(); //폼초기화
					replyList(1,$('#co_num').val()); //목록 호출
				}else if(data.result == 'logout'){
					alert('로그인 해야 작성할 수 있습니다.'); //coboardLogout.jsp로 바로 연결할 수 있나?
				}else if(data.result == 'failure'){
					alert('댓글 등록 오류 ');
				}
			},
			error:function(){
				alert('댓글 등록 시 네트워크 오류 발생')
			}
		});
		
		e.preventDefault();
	});
	
	
	//댓글 수정폼 로드
	$(document).on('click','#y_re-modifyBtn',function(){
		var co_re_num = $(this).attr('data-num');
		var co_re_content = $('#reNo'+co_re_num+' .y_reContent').text();
		var Oheight = $('#reNo'+co_re_num+' .y_reContent').height();
		var originalReply = $('#reNo'+co_re_num).html(); //취소용 내용 복사
		
		//form붙이기
		var modifyReply = '';
		modifyReply += '<form action="coboardReplyModifyAjax.do" method="post" id="y_reModifyForm">';
		modifyReply += originalReply;
		modifyReply += '<input type="hidden" name="co_re_num" value="'+co_re_num+'"></form>';
		$('#reNo'+co_re_num).html(modifyReply);
		
		//버튼 2종 submit-취소 버튼으로 변경
		$('#reNo'+co_re_num+' button').remove();
		$('#reNo'+co_re_num+' h3').append('<button type="submit" class="btn btn-sm btn-primary">수정</button> ');
		$('#reNo'+co_re_num+' h3').append('<button type="button" class="btn btn-sm btn-default y_re-modifyCancel" data-num="co_re_num">취소</button>');
		
		//수정 내용 textarea로 교체
		var modify = '<textarea class="form-control input-sm" name="co_re_content" style="height:'+(Oheight+10)+'px; color:#4c4c4c;">'+co_re_content+'</textarea>';
		$('#reNo'+co_re_num+' .y_reContent').html(modify).css('margin-bottom','0');
		
		
		//댓글 수정 취소
		$(document).on('click','.y_re-modifyCancel',function(){
			$('#reNo'+co_re_num).html(originalReply);
		});
		
		
		
		
	});
	
	//댓글 수정 진행
	$(document).on('submit','#y_reModifyForm',function(e){
		
		//유효성 체크
		if($('textarea', this).val() == ''){
			alert('내용을 입력하세요.');
			$('textarea', this).focus();
			return false;
		}
		
		//댓글 수정 ajax
		var data = $(this).serialize();
		
		$.ajax({
			type:'post',
			data:data,
			url:'coboardReplyModifyAjax.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){				
				if(data.result == 'success'){
					initReForm(); //폼초기화
					replyList(1,$('#co_num').val()); //목록 호출
				}else if(data.result == 'logout'){
					alert('로그인 해야 작성할 수 있습니다.');
				}else if(data.result == 'failure'){
					alert('댓글 수정 오류 ');
				}
			},
			error:function(){
				alert('댓글 수정 시 네트워크 오류 발생')
			}
		});
		
		e.preventDefault();
	});
	
	
	//댓글 삭제
	$(document).on('click','#y_re-deleteBtn',function(){
		var co_re_num = $(this).attr('data-num');
		var co_num = $(this).attr('data-co_num');
		var isDelete = confirm('이 댓글을 정말 삭제하시겠습니까?');
		
		if(isDelete){
			location.href='coboardReplyDelete.do?co_re_num='+co_re_num+'&co_num='+co_num;
		}
	});
	
});