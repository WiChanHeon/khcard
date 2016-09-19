<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">${coboard.co_title}</h3>
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
				<p>${coboard.co_content}</p>
			</div>
			<hr>
			<div class="y_right">
				<input type="button" value="수정">
				<input type="button" value="삭제">
				<input type="button" value="목록으로" onclick="location.href='${pageContext.request.contextPath}/admin/coboardList.do'">
			</div>
		</div>
	</div>
</div>
