<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-1.12.4.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/layout.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/apply.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/apply.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> --%>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/applysimple.js"></script>
<!-- <script type="text/javascript">
$(function(){
	window.onbeforeunload = function(){
		return '새로고침 or 뒤로가기 내용 초기화 경고';
	};
}); 
</script> -->
<%-- <form:form action="applywrite.do" commandName="sapply" id="Bapply_register" name="sapagree">
	<div class="Bapply_inner">
 	<ul class="Bapply_list">
 		<li>
 		<label for="sap_name" >성명</label>
          <form:input path="sap_name" maxlength="5" placeholder="한글 입력만 가능" id="applylabel" onkeypress="fn_han();"/>
          <form:errors path="ap_name" class="error-color"/>
        <hr>
 		</li>
        <li>
 		<label for="sap_cell">휴대전화</label>  
          <form:input path="sap_cell" maxlength="11" onkeydown="fn_number(this)" 
          placeholder="- 없이 입력"/>
          <form:errors path="ap_cell" class="error-color"/><hr>
        </li>
        <li class="align-center">
          <input type="submit" value="카드신청" class="Bapplybutton">
          <input type="button" value="홈으로" onclick="location.href='${pageContext.request.contextPath}/main/main.do'" class="Bapplybutton">
        </li>
       
 	</ul>
 	</div>
</form:form> --%>
<div class="Bapply_box">
 <h2 align="center"><spring:message code="apply.write.title"/></h2>
 <%-- <h2 align="center"><spring:message code="info.cardid.title"/></h2> --%>
 <form:form action="applywrite.do" commandName="apply" id="Bapply_register" name="apagree" onsubmit="return frmchk();">
 	<p align="center">카드신청 진행 동의</p>
 	<p align="center">개인정보를 위해 동의 및 신청자 본인 확인 후 진행합니다.</p>
 	<div align="center">
 	<input type="checkbox" id="allagree" title="전체동의" name="answer">
 	<label for="agreeChk4">전체 동의</label>
 	<span>
 	<a>
 	<button type="button" class="BapplyBtn" id="myBtn">동의서보기</button>
 	</a>
 	</span>
 	<div class="container">	
  
  <!-- Trigger the modal with a button -->
  

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">개인정보, 고유식별정보 수집 동의</h4>
        </div>
        <div class="modal-body">
          <p>시스템 장애 또는 기타 사유로 카드 신청이 완료되지 못한 경우, 회원님의 편의를 위해 KH카드 상담원이 회원님께 전화를 드리기 위해 아래의 동의가 반드시 필요합니다. 모두 동의 해주셔야만 카드 신청이 가능합니다.
          (오직 카드신청 목적으로만 사용되며 이외의 어떠한 목적으로도 사용되지 않으니 안심해주시기 바랍니다.)
		  <p>
[개인정보 수집 이용에 대한 동의]
상기와 같이 회원님께 전화를 드리기 위하여, 「개인정보보호법」 및 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」의 관련 규정에 따라 회원님의 성명, 전화번호를 수집하여 동의일로부터 일정기간 동안 보유 · 이용하기 위해 동의가 필요합니다.
		  </p>
		  <p>
[고유식별정보의 수집 이용에 대한 동의]
상기와 같이 회원님께 전화를 드리기 위하여, 「개인정보보호법」의 관련 규정에 따라 회원님의 주민등록번호를 수집하여 동의일로부터 일정기간 동안 보유 · 이용하기 위해 동의가 필요합니다.</p>
       
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>
 	<input type="checkbox" id="agree" title="개인정보, 고유식별정보 수집 동의" name="answer">
 	<label for="agreeChk4">개인정보 수집 이용에 대한 동의</label>
 	<input type="checkbox" id="agree2" title="개인정보, 고유식별정보 수집 동의" name="answer">
 	<label for="agreeChk4">고유식별정보의 수집 이용에 대한 동의</label>
 	<p>모두 동의 해주셔야만 신청이 가능합니다.</p>
 	</div>
 	<h2 align="center">본인 확인</h2>
 	<p align="center">신청자 본인 확인을 위한 정보입니다.</p>
 	<hr style="border:solid 2px gray;">
 	<div class="Bapply_inner">
 	<ul class="Bapply_list">
 		<li>
 		<label for="ap_rrn">주민등록번호</label>
			<form:input type="text" path="ap_rrnfront" name="ap_rrnfront" onkeyup="nextgo(this);" maxlength="6" /> 
		   - <form:input type="password" path="ap_rrnrear" name="ap_rrnrear" onkeyup="end(this);" maxlength="7"/>
			<input type="button" onclick="checks();" value="확인" id="endRrn"/>
			<span class="error-color"></span>
			<form:errors path="ap_rrnfront" class="error-color"/><hr>
 		</li>
 		<li>
 		<label for="ap_name" >한글이름</label>
          <form:input path="ap_name" maxlength="5" placeholder="한글 입력만 가능" id="applylabel" onkeypress="fn_han();"/>
          <form:errors path="ap_name" class="error-color"/>
        <hr>
 		</li>
 		<li>
 		<label for="ap_ename">영문이름</label>  
          <form:input path="ap_ename" maxlength="15" onkeydown="fn_eng(this)"
          placeholder="영문 입력만 가능"/>
          <form:errors path="ap_ename" class="error-color"/>
        <hr>
        </li>
        <li>
 		<label for="ap_cell">휴대전화</label>  
          <form:input path="ap_cell" maxlength="11" onkeydown="fn_number(this)" 
          placeholder="- 없이 입력"/>
          <form:errors path="ap_cell" class="error-color"/><hr>
        </li>
        <li>
        <label for="ap_email">이메일</label>  
          <form:input path="ap_email" type="email" maxlength="30" onkeydown="fn_press_han(this)"
          placeholder="test@test.com 형식"/>
          <form:errors path="ap_email" class="error-color"/><hr>
          
        </li>   
        <li>
        <label for="ap_postnum">우편번호</label>
			<form:input path="ap_postnum" type="text" placeholder="우편번호" class="nokey"/>
        	<input value="주소" type="button" onclick="openAddr();"/>
        	<form:errors path="ap_postnum" class="error-color"/>
        <br><br>
        </li>
        
        <li>
        <label for="address1">자택주소</label>
        	<input name="ap_address1" type="text" placeholder="주소" class="nokey"/>
        	<input name="ap_address2" type="text" placeholder="상세주소"/>
        	<form:errors path="ap_address2" class="error-color"/><hr>
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
        <li><br></li>
        <li>
        <label for="ap_bank">은행명/계좌번호</label>
      			<form:select path="ap_bank">
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
				
          <form:input path="ap_banknum" maxlength="20" placeholder="- 없이 입력"/>
          <form:errors path="ap_banknum" class="error-color"/><hr>
        </li>
        <li>
        <label for="ap_job">직업</label>  
          <form:select path="ap_job">
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
				<form:errors path="ap_job2" class="error-color"/><hr><br>
        </li>
        
        <li class="align-center">
          <input type="submit" value="카드신청" class="Bapplybutton">
          <input type="button" value="홈으로" onclick="location.href='${pageContext.request.contextPath}/main/main.do'" class="Bapplybutton">
        </li>
       
 	</ul>
 	</div>
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
