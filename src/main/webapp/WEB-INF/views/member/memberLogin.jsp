<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<style>
input {
	width: 30%; 
	margin-bottom: 10px; 
	background: rgba(0,0,0,0.3);
	border: none;
	outline: none;
	padding: 10px;
	font-size: 13px;
	color: #fff;
	text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
	border: 1px solid rgba(0,0,0,0.3);
	border-radius: 4px;
	box-shadow: inset 0 -5px 45px rgba(100,100,100,0.2), 0 1px 1px rgba(255,255,255,0.2);
	-webkit-transition: box-shadow .5s ease;
	-moz-transition: box-shadow .5s ease;
	-o-transition: box-shadow .5s ease;
	-ms-transition: box-shadow .5s ease;
	transition: box-shadow .5s ease;
}
li {
	list-style: none;
}
.error-color{
	text-align: center;
	color: red;
}
</style>  
<div style="margin: 20px; border: 1px;">
	<h2 align="center" style="margin: 10px;"><spring:message code="member.login.title"/></h2>
	<form:form action="login.do" commandName="hcommand" id="login_form">
		<form:errors element="div" class="error-color"/>
		<div align="center">
		<ul style="text-align: center;">
			<li>
				<label for="mem_id">아이디</label><br>
				<form:input path="mem_id"/>
				<form:errors path="mem_id" class="error-color"/>
			</li>
			<li>
				<label for="mem_pw">비밀번호</label><br>
				<form:password path="mem_pw" />
				<form:errors path="mem_pw" class="error-color"/>
			</li>
			</ul>
			<ul>
			<li style="width: 20%;">
				<input type="submit" class="btn" value="전송">
				<input type="button" class="btn" value="홈으로" 
				     onclick="location.href='${pageContext.request.contextPath}/main/main.do'">
			</li>
		</ul>
		</div>
	</form:form>
</div>


