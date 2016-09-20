<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	
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
				<a href="#">${coboard.m_name} (${coboard.m_id})</a>
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
				<input type="button" value="수정" id="y_code-original_modify">
				<input type="button" value="삭제">
				<input type="button" value="목록으로" onclick="location.href='${pageContext.request.contextPath}/admin/coboardList.do'">
			</div>
		</div>
	</div>
	<!-- detail 폼 끝 -->
	
	<!-- detail 수정폼 시작 -->
	<form class="panel panel-primary" id="y_code-modify" action="coboardModify.do" method="post" style="display:none;">
		<div class="panel-heading">
			<h3 class="panel-title">
			<span class="form-inline">
				<b>[${coboard.co_num}]</b> <input type="text" class="form-control input-sm" name="co_title" id="co_title" value="${coboard.co_title}" maxlength="20" placeholder="최대 20자">
				
				<c:if test="${coboard.co_sort == 0}">
				<select class="form-control input-sm">
					<option value="0" selected>게시물</option>
					<option value="1">공지</option>
				</select>
				</c:if>
				
				<c:if test="${coboard.co_sort == 1}">
				<select class="form-control input-sm">
					<option value="0">게시물</option>
					<option value="1" selected>공지</option>
				</select>
				</c:if>
			</span>
			</h3>
		</div>
		<div class="panel-body y_panel-body">
			<div class="y_floatleft">
				<a href="#">${coboard.m_name} (${coboard.m_id})</a>
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
			<div class="y_right">
				<input type="submit" value="수정완료">
				<input type="button" value="수정취소" id="y_code-modify_cancel">
			</div>
		</div>
	</form>
	<!-- detail 수정폼 끝 -->
	
	
	
	
</div>
