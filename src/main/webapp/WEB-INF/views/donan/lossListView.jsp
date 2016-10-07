<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="Bapply_box">
<div>
 <h2 class="align-center">분실신청 본인확인</h2>
 <br><br>
	<form:form action="list.do" commandName="apply" id="apply_form">
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
	<c:if test="${!empty lossList && apok}">
	<div class="align-center">
	<table class="Btable">
		<tr class='even'>
			<th>고객명</th>
			<th>카드명</th>
			<th>카드 번호</th>
			<th>결제계좌</th>
			<th>재발급 여부</th>
			<th>카드 상태</th>
			<th>분실신고</th>
			
		</tr>
		<c:forEach var="lossList" items="${lossList}">
		<tr class='even'>
			<td>${lossList.ap_name}</td>
			<td>${lossList.info_id}</td>
			<td>${lossList.card_num}</td>
			<td>${lossList.ap_bank}</td>
			<td><select id="loss_selectbox${lossList.card_num }">
			 <option value="0" selected="selected">아니오</option>
             <option value="1">예</option>
			
			</select>
			</td>
			<c:if test="${lossList.ap_status ==2 }">
			<td>일시정지</td>
			</c:if>
			<c:if test="${lossList.ap_status ==1 }">
			<td id="lossview${lossList.card_num }">사용가능</td>
			</c:if>
			<c:if test="${lossList.ap_status ==9 }">
			<td>파기</td>
			</c:if>
			<c:if test="${lossList.ap_status ==8 }">
			<td>재발급</td>
			</c:if>
			
			<c:if test="${lossList.ap_status !=2&& lossList.ap_status !=9&&lossList.ap_status !=8 }">
			<td><input type="button" value="분실"  data-num="${lossList.card_num }" id="${lossList.card_num }" class="lossApply"></td>
		     </c:if>
		     <c:if test="${lossList.ap_status ==2 }">
		     <td></td>
		     </c:if>
		     <c:if test="${lossList.ap_status ==9 }">
		     <td></td>
		     </c:if>
		     <c:if test="${lossList.ap_status ==8 }">
		     <td></td>
		     </c:if>
		</tr>
		</c:forEach>
		
	</table>
	</div>
	</c:if>
	<c:if test="${empty lossList && apok}">
	<div>
	<p style="text-align: center;">현재 발급된 카드가 존재하지 않거나 성명과 주민번호가 일치하지 않습니다.
	다시 한번 확인해 주세요.</p>
	</div>
	</c:if>
	<br>
	
</div>
</div>
</div>