<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/donan.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



<div class="container">
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
				<td><input type="checkbox"></td>
				<td>복수</td>
				<td>위*헌</td>
				<td>통합신한</td>
				<td>4364-****-****-7640</td>
				<td>S-Choice체크</td>
				<td>후불</td>
				<td>아니오</td>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
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
	<button type="submit" class="btn btn-default">분실 신고</button>
</div>
