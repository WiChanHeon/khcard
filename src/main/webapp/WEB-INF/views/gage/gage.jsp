<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript"> 
      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      
					function drawChart() {

						// Create the data table.
						var data = google.visualization
								.arrayToDataTable([
										[ 'Month', 'Bolivia', 'Ecuador',
												'Madagascar',
												'Papua New Guinea', 'Rwanda'],
										[ '2016/05', 165, 938, 522, 998, 450],
										[ '2016/06', 135, 1120, 599, 1268, 288],
										[ '2016/07', 157, 1167, 587, 807, 397],
										[ '2016/08', 139, 1110, 615, 968, 215],
										[ '2016/09', 136, 691, 629, 1026, 366] ]);

						var options = {
							title : '',
							vAxis : {
								title : '이용내역'
							},
							hAxis : {
								title : '월별 사용내역'
							},
							seriesType : 'bars',
							series : {
								5 : {
									type : 'line'
								}
							}
						};

						var chart = new google.visualization.ComboChart(
								document.getElementById('chart_div'));
						chart.draw(data, options);
					}

					function myAccFunc1() {
						var x = document.getElementById("demoAcc1");
						if (x.className.indexOf("w3-show") == -1) {
							x.className += " w3-show";
							x.previousElementSibling.className += " w3-black";
						} else {
							x.className = x.className.replace(" w3-show", "");
							x.previousElementSibling.className = x.previousElementSibling.className
									.replace(" w3-black", "");
						}
					}
					function myAccFunc2() {
						var x = document.getElementById("demoAcc2");
						if (x.className.indexOf("w3-show") == -1) {
							x.className += " w3-show";
							x.previousElementSibling.className += " w3-black";
						} else {
							x.className = x.className.replace(" w3-show", "");
							x.previousElementSibling.className = x.previousElementSibling.className
									.replace(" w3-black", "");
						}
					}
					function date() {
					    var x = document.getElementById("mySelect").value;
					    document.getElementById("demo").innerHTML = "You selected: " + x;
					}
					$('#fromDate').on('change', function() {
				        $('#toDate').prop('min', $(this).val());
				    });
				    $('#toDate').on('change', function() {
				        $('#fromDate').prop('max', $(this).val());
				    });
		</script>
  </head>
	<!-- 사이드 메뉴 시작 -->
	<nav class="w3-sidenav w3-card-2" style="width:15%; background-color: #E9EBEF;">
			
			<div class="pont">
			<a href="#section2"><img src="../resources/images/write.png" style="display: inline-block;">쓰기</a>
			<a href="#section2"><img src="../resources/images/report.PNG" style="display: inline-block;">보고서</a>
			<a href="#section3"><img src="../resources/images/yesan.PNG" style="display: inline-block;">예산쓰기</a>
			<a href="#section3"><img src="../resources/images/plan.PNG" style="display: inline-block;">희망목표/이야기 0/0</a>
			
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
	</nav>
	<!-- 사이드 메뉴 끝 -->
	
	
	<!--기간 조회 메뉴바  시작-->
	<div style="margin-left:20%; margin-top:2%; margin-bottom:1px;">     
	<ul class="w3-pagination w3-white-black">  
		<li><a class="w3-dark-grey">조회기간</a></li>
	</ul>
	</div>
	
	<form id="date" action="date.do">
	<div id="mySelect" class="w3-btn-bar w3-border w3-show-inline-block" style="width:70%; margin-left:20%; margin-top:1px; margin-bottom:1px;">
  		<button class="w3-btn" value="today">당일</button>
  		<button class="w3-btn" value="week">일주일</button>
  		<button class="w3-btn" value="month">1개월</button>
  		<button class="w3-btn" value="3month">3개월</button>
		<ul class="w3-pagination w3-white-black"> <li><a class="w3-dark-grey">기간설정</a></li></ul>
    <div>
        <label for="fromDate">시작일 :</label>
        <input type="date" id="fromDate" required="" />~
        <label for="toDate">종료일 :</label>
        <input type="date" id="toDate" required="" />
    </div>
   	 <input type="submit" value="조회"/>
	</div>
	</form>

	<!-- 기간 조회 메뉴바 끝  -->
	
	<!-- 사용 내역 테이블 -->
	<form id="data_form">
		<!-- <div class="button">
			<button onclick="add_tr()">항목 추가</button>
			<button onclick="delete_tr()">항목 삭제</button>
		</div> -->
		<table style="margin-left:20%; width: 70%;">    
			<thead>
				<tr>
					<th>카드번호</th>
					<th>승인일자</th>
					<th>승인금액</th>
					<th>가맹점명</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="article" items="${list}">
					<tr>
						<td>${article.card_num}</td>
						<td>${article.ca_reg}</td>
						<td>${article.ca_price}</td>
						<td>${article.ca_spot}</td>
						<td>${article.ca_memo}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>


		<!-- <div class="rok">
			<input type="submit" class="w3-btn w3-slim" value="정산하기"> <input
				type="submit" class="w3-btn w3-slim" value="저장하기">
		</div> -->
	</form> 	
	<!-- 사용내역 끝 -->
	
	<!-- 차트 시작 -->
		<div id="chart_div" style="width: 70%; height: 500px; margin-left:20%;"></div>
		<!-- 차트 끝 -->