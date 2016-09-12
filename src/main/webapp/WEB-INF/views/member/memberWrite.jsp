<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/confirmId.js"></script>
<style>
        form {
            margin: 30px;
        }
        #asd{
        	width: 1030px;
        	padding: 48px 0;
        	margin: 0 auto;
        	border: 1px solid #e1e1e1;
        }
        li {
		list-style: none;
		}
</style>
<div id="asd">
    <h2><spring:message code="member.write.title"/></h2>
	<form:form action="write.do" commandName="hcommand" id="register_form">
		<ul style="text-align: center; padding:  0 40px; margin-top: 2%;">
			<li>
				<label for="mem_id">아이디</label>
				<form:input path="mem_id" maxlength="20"/>
				<input type="button" id="confirmId" value="ID중복체크">
				<span id="id_signed" class="error-color"></span>
				<img src="${pageContext.request.contextPath}/resources/images/ajax-loader.gif"
				     width="16" height="16" id="loading" style="display:none;">
				<form:errors path="mem_id" class="error-color"/>
				<hr style="width: 28%">
			</li>
			<li>
				<label for="mem_name">이름</label>
				<form:input path="mem_name" maxlength="30"/>
				<form:errors path="mem_name" class="error-color"/>
				<hr style="width: 28%">
			</li>
			<li>
				<label for="mem_pw">비밀번호</label>
				<form:password path="mem_pw" maxlength="15"/>
				<form:errors path="mem_pw" class="error-color"/>
				<hr style="width: 28%">
			</li>
			<li>
				<label for="mem_email">이메일</label>
				<form:input path="mem_email" maxlength="50"/>
				<form:errors path="mem_email" class="error-color"/>
				<hr style="width: 28%">
			</li>
			<li>
				<label for="mem_cell">전화번호</label>
				<form:input path="mem_cell" maxlength="15"/>
				<form:errors path="mem_cell" class="error-color"/>
				<hr style="width: 28%">s
			</li>
			<li class="align-center">
				<input type="submit" value="전송">
				<input type="button" value="홈으로"
				         onclick="location.href='${pageContext.request.contextPath}/main/main.do'">
			</li>
		</ul>
	</form:form>
</div>




