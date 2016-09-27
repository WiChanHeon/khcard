<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<form:form action="applysimplewrite.do" commandName="applySimple" id="Bapply_register" onsubmit="return Simplepopup(this)" >
	<div class="Bapply_inner">
	<ul class="align-center">
	<li><h2>카드 간편 신청</h2></li>
	<li><h3 class="align-center" style="color:silver;">${param.info_name}</h3> <input type="hidden" name="info_id" value="${param.info_id}"></li>
	<li>지금 카드신청이 어려우시면, KH카드 전문 상담원의 상담이 가능합니다.
		지금 간편하게 성명,휴대전화번호를 남겨주세요.</li>
	<li><hr size="2"></li>	
	</ul>
	
 	<ul class="Bapply_list">
 		<li>
 		<label for="sap_name" >성명</label>
          <form:input path="sap_name" maxlength="5" placeholder="한글 입력만 가능" id="applylabel" onkeypress="fn_han();"/>
          <form:errors path="sap_name" class="error-color"/>
        <hr>
 		</li>
        <li>
 		<label for="sap_cell">휴대전화</label>  
          <form:input path="sap_cell" maxlength="11" onkeydown="fn_number(this)" 
          placeholder="- 없이 입력"/>
          <form:errors path="sap_cell" class="error-color"/><hr>
        </li>
        <li class="align-center">
          <input type="submit" value="카드신청" class="Bapplybutton">
        </li>
 	</ul>
 	<ul class="Bsimple-footer">
 	<li>- 고객님의 편리한 카드신청을 위해 KH카드는 전문 상담원이 전화를 드리고 있습니다.</li>
 	<li>- KH카드의 다양한 혜택과 상품별 장단점을 상세히 알려 드립니다.</li>
 	<li>- 상담 시 필요한 고객님의 성명, 휴대전화번호는 동의 하에 수집합니다.</li>
 	<li>- 수집한 고객님의 정보는 일정기간 보관 후 안전하게 폐기됩니다.</li>
 	<li>- 전화상담 운영 시간 : 평일 오전 9시 ~ 오후 6시(간혹 주말에도 연락이 갈 수 있음)</li>
 	<li>- 기존 회원 상담신청 : KH카드 고객센터(****-****)</li>
 	</ul>
 	</div>
</form:form>