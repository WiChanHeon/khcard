<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div>
	<br><br><br><br><br><br><br>
	<h2 align="center"><spring:message code="apply.apcomplete.title"/></h2>
	<br><br>
	
	<p class="align-center BapplyP">
	카드는 심사가 모두 완료된 후에 발급이 완료됩니다. 카드발급조회에서 심사 여부를 확인하실 수 있습니다.<br>
	KH Card의 교통,문화,쇼핑 등 특화된 다양한 혜택도 만나보세요.
	</p>
	<br><br><br><br>
	
	<div class="align-center">
		<input type="button" value="메인으로" onclick="location.href='${pageContext.request.contextPath}/main/main.do'" class="Bapplycbutton">
		<input type="button" value="카드발급조회" onclick="location.href='${pageContext.request.contextPath}/apply/applyEvalView.do'" class="Bapplycbutton">
		<br><br><br><br><br><br><br>
	</div>
</div>