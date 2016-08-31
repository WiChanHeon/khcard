<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<div>
    <h2><spring:message code="member.update.title"/></h2>
	<form:form action="update.do" commandName="command" id="modify_form">
		<ul>
			<li>
				<label for="mem_name">이름</label>
				<form:input path="mem_name" maxlength="30"/>
				<form:errors path="mem_name" class="error-color"/>
			</li>
			<li>
				<label for="mem_pw">비밀번호</label>
				<form:password path="mem_pw" maxlength="15"/>
				<form:errors path="mem_pw" class="error-color"/>
			</li>
			<li>
				<label for="mem_email">이메일</label>
				<form:input path="mem_email" maxlength="50"/>
				<form:errors path="mem_email" class="error-color"/>
			</li>
			<li>
				<label for="mem_cell">전화번호</label>
				<form:input path="mem_cell" maxlength="15"/>
				<form:errors path="mem_cell" class="error-color"/>
			</li>
			<li class="align-center">
				<input type="submit" value="전송">
				<input type="button" value="홈으로"
				         onclick="location.href='${pageContext.request.contextPath}/main/main.do'">
			</li>
		</ul>
	</form:form>
</div>




