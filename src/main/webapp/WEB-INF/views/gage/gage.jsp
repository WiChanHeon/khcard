<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>	
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 70%;
	margin-top: 50px;
	margin-bottom: 50px;
} /*테이블*/
input.box1,input.box2,input.box3,input.box4,input.box5,input.box6,input.box7 {
	width: 70%;
}
td, th { 	 
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}/*테이블*/
div.rok{
	width: 70%;
    margin-left: 110px; 
    text-align: right;  
}/*저장 정산*/
body {
    font-family: "Lato", sans-serif;
    transition: background-color .5s;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 10px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 10px;
    color: #818181;
    display: block;
    transition: 0.3s
}

.sidenav a:hover, .offcanvas a:focus{
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

#main {
    transition: margin-left .5s;
    padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>

<div id="mySidenav" class="sidenav">
	<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
	<a href="#section2">보고서</a>
			<a href="#section3">예산쓰기</a>
			<a href="#section3">희망목표/이야기 0/0</a>
			<a href="#section3">이달의 자산현황</a>
			<a href="#section3">자산</a>
			<a href="#section3">현금잔액</a>
			<a href="#section3">투자자산</a>
			<a href="#section3">기타자산</a>
			<a href="#section3">부채</a>
			<a href="#section3">대출</a>
			<a href="#section3">기타부채</a>
			<a href="#section3">순자산</a>
			<a href="#section3">이달의 가계</a>
			<a href="#section3">수입</a>
			<a href="#section3">이달의 수입</a>
			<a href="#section3">전월이월</a>
			<a href="#section3">지출</a>
			<a href="#section3">현금지출</a>
			<a href="#section3">카드지출</a>
			<a href="#section3">수입 - 지출</a>	
</div>

	<div id="main">
	<span style="font-size: 15px; cursor: pointer; margin-top: 10px;" onclick="openNav()">&#9776;
		가계부</span>
	
	<form:form action="write.do" commandName="command" method="post">
	<table>
		<thead>
			<tr>
				<th>날짜</th>
				<th>사용내역</th>
				<th>현금</th>
				<th>카드</th>
				<th>출금통장</th>
				<th>분류</th>
				<th>태그</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><input type="date" class="box1" name="ca_reg"></td>
				<td><input type="text" class="box2" name="ca_spot"></td>
				<td><input type="text" class="box3" name="ca_price"></td>
				<td><input type="text" class="box4" name="card_num"></td>
				<td><input type="text" class="box5" name="ca_sort"></td>
				<td><input type="text" class="box6" name="ca_category"></td>
				<td><input type="text" class="box7" name="ca_memo"></td>
			</tr>
		</tbody>
	</table>
		<div class="rok">
				<input type="submit" class="w3-btn w3-slim" value="정산하기">
				<input type="submit" class="w3-btn w3-slim" value="저장하기">
				
		</div>
	</form:form>
	</div>

<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
    document.body.style.backgroundColor = "white";
}
</script>