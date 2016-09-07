<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	
	
	<!-- 사이드 메뉴 시작 -->
	<nav class="w3-sidenav w3-black" style="width:50px;"> 
		<span style="font-size: 10px; cursor: pointer; margin-left: 20px;" onclick="openNav()">&#9776;
		</span>
		<a class="w3-padding-16" href="#"><i class="fa fa-home w3-large"></i></a>
  		<a class="w3-padding-16" href="#"><i class="fa fa-search w3-large"></i></a>
 		<a class="w3-padding-16" href="#"><i class="fa fa-envelope w3-large"></i></a>
  		<a class="w3-padding-16" href="#"><i class="fa fa-globe w3-large"></i></a>
  		<a class="w3-padding-16" href="#"><i class="fa fa-trash w3-large"></i></a>
	</nav>

		<div style="margin-left: 70px">
		
		
	<div id="mySidenav" class="sidenav">
	<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
			<a href="#section2">쓰기</a>
			<a href="#section2">보고서</a>
			<a href="#section3">예산쓰기</a>
			<a href="#section3">희망목표/이야기 0/0</a>
			
			<div class="w3-accordion">
   			 <a onclick="myAccFunc1()" href="#">이달의 자산현황 <i class="fa fa-caret-down"></i>
   			 </a>
    		<div id="demoAcc1" class="w3-accordion-content w3-white w3-card-4">
     		    <a href="#section3">자산</a>
     		 	<a href="#section3">부채</a>
     		 	<a href="#section3">순자산</a>
   			 </div>
  			</div>
			
			<div class="w3-accordion">
   			 <a onclick="myAccFunc2()" href="#">이달의 가계<i class="fa fa-caret-down"></i>
   			 </a>
    		<div id="demoAcc2" class="w3-accordion-content w3-white w3-card-4">
     		    <a href="#section3">수입</a>
				<a href="#section3">이달의 수입</a>
				<a href="#section3">전월이월</a>
				<a href="#section3">지출</a>
				<a href="#section3">현금지출</a>
				<a href="#section3">카드지출</a>
				<a href="#section3">수입 - 지출</a>
   			 </div>
  		</div>
	 </div>
	</div>
	<!-- 사이드 메뉴 끝 -->
	
	<!-- 상단 차트 시작 -->
	<div id="chartContainer" style="height: 300px; width: 90%;"></div>
	<!-- 상단 차트 끝 -->
	
	<!-- 하단 입력 메뉴 -->
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
				<td><input type="date" name="fname" style="border: 0px; width:120px;"></td>
				<td><input type="text" name="fname" style="border: 0px; width:120px;"></td>
				<td><input type="text" name="fname" style="border: 0px; width:120px;"></td>
				<td><input type="text" name="fname" style="border: 0px; width:120px;"></td>
				<td><input type="text" name="fname" style="border: 0px; width:120px;"></td>
				<td>
					<select>
					<option selected="selected">-</option> 
						<option>식비</option>
						<option>주거/통신</option>
						<option>생활용품</option>
						<option>의복/미용</option>
						<option>건강/문화</option>
						<option>교육/육아</option>
						<option>교통/차량</option>
						<option>경조사/회비</option>
						<option>세금/이자</option>
						<option>용돈/기타</option>
						<option>미분류</option>
					</select></td>
				<td><input type="text" name="fname" style="border: 0px; width:120px;"></td> 
			</tr>
		</tbody>
			</table>
		
			
		<div class="rok">
				<input type="submit" class="w3-btn w3-slim" value="정산하기">
				<input type="submit" class="w3-btn w3-slim" value="저장하기">	
		</div>
		
	 </form:form>	
	<!-- 하단 입력 메뉴 끝 -->
		
<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "200px";
    document.getElementById("main").style.marginLeft = "200px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
    document.body.style.backgroundColor = "white";
}

function myAccFunc1() {
    var x = document.getElementById("demoAcc1");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
        x.previousElementSibling.className += " w3-black";
    } else {
        x.className = x.className.replace(" w3-show", "");
        x.previousElementSibling.className =
        x.previousElementSibling.className.replace(" w3-black", "");
    }
}
function myAccFunc2() {
    var x = document.getElementById("demoAcc2");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
        x.previousElementSibling.className += " w3-black";
    } else {
        x.className = x.className.replace(" w3-show", "");
        x.previousElementSibling.className =
        x.previousElementSibling.className.replace(" w3-black", "");
    }
}

window.onload = function () {
	
	var chart = new CanvasJS.Chart("chartContainer", {
		title:{
			text: "2016.09.01 - 2016.09.30"              
		},
		data: [              
		{
			// Change type to "doughnut", "line", "splineArea", etc.
			type: "column",
			dataPoints: [
				<c:forEach var="a" items="${list}">	
				{ label: "식비",  y: ${a.ca_price}  },
				{ label: "주거 통신", y: 15  },
				{ label: "생활용품", y: 25  },
				{ label: "의복/미용",  y: 30  },
				{ label: "건강/문화",  y: 28  }
				</c:forEach>
			] 
		}
		]
	});
	chart.render();
}

</script>	
	
