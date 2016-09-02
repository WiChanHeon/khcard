<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/usage.js"></script>
<c:if test="${!empty userId}">
<script type="text/javascript">
	function test(){
		var box = document.getElementById("cardcategory");
		var selected = box.options[box.selectedIndex];
		var text="";
		//var text="${pageContext.request.contextPath}/resources/images/";
		if(selected.value == '2')
			document.getElementById("imgId").src = "${pageContext.request.contextPath}/resources/images/card_ZRO.png";
		else if(selected.value == '3')
			document.getElementById("imgId").src = "${pageContext.request.contextPath}/resources/images/card_ME2.png";
	}
</script>
<div>
	<h2><spring:message code="usage.main.title"/></h2>
	<div id="cardss">
	<select id="cardcategory" onChange="test();">
		<option value="1">선택</option>
		<option value="2">1</option>
		<option value="3">2</option>
	</select>
	<img id="imgId">
	</div>
</div>     
</c:if>
<div>
	<span>로그인을 하셔야 사용할수 있습니다</span>.<br>
	<input type="button" value="Log-in" onclick="location.href='${pageContext.request.contextPath}/member/login.do'">
</div>