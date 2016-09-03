<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/layout.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/info.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/info.js"></script>

<div class="container y_div">
	<div class="y_compare_header y_center">
		<br>
		<h2><spring:message code="info.compareCard.title"/></h2>
	</div>
	
	<div class="y_compare_content">	
	
		<c:if test="${empty compare}">
			비교불가능
		</c:if>
		<c:if test="${!empty compare}">
			비교가능
			
		</c:if>

		
		<table>
			<c:forEach var="cp" items="${compare}">			
			<tr>
				<th>카드상품</th>
				<td><p><a href="#">${cp.info_name}</a></p> <p><img src="${pageContext.request.contextPath}/resources/images/card/${cp.info_img}"></p> </td>
			</tr>
			<tr>
				<th>연회비</th>
				<td>${cp.cp_afee}</td>
			</tr>
			<tr>
				<th>주요혜택</th>
				<td>${cp.cp_benefit}</td>
			</tr>
			<tr>
				<th>추천의견</th>
				<td>${cp.cp_advice}</td>
			</tr>
			</c:forEach>
		</table>
		
		<p>- 카드 신청 후 발급 가능 여부는 상품별 심사 기준에 따라 상이</p>
		<p>- M Edition2 계열 상품, T3 Edition2 계열 상품, X Edition2 계열 상품의 경우 당월 50만원 이상 시 적립 및 할인 가능</p>
		<p>- M2·M3·T3·X2·X3 Edition2 플래티넘서비스의 경우 당월 이용금액 50만원 이상 시 익월 이용 가능</p>
		<p>- 각 서비스별 한도 및 유의사항은 상품 상세페이지 참조</p>
		
		<div class="y_center"><input type="button" class="btn btn-default btn-lg" value="다시 비교하기" onclick="location.href=history.go(-1)"></div>
		
	</div>	
</div>