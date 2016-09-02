<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script>
$(document).ready(function() {
    $("#btn1").click(function(){
    	
    	var flag = $('#c').prop('checked');
    	
    	  if(flag) {
    	   	$(".p").show();
    	  }else{
    	   	alert('카드 선택은 필수입니다!');
    	  }
    });
   
});
</script>
<div>
   <h2>
      <img
         src="${pageContext.request.contextPath}/resources/images/h2_lost01_1.gif"
         alt="분실신고/재발급신청" />
   </h2>
   <h3>분실카드 선택</h3>

		<table class="table table-bordered">
			<thead>
				<tr>
					<th>선택</th>
					<th>구분</th>
					<th>고객명</th>
					<th>카드구분</th>
					<th>카드번호</th>
					<th>제휴명</th>
					<th>결제계좌</th>
					<th>재발급 신청여부</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="a" items="${list}">
				<tr>
					<td><input type="checkbox" id="c"></td>
					<td>복수</td>
					<td>${a.ap_name}</td>
					<td>현대카드</td>
					<td>${a.card_num}</td>
					<td>${a.info_id}</td>
					<td>${a.ap_bank}</td>
					<td>아니오</td>
				</tr>
				</c:forEach>

			</tbody>
		</table>
		
		<input type="button" id="btn1" value="분실 신고">
</div>

	<form:form action="write.do" commandName="command">
		<div class="p" style="display:none;">
			<h3>분실신고 접수</h3>
			<!-- <div>
				<label for="date">분실일</label> 
			<input type="text" id="testDatepicker">
			</div> -->
		<ul>
			
			<li><label for="loss_reg">분실일</label> 
				<input type="date" name="loss_reg"></li>
			<li>
			<em style="display:block; margin-bottom:3px">ex)삼성동에서 지갑분실</em>
				<label for="loss_memo">분실 장소</label>
				<input type="text" name="loss_memo"></li>
			
			<li><label for="loss_phone">연락처</label>
				<input type="text" name="loss_phone"></li>
			
				<li><input type="submit" value="신고"></li>
		
		</ul>
		</div>
	</form:form>