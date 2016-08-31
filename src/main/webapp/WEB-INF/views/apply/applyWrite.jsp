<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-1.12.4.min.js"></script>
<div>
 <h2><spring:message code="apply.write.title"/></h2>
 <form:form action="applywrite.do">
 	<p>카드신청 진행 동의</p>
 	<p>개인정보를 위해 동의 및 신청자 본인 확인 후 진행합니다.</p>
 	<hr size="2">
 	<span>
 	<input type="checkbox" id="agreeChk" title="개인정보, 고유식별정보 수집 동의" name="agreeChk">
 	<label for="agreeChk4">전체 동의</label>
 	<input type="checkbox" id="agreeChk" title="개인정보, 고유식별정보 수집 동의" name="agreeChk">
 	<label for="agreeChk4">개인정보 수집 이용에 대한 동의</label>
 	<input type="checkbox" id="agreeChk" title="개인정보, 고유식별정보 수집 동의" name="agreeChk">
 	<label for="agreeChk4">고유식별정보의 수집 이용에 대한 동의</label>
 	</span>
 	<h2>본인 확인</h2>
 	<p>신청자 본인 확인을 위한 정보입니다.</p>
 	<hr>
 	<ul>
 		<li>
 		<label for="ap_name">한글이름</label>  
          <form:input path="ap_name" maxlength="5"/>
          <form:errors path="ap_name" class="error-color"/>
 		</li>
 		<label for="ap_ename">영문이름</label>  
          <form:input path="ap_ename" maxlength="15"/>
          <form:errors path="ap_ename" class="error-color"/>
 	</ul>
 </form:form>
   <!-- 고유번호 		ap_num;		
		주민번호 		ap_rrn;		
		이름 			ap_name;	
		영문이름 		ap_ename;	
		전화번호 		ap_cell;	
		이메일 		ap_email;	
		주소			ap_address;	
		결제일		ap_paydate;	선택문
		은행명 		ap_bank;	선택문
		계좌번호 		ap_banknum;	
		카드신청날짜	ap_reg;		date생성
		직업			ap_job;		선택문
		카드비밀번호 	ap_pass;	전화번호 뒤 네자리
		회원아이디 		ap_id;		카드만들땐 피료없고
		회원카드번호	card_num; 						-->
</div>
