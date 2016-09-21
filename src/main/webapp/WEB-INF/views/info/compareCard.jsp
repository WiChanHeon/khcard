<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//뒤로가기 버튼 막기
	history.pushState(null, null, "#");
	$(window).bind("hashchange", function(){
		alert('이전 페이지로 가려면 \n페이지 하단의 [다시 비교하기] 버튼을 눌러주세요.');
		history.pushState(null, null, "#");
	});
	
	//새로고침/뒤로가기 시 경고창 (사용안함)
	/* window.onbeforeunload = function(){
	return '하단의 다시 비교하기 버튼을 사용해주세요.';
	}; */
});
</script>


<div class="container y_div">
	<div class="y_compare_header y_center">
		<br>
		<h2><spring:message code="info.compareCard.title"/></h2>
	</div>
	
	<div class="y_compare_content">	
		<input type="hidden" id="y_ccount2" value="${sessionScope.ccount}">
		
		<table id="y_ctable">
			<tr>
				<th>카드상품</th>
				<c:forEach var="cp" items="${compare}">	
				<td>
					<p class="y_cname"><a href="${pageContext.request.contextPath}/detail/${cp.info_id}.do">${cp.info_name} > </a></p> 
					<p><img src="${pageContext.request.contextPath}/resources/images/card/${cp.info_img}"></p>
				</td>
				</c:forEach>
			</tr>
			<tr>
				<th>연회비</th>
				<c:forEach var="cp" items="${compare}">	
				<td>${cp.cp_afee}</td>
				</c:forEach>
			</tr>
			<tr>
				<th>바우처</th>
				<c:forEach var="cp" items="${compare}">	
				<td>${cp.cp_voucher}</td>
				</c:forEach>
			</tr>
			<tr>
				<th>주요혜택</th>
				<c:forEach var="cp" items="${compare}">	
				<td>${cp.cp_benefit}</td>
				</c:forEach>
			</tr>
			<tr>			
				<th>프리미엄/<br>플래티넘<br>서비스</th>
				<c:forEach var="cp" items="${compare}">	
				<td>${cp.cp_service}</td>
				</c:forEach>
			</tr>
			<tr>
				<th>추천의견</th>
				<c:forEach var="cp" items="${compare}">	
				<td>${cp.cp_advice}</td>
				</c:forEach>
			</tr>
		</table>
		<br>
		
		<p>- 카드 신청 후 발급 가능 여부는 상품별 심사 기준에 따라 상이</p>
		<p>- M Edition2 계열 상품, T3 Edition2 계열 상품, X Edition2 계열 상품의 경우 당월 50만원 이상 시 적립 및 할인 가능</p>
		<p>- M2·M3·T3·X2·X3 Edition2 플래티넘서비스의 경우 당월 이용금액 50만원 이상 시 익월 이용 가능</p>
		<p>- 각 서비스별 한도 및 유의사항은 상품 상세페이지 참조</p>
		
		<br><br>
		
		<div class="y_center"><input type="button" class="btn btn-default btn-lg" value="다시 비교하기" onclick="location.href='slist.do'"></div>
		
	</div>	
</div>