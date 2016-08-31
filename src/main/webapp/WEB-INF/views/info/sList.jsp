<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/info.js"></script>


<div class="container y_div">
	<div class="y_clear"></div>
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
		<div class="col-sm-4 y_card">
			<div><div class="y_name">${slist.info_name} > </div><span class="y_floatright"><button type="button" class="btn btn-default btn-sm" id="${slist.info_id}_button" style="margin:0 10px 0 0;"><span class="glyphicon glyphicon-plus"></span></button></span></div>
			<div class="y_clear y_liketable"><img src="${pageContext.request.contextPath}/resources/images/card/${slist.info_img}"></div>
			<div class="y_nexonB">${slist.info_stitle}</div>
			<div><p>${slist.info_scontent}</p></div>
			<div><span class="y_afee" data-toggle="tooltip" title="${slist.cp_afee}">연회비 보기</span></div>
			
		</div>
		</c:forEach>
		</c:if>
	</div>
	
</div>