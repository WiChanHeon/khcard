<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/apply.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
function checkIdNo() {
    var isOk = isIdNoCorrect(document.forms["myForm"]["ap_rrnfront"], 
                                document.forms["myForm"]["app_rrnrear"]);
    if (isOk == false ) {
        alert ("올바르지 않은 주민등록번호입니다.");
        idNoFront.focus();
    } else if (isOk == true) 
        alert("올바른 주민등록번호입니다.");    
}
</script>
<div>
 <h2><spring:message code="apply.write.title"/></h2>
 <form:form action="applywrite.do" commandName="apply">
 	<p>카드신청 진행 동의</p>
 	<p>개인정보를 위해 동의 및 신청자 본인 확인 후 진행합니다.</p>
 	<hr size="2">
 	<span>
 	<input type="checkbox" id="allagree" title="개인정보, 고유식별정보 수집 동의" name="allagree">
 	<label for="agreeChk4">전체 동의</label>
 	<input type="checkbox" id="agree" title="개인정보, 고유식별정보 수집 동의" name="agree">
 	<label for="agreeChk4">개인정보 수집 이용에 대한 동의</label>
 	<input type="checkbox" id="agree2" title="개인정보, 고유식별정보 수집 동의" name="agree2">
 	<label for="agreeChk4">고유식별정보의 수집 이용에 대한 동의</label>
 	</span>
 	<h2>본인 확인</h2>
 	<p>신청자 본인 확인을 위한 정보입니다.</p>
 	<hr> 
 	<ul>
 		<li>
 		<form name="myForm" method="post">
 		<label for="ap_rrn">주민번호</label>
         <%--  <form:input path="ap_rrnfront" maxlength="6"/> - <form:input path="ap_rrnrear" maxlength="7"/>
          <input type="button" id="isIdNoCorrect();" value="체크"/> --%>
         
   		 <input type="text" name="ap_rrnfront"> - <input type="text" name="ap_rrnrear">
   		 <input type="button" value="확인" onclick="checkIdNo()">
 		</form>
 		</li>
 		<li>
 		<label for="ap_name">한글이름</label>  
          <form:input path="ap_name" maxlength="5" placeholder="한글 입력만 가능"/>
          <form:errors path="ap_name" class="error-color"/>
 		</li>
 		<li>
 		<label for="ap_ename">영문이름</label>  
          <form:input path="ap_ename" maxlength="15" onkeydown="fn_press_han(this)"
          placeholder="영문 입력만 가능"/>
          <form:errors path="ap_ename" class="error-color"/>
        </li>
        <li>
 		<label for="ap_cell">휴대전화</label>  
          <form:input path="ap_cell" maxlength="11" onkeypress="return fn_press(event, 'numbers');" 
          onkeydown="fn_press_han(this);" placeholder="- 없이 입력"/>
          <form:errors path="ap_cell" class="error-color"/>
        </li>
        <li>
        <label for="ap_email">이메일</label>  
          <form:input path="ap_email" type="email" maxlength="30" onkeydown="fn_press_han(this)"
          placeholder="test@test.com 형식"/>
          <form:errors path="ap_email" class="error-color"/>
          
        </li>
        <li>
        <label for="ap_postnum">우편번호</label>
        	<%-- <form:input path="ap_postnum" maxlength="50"/>
			<form:errors path="ap_postnum" class="error-color"/>     --%>
        	<input name="ap_postnum" type="text" placeholder="우편번호" class="nokey"/>
        	<input value="주소" type="button" onclick="openAddr();"/>
        </li>
        <li>
        <label for="address1">자택주소</label>
        <%-- 	<form:input path="ap_address1" maxlength="50"/>
        	<form:input path="ap_address2" maxlength="50"/> --%>
        	<input name="ap_address1" type="text" placeholder="주소" class="nokey"/>
        	<input name="ap_address2" type="text" placeholder="상세주소"/>
        </li>
        <li>
        <label for="ap_paydate">결제일</label>
				<form:select path="ap_paydate">
					<option>5</option>
					<option>10</option>
					<option>15</option>
					<option>20</option>
					<option>25</option>
					<option>말일</option>
				</form:select>
        </li>
        <li>
        <label for="ap_bank">은행명</label>
      			<form:select path="ap_bank">
					<option>선택</option>
					<option>산업은행</option>
					<option>기업은행</option>
					<option>국민은행</option>
					<option>외환은행</option>
					<option>수협은행</option>
					<option>농협은행</option>
					<option>지역농협</option>
					<option>우리은행</option>
					<option>신한은행</option>
					<option>기업은행</option>
					<option>하나은행</option>
					<option>기타은행</option>
				</form:select>
				<label for="ap_banknum">계좌번호</label>  
          <form:input path="ap_banknum" maxlength="20" placeholder="- 없이 입력"/>
          <form:errors path="ap_banknum" class="error-color"/>
        </li>
        <li>
        <label for="ap_job">직업</label>  
          <form:select path="ap_job">
					<option>선택</option>
					<option>제조업</option>
					<option>전기,가스 및 수도사업</option>
					<option>건설업</option>
					<option>운수창고 및 통신업</option>
					<option>금융 및 보험</option>
					<option>공공행정,국방 및 사회보장행</option>
					<option>보건 및 사회복지사업</option>
					<option>국제 및 기타 외국기관</option>
					<option>도소매 및 소비자용품수리</option>
					<option>숙박 및 음식점</option>
					<option>부동산,임대 및 사업서비스</option>
					<option>금융서비스업</option>
					<option>기타 공공,사회 및 개인서비스</option>
					<option>가사 서비스업</option>
					<option>농업,수련업 및 임업</option>
					<option>어업</option>
					<option>광업</option>
					<option>무직 or 주부 or 학생,기타</option>
				</form:select>
				<form:input path="ap_job2" maxlength="20"/>
				<form:errors path="ap_job2" class="error-color"/>
        </li>
        <li class="align-center">
          <input type="submit" value="카드신청">
          <input type="button" value="홈으로" onclick="location.href='${pageContext.request.contextPath}/main/main.do'">
        </li>
        
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
