<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container y_div">
	<div class="y_center y_nav_menu">
		<h2><spring:message code="info.slist.title"/></h2>
		<p>신청하고자 하는 카드종류를 선택해 주세요.</p>
	
			<ul>
				<li><a href="#">추천카드</a></li>
				<li><a href="#">Premium카드</a></li>
				<li><a href="#">포인트카드</a></li>
				<li><a href="#">할인카드</a></li>
				<li><a href="#">기타카드</a></li>
			</ul>
	</div>
	<br><br>

	<div class="y_nav_content">	
		<c:if test="${empty list}">
		<div align="center">등록된 카드가 없습니다.</div>
		</c:if>
		
		<c:if test="${!empty list}">
		
		<c:forEach var="slist" items="${list}">
		<table class="y_card" border="1">
			<tr>
				<th width="80%">the Black > </th><th><button type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-plus"></span></button></th>
			</tr>
			<tr>
				<td colspan="2"><img src="${pageContext.request.contextPath}/resources/images/card/${slist.info_img}"></td>
			</tr>
			<tr>
				<td colspan="2"><p class="y_nexonB">invitation only</p></td>
			</tr>
			<tr>
				<td colspan="2">the black 어쩌구</td>
			</tr>
			<tr>
				<td colspan="2"><a href="#" data-toggle="tooltip" title="오처넌">연회비 보기</a></td>
			</tr>
		</table>
		</c:forEach>
		
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
				<td><img src="${pageContext.request.contextPath}/resources/images/card/${slist.info_img}"></td>
				<td>${slist.info_stitle}</td>
				<td>${slist.info_scontent}</td>
				<td><a href="#" data-toggle="tooltip" title="${slist.cp_afee})">연회비 보기</a></td>
			</tr>
			</c:forEach>
		</table>
		</c:if>
	</div>
	
</div>