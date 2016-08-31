<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<div class="y_div">
	<h2><spring:message code="info.slist.title"/> - 다람쥐 헌 쳇바퀴에 타고파</h2>
	
	<c:if test="${empty list}">
	<div align="center">등록된 카드가 없습니다.</div>
	</c:if>
	
	<c:if test="${!empty list}">
	<table>
		<tr>
			<th>카드명</th>
			<th>카드추가버튼</th>
			<th>카드이미지</th>
			<th>카드stitle</th>
			<th>카드scontent</th>
			<th>연회비</th>
		</tr>
		<c:forEach var="slist" items="${list}">
		<tr>
			<td>${slist.info_name}</td>
			<td><button type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-plus"></span></button></td>
			<td><img src="'${pageContext.request.contextPath}/resources/images/card/'+'${slist.info_img}'"></td>
			<td>${slist.info_stitle}</td>
			<td>${slist.info_scontent}</td>
			<td><a href="#" data-toggle="tooltip" title="${slist.cp_afee})">연회비 보기</a></td>
		</tr>
		</c:forEach>
	</table>
	</c:if>
</div>