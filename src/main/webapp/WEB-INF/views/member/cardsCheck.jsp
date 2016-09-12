<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
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
	<h2><spring:message code="member.cards.title"/></h2>
	<form:form action="cards.do" commandName="hcommand" id="card_form">
		<form:errors element="div" class="error-color"/>
		<ul style="text-align: center; padding:  0 40px; margin-top: 2%;">
			<li>
				<label for="card_num">카드번호</label>
				<form:input path="card_num" maxlength="16"/>
				<form:errors path="card_num" class="error-color"/>
				<hr style="width: 28%">
			</li>
			<li>
				<label for="card_pw">비밀번호</label>
				<form:password path="card_pw" maxlength="4"/>
				<form:errors path="card_pw" class="error-color"/>
				<hr style="width: 28%">
			</li>
			<li>
				<label for="card_cvc">cvc번호</label>
				<form:input path="card_cvc" maxlength="3"/>
				<form:errors path="card_cvc" class="error-color"/>
				<hr style="width: 28%">
			</li>
			<li class="align-center">
				<input type="submit" value="회원가입">
				<input type="button" value="홈으로" 
				     onclick="location.href='${pageContext.request.contextPath}/main/main.do'">
			</li>
		</ul>
	</form:form>
</div>
