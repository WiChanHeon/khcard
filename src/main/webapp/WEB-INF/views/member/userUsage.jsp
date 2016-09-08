<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:if test="${!empty userId}">
<script type="text/javascript">
	function test(){
		var box = document.getElementById("cardcategory");
		var selected = box.options[box.selectedIndex];
		var text="";
		if(selected.value == '2')
			document.getElementById("imgId").src = "${pageContext.request.contextPath}/resources/images/card_ZRO.png";
		else if(selected.value == '3')
			document.getElementById("imgId").src = "${pageContext.request.contextPath}/resources/images/card_ME2.png";
	}
</script>
<div id="cardsLeft" style="width: 50%;">
	<h2 align="center"><spring:message code="usage.main.title"/></h2>
	<div id="cardss">
	<select id="cardcategory" onChange="test();" style="width: 200px; border-left: 1px;" >
		<option value="1">선택</option>
		<option value="2">1</option>
		<option value="3">2</option>
	</select>
	<div id="cardsImage">
	<img id="imgId" src="${pageContext.request.contextPath}/resources/images/card_ZRO.png">
	</div>
	</div>
	<div>
		<c:forEach var="card" items="${cards}">
			<ul>
				<li>${card}</li>
			</ul>
		</c:forEach>
	</div>
</div>
</c:if>
<c:if test="${empty userId}">
<div>
	<span>로그인을 하셔야 사용할수 있습니다</span>.<br>
	<input type="button" value="Log-in" onclick="location.href='${pageContext.request.contextPath}/member/login.do'">
</div>
</c:if>