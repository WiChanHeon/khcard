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
<style>
#testDatepicker {
    width: 10%;
}
</style>
<script>
$(function() {
    $( "#testDatepicker" ).datepicker({
    	showOn: "both", 
        buttonImage: "${pageContext.request.contextPath}/resources/images/btn_calendar.gif"
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
					<th>Casg/교통</th>
					<th>재발급 신청여부</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="checkbox" value=""></td>
					<td>복수</td>
					<td>위*헌</td>
					<td>통합신한</td>
					<td>4364-****-****-7640</td>
					<td>S-Choice체크</td>
					<td>후불</td>
					<td>아니오</td>
				</tr>
				<tr>
					<td><input type="checkbox" value=""></td>
					<td>복수</td>
					<td>위*헌</td>
					<td>통합신한</td>
					<td>4364-****-****-7640</td>
					<td>S-Choice체크</td>
					<td>후불</td>
					<td>아니오</td>
				</tr>

			</tbody>
		</table>

	<div class="container">
		<button type="button" class="btn btn-danger" data-toggle="collapse"
			data-target="#demo">분실 신고</button>
		<div id="demo" class="collapse">
			<h3>분실신고 접수</h3>
			<form>
				<label for="date">분실일</label> 
			<input type="text" id="testDatepicker">
			</form>
			
			<form>
			<em style="display:block; margin-bottom:3px">ex)삼성동에서 지갑분실</em>
				<label for="where">분실 장소</label>
			<input type="text" id="where">
			</form>
			
			<label for="phone">연락처</label>
			<div class="contGp">
				<input type="text" name="phone_1" id="phone_1" maxlength="4" style="width: 50px;"> <span>-</span> 
				<input type="text" name="phone_2" id="phone_2" maxlength="4" style="width: 50px;"> <span>-</span>
				<input type="text" name="phone_3" id="phone_3" maxlength="4" style="width: 50px;">
			</div>
			<button type="button" class="btn btn-danger" style="align-right">신고</button>
		</div>
	</div>

</div>
      
      
      


