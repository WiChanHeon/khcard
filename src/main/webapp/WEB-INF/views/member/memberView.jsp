<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>       
<div>
<div style="width: 680px;margin: 1px auto; padding: 1px;" align="center" >
	<h2><spring:message code="member.detail.title" arguments="${member.mem_id}"/></h2>
	<ul style="text-align: left;">
		<li>아이디 : ${member.mem_id}</li>
		<li>이름 : ${member.mem_name}</li>
		<li>이메일 : ${member.mem_email}</li>
		<li>이메일 : ${member.mem_cell}</li>
		<li>가입날짜 : ${member.mem_reg}</li>
		<%-- <li>카드번호 : ${apply.card_num}</li> --%>
	</ul>
	<hr size="1" width="100%">
	<p class="align-right">
		<input type="button" value="수정" onclick="location.href='update.do'">
		<input type="button" value="카드추가" onclick="location.href='plusCard.do'">
		<input type="button" value="회원탈퇴" onclick="location.href='delete.do'">
	</p>
</div>
</div>