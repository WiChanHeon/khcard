<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="Bapply_box">
<div>

<div class="Border_info">
<h2 align="center"><spring:message code="apply.eval.title"/></h2><br>
 	<ul class="Bimg_infor type1">
 	<li class="Bapply">신청 접수</li>
 	<li class="Binput">서류심사/전화심사</li>
 	<li class="Bscreen">심사 처리중/확정완료</li>
 	<li class="Bdecide">카드제작/발송</li>
 	</ul>
 	<ol class="Border_txt type1 align">
 	<li>접수중</li> 
 	<li>입력 처리중</li>
 	<li>심사 처리중</li>
 	<li>확정완료</li>
 	<li>카드수령</li>
 	</ol><br>
</div>

<br><br>
 <h2 class="align-center"><spring:message code="apply.evalcheck.title"/></h2>
 <br><br>
	<form:form action="applyEvalView.do" commandName="apply" id="apply_form">
      <form:errors element="div" class="error-color"/>
      <ul class="Bevaluation">
          <li>
           <label for="ap_name">성명</label>
           <form:input path="ap_name" maxlength="5"/>
           <form:errors path="ap_name" class="error-color"/>
           <br><br>
          </li>
          <li>
           <label for="ap_rrnrear">주민번호</label>  <form:input path="ap_rrnfront" maxlength="6"/> -
           <form:password path="ap_rrnrear" maxlength="7"/>
           <form:errors path="ap_rrnrear" class="error-color"/>
           <br><br><br>
         </li>
         
      </ul>
         <div class="align-center">
           <input type="submit" value="확인" class="Bapplybutton">
           <br><br><br><br>
         </div>
	</form:form>
    <div id="BevalTable">
	<c:if test="${!empty apply2 && apok}">
	<%-- <h2><spring:message code="apply.detail.title" arguments="${apply.ap_name}"/></h2> --%>
	<div class="align-center">
	<table class="Btable">
		<tr class='even'>
			<th>신청번호</th>
			<th>성명</th>
			<th>카드명</th>
			<th>신청날짜</th>
			<th>상태</th>
		</tr>
		<c:forEach var="apply2" items="${apply2}">
		<tr class='even'>
			<td>${apply2.ap_num }</td>
			<td>${apply2.ap_name}</td>
			<td>${apply2.info_id}</td>
			<td>${apply2.ap_reg}</td>
			<c:if test="${apply2.ap_pass == 0 }">
			<td>고객님께서 신청하신 카드가 정상적으로 심사 접수 되었고, 현재 발급 진행중입니다.</td>
			</c:if>
			<c:if test="${apply2.ap_pass == 1 }">
			<td>축하드립니다. 고객님께서 신청하신 카드가 정상적으로 심사 승인되어 10영업일 안으로 발송됩니다.</td>
			</c:if>
			<c:if test="${apply2.ap_pass == 2 }">
			<td>고객님께서는 저희 KH카드 심사조건에 맞지 않아 카드발급이 거절되었습니다.</td>
			</c:if>
			<c:if test="${apply2.ap_pass == 3 }">
			<td>죄송합니다. 고객님께서 신청하신 카드가 정상적으로 접수되었으나 심사 보류중에 있어 몇 가지 확인차 연락 후 진행됩니다.</td>
			</c:if>
			
		</tr>
		</c:forEach>
		
	</table>
	</div>
	</c:if>
	<c:if test="${empty apply2 && apok}">
	<div>
	<p>현재 발급 중인 카드가 존재하지 않거나 성명과 주민번호가 일치하지 않습니다.
	다시 한번 확인해 주세요.</p>
	</div>
	</c:if>
	<br>
	<%-- <c:if test="${!empty applyName}">
	<li class="align-center">
	<input type="button" value="조회완료" class="Bapplybutton" onclick="location.href='${pageContext.request.contextPath}/apply/checkout.do'">
	</li>
	</c:if> --%>
</div>
  
</div>
</div>
<%-- <div class="apply_box">
 <h2 align="center"><spring:message code="apply.evaluation.title"/></h2>
 <h2 align="center"><spring:message code="info.cardid.title"/></h2>
 <form:form action="applyEvalView.do" commandName="apply" id="">
 	<div class="Border_info">
 	<ul class="Bimg_infor type1">
 	<li class="Bapply">신청 접수</li>
 	<li class="Binput">서류심사/전화심사</li>
 	<li class="Bscreen">심사 처리중/확정완료</li>
 	<li class="Bdecide">카드제작/발송</li>
 	</ul>
 	<ol class="Border_txt type1 align">
 	<li>접수중</li> 
 	<li>입력 처리중</li>
 	<li>심사 처리중</li>
 	<li>확정완료</li>
 	<li>카드수령</li>
 	</ol><br>
 	
 	<form:errors element="div" class="error-color"/>
 	<div class="apply_inner">
      <ul class="apply_list">
      	<li>
      
		</li>
         <li>
            <label>성명</label>
            <form:input path="ap_name" />
            <form:errors path="ap_name" class="error-color"/>
         </li>
         <li>
            <label for="ap_rrn">주민등록번호</label>
            <form:input path="ap_rrnfront" />
            <form:errors path="ap_rrnfront" class="error-color"/>
            -<form:password path="ap_rrnrear"/>
            <form:errors path="ap_rrnrear" class="error-color"/>
         </li>
         <li class="align-center">
            <input type="submit" value="발급심사조회" id="evalContent">
         </li>
         
      </ul>
      </div>
      
 	</div>
 	
 	<!-- 접수중입력 처리중 심사 처리중확정완료카드수령
 	
 	조회했을때 필요한 부분은 ? 신청자 성명,카드종류,신청심사접수일,최종처리상태,content
 					  ap_name,info_id,ap_reg,ap_pass=감사합니다. 고객님께서 신청하신 카드가 정상적으로 심사 접수 되었고, 현재 발급 진행중입니다.
 					  						 ap_pass=축하드립니다. 고객님께서 신청하신 카드가 정상적으로 심사 승인되어 10영업일 안으로 발송됩니다.
 					  						 ap_pass=죄송합니다. 고객님께서는 저희 KH카드 심사조건에 맞지 않아 카드발급이 거절되었습니다.
 					  						 ap_pass=죄송합니다. 고객님께서 신청하신 카드가 정상적으로 접수되었으나 심사 보류중에 있어 몇 가지 확인차 연락 후 진행됩니다.
 	신청하지 않은 사람이 조회결과확인시 ? 고객님께서는 카드신청내역이 존재하지 않습니다.다시한번 확인해주세요.
 	-카드발급조회는 최근 3개월 이내 신청하신 카드에 대해 조회 가능합니다.  -->
 	 <div>
		<h2 class="align-center">${apply.title}</h2>
	<ul>
		<li>신청일:${apply.ap_reg} 카드이름:${apply.info_id} 성명:${apply.ap_name} 결과:${apply.ap_pass}</li>
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
</div> --%>
