<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="row">
	<div class="col-lg-12">
		<h1>
			로그인 페이지 <small>Statistics and more</small>
		</h1>
		<div class="alert alert-dismissable alert-warning">
			<button data-dismiss="alert" class="close" type="button">&times;</button>

			<br />

		</div>
	</div>
</div>

<h1 class="align-center">
	<spring:message code="admember.login.title" />
</h1>
<div class="align-center2">
	<form:form action="login.do" commandName="command" id="login_form">
		<form:errors element="div" class="error-color" />
		<ul>
			<li><label for="m_id">아이디</label> <form:input path="m_id" /> <form:errors
					path="m_id" class="error-color" /></li>
			<li><label for="m_pw">비밀번호</label> <form:password path="m_pw" />
				<form:errors path="m_pw" class="error-color" /></li>
			<br/>
			<li class="align-center" style="margin-left: 20%"><input
				type="submit" value="로그인" > <input
				type="button" value="메인으로"
				onclick="location.href='${pageContext.request.contextPath}/admin/adminMain.do'"
				class="buttonstyle"></li>
		</ul>
	</form:form>
</div>