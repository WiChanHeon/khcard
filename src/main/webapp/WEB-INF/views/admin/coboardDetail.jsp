<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">

	<!-- dimmed -->
	<div class="y_dimmed"></div>
	
	<!-- detail 폼 시작 -->
	<div class="panel panel-primary" id="y_code-original">
		<div class="panel-heading y_panel-heading">
			<h3 class="panel-title">
				<b>[${coboard.co_num}]</b> ${coboard.co_title}
				<c:if test="${coboard.co_sort == 1}"> <code>공지</code> </c:if>
			</h3>
		</div>
		<div class="panel-body y_panel-body">
			<div class="y_floatleft">
				<a style="cursor:pointer;" data-toggle="popover" title="[${coboard.m_name}] 회원 정보" data-content="부서 : ${adminInfo.m_dept} | email : ${adminInfo.m_email} | 연락처 : ${adminInfo.m_cell}">${coboard.m_name} (${coboard.m_id})</a>
			</div>
			<div class="y_floatright">
				${coboard.co_reg}&nbsp;&nbsp; hit:${coboard.co_hit}
			</div>
			<div class="y_clear"></div>
			<hr>
			<div class="y_coimg">
				<c:if test="${!empty coboard.co_filename}">
					<img src="${pageContext.request.contextPath}/upload/${coboard.co_filename}" width="400">
				</c:if>
				<p id="y_code-original_p">${coboard.co_content}</p>
			</div>
			<hr>
			<div class="y_right">
				<c:if test="${sessionScope.adminId != coboard.m_id}">
				<input type="button" value="수정" disabled>
				<input type="button" value="삭제" disabled>
				</c:if>
				
				<c:if test="${sessionScope.adminId == coboard.m_id}">
				<input type="button" value="수정" id="y_code-original_modify">
				<input type="button" value="삭제" id="y_code-original_delete" data-num="${coboard.co_num}">
				</c:if>
				
				<input type="button" value="목록으로" onclick="location.href='${pageContext.request.contextPath}/admin/coboardList.do'">
			</div>
		</div>
	</div>
	<!-- detail 폼 끝 -->
	
	<!-- detail 수정폼 시작 -->
	<form class="panel panel-primary" id="y_code-modify" action="coboardModify.do" enctype="multipart/form-data" method="post" style="display:none;">
		<div class="panel-heading">
			<h3 class="panel-title">
			<span class="form-inline">
				<b>[${coboard.co_num}]</b> <input type="text" class="form-control input-sm" name="co_title" id="co_title" value="${coboard.co_title}" maxlength="20" placeholder="최대 20자">
				<input type="hidden" name="co_num" value="${coboard.co_num}">
				
				
				<select class="form-control input-sm" name="co_sort">
					<c:if test="${coboard.co_sort == 0}">
						<option value="0" selected>게시물</option>
						<option value="1">공지</option>
					</c:if>
					
					<c:if test="${coboard.co_sort == 1}">
						<option value="0">게시물</option>
						<option value="1" selected>공지</option>
					</c:if>
				</select>
				
			</span>
			</h3>
		</div>
		<div class="panel-body y_panel-body">
			<div class="y_floatleft">
				<a style="text-decoration:inherit;">${coboard.m_name} (${coboard.m_id})</a>
			</div>
			<div class="y_floatright">
				${coboard.co_reg}&nbsp;&nbsp; hit:${coboard.co_hit}
			</div>
			<div class="y_clear"></div>
			<hr>
			<div class="y_coimg">
				<c:if test="${!empty coboard.co_filename}">
					<img src="${pageContext.request.contextPath}/upload/${coboard.co_filename}" width="400">
				</c:if>
				<textarea class="form-control input-sm" name="co_content">${coboard.co_content}</textarea>
			</div>
			<hr>
			<div>
				<div class="y_floatleft">
					<c:if test="${empty coboard.co_filename}">
						<input type="file" name="upload" id="upload">
					</c:if>
					<c:if test="${!empty coboard.co_filename}">
						<label for="upload" id="y_upload-del">첨부파일 : ${coboard.co_filename}</label> <span class="y_como-span"><input type="checkbox" name="filedel" id="y_filedel" value="삭제"> 파일삭제</span> 
						<input type="file" name="upload" id="y_code-modify_delupload" style="display:none;"> 
					</c:if>
				</div>
				<div class="y_floatright">
					<input type="submit" value="수정완료">
					<input type="button" value="수정취소" id="y_code-modify_cancel">
				</div>
				<div class="y_clear"></div>
			</div>
		</div>
	</form>
	<!-- detail 수정폼 끝 -->
	
	<!-- 댓글 영역 시작 -->
	<div class="y_replyDiv">
		
		
			<!-- 코멘트 시작 -->
			<!-- 댓글 작성 박스 -->
			<div class="well y_ad-commentBox">
				<h4>댓글 :</h4>
				<form action="coboardReplyWriteAjax.do" id="y_reWriteForm" method="post">
					<div class="form-group">
						<input type="hidden" name="co_num" id="co_num" value="${coboard.co_num}">
						<textarea class="form-control" rows="3" name="co_re_content" maxlength="300"></textarea>
					</div>
					<button type="submit" class="btn btn-primary">작성</button>
				</form>
			</div>
			<hr>
			
			<!-- 댓글 목록 -->
			<div class="col-sm-12" id="y_ad-comment">
				
				
				
				
				<h3><span>백백분식</span> <small>2014/03/07 11:43 PM</small> 
				<button type="button" class="btn btn-default btn-sm" data-num="item.co_re_num" id="y_re-modifyBtn">수정</button>
				<button type="button" class="btn btn-default btn-sm" data-num="item.co_re_num" id="y_re-deleteBtn">삭제</button>
				</h3> 
				<p>다들 배고프지 않아요? 식사 합시닷f</p><br>
				
				
				<h3><span style="cursor:pointer;" data-toggle="popover" title="[] 회원 정보" data-content="부서 : ">백백분식</span> <small>2014/03/07 11:43 PM</small> </h3> 
				<p>다들 배고프지 않아요? 식사 합시닷</p><br>
	
				<h3>Blog contents <small>2014/03/07 11:43 PM</small> </h3>
				<p>This is a very interesting blog, well structured and organized. Would be great if you included more information on other IT topics as well. This is a very interesting blog, well structured and organized. Would be great if you included more information on other IT topics as well.</p><br>
			
			</div>
			<div class="col-sm-12 y_reBottom">
				<button type="button" class="btn btn-default" id="y_re-nextBtn">다음 댓글 보기</button>
			</div>
			<!-- 코멘트 끝 -->
		
		
		
		
	</div>
	<!-- 댓글 영역 끝 -->
	
</div>
