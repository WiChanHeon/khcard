<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


	<!-- 사이드 메뉴 시작 -->
	<nav class="w3-sidenav w3-card-2" style="width:140px; background-color: #E6E8ED;">
			
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
			
	<div>
		<h2 style="text-align: center;">2016.09.01 - 2016.09.30</h2>		
	</div>		
	<div class="w3-container" style="margin-left:130px">
  
	<!-- 사이드 메뉴 끝 -->
	<div class="container">
		<ul class="nav nav-tabs">
			<li><a href="#">지출</a></li>
			<li><a href="#">수입</a></li>
			<li><a href="#">달력</a></li>
		</ul>
		<br>
		<!-- 상단 차트 시작 -->
		<div id="chartContainer" style="height: 300px; width: 90%;"></div>
		<!-- 상단 차트 끝 -->
	</div>
		<!-- 하단 입력 메뉴 -->
		<form id="data_form">
		<!-- <div class="button">
			<button onclick="add_tr()">항목 추가</button>
			<button onclick="delete_tr()">항목 삭제</button>
		</div> -->
		<table>
				<thead>
					<tr>
						<th>날짜</th>
						<th>현금</th>
						<th>수입입력</th>
						<th>분류</th>
						<th>메모</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
						<input type="date" name="ca_reg" id="ca_reg"
							style="border: 0px; width: 100%;"></td>
						<td><input type="text" name="ca_sort" id="ca_sort"
							style="border: 0px; width: 100%;"></td>
						<td><input type="text" name="ca_income" id="ca_income" 
							style="border: 0px; width: 100%;"></td>
						<td><select>
								<option selected="selected" id="ca_category">-</option>
								<option value="food">식비</option>
								<option value="etc">미분류</option>
						</select></td>
						<td><input type="text" name="ca_memo" id="ca_memo"
							style="border: 0px; width: 120px;"></td>
					</tr>
				</tbody>
			</table>


			<div class="rok">
				<input type="submit" class="w3-btn w3-slim" value="정산하기"> <input
					type="submit" class="w3-btn w3-slim" value="저장하기">
			</div>
		</form>

	</div>
	

	<!-- 하단 입력 메뉴 끝 -->
		
<script>
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
//행개수
var count = 1;
//최대 행개수
var full_count = 5;
  //행추가
  function add_tr() {
 //최대 행개수보다 크면 리턴
 if(count>full_count){
  alert("최대5개까지만 가능합니다.");
  return;
 }
 
 //추가할 HTML
 var add_cell1 = "<input type=date name=ca_reg"+count+" id=ca_reg"+count+" size=10>"; 
 var add_cell2 = "<input type=text name=ca_sort"+count+" id=ca_sort"+count+" size=10>";
 var add_cell3 = "<input type=text name=ca_income"+count+"id=ca_income"+count+" size=10>";
 var add_cell4 = "<input type=text name=ca_memo"+count+"id=ca_memo"+count+" size=10>";
 
 //행추가할 테이블 가져오기
 var table_name = document.getElementById("table");
 
 //tr만들기
 var new_row = table_name.insertRow();
 
 //td만들기
 var new_cell1 = new_row.insertCell();
 var new_cell2 = new_row.insertCell();
 var new_cell3 = new_row.insertCell();
 var new_cell4 = new_row.insertCell();

 //td안에 넣을 HTML
 new_cell1.innerHTML = add_cell1;
 new_cell2.innerHTML = add_cell2;
 new_cell3.innerHTML = add_cell3;
 new_cell4.innerHTML = add_cell4;
 //행추가할때마다 행개수 +1
 count++;
  }

  //행삭제
  function delete_tr() {
 //행삭제할 테이블 가져오기
    var table = document.getElementById('table');
 
 //행이 하나밖에 없으면 삭제하지 않기
    if (table.rows.length < 2){
     alert("더이상 삭제할수 없습니다.");
     return;
    }
 
 //tr삭제하기
    table.deleteRow(table.rows.length - 1);
 //삭제할때마다 행개수 -1
 count--;
  }
  
  
/* $(document).ready(function(){
	
	var inputData,i;
    
	   inputData = [];
	
	//데이터 입력 폼에 내용 입력시  데이터 배열에 담기
		$("#ca_sort").focusin(function(){
	        $(this).val('');
	});
	    $("#ca_category").focusin(function(){
	    	$(this).val('');
	});
	   
	   for (i=0;i<fLen;i++) {
	        text += inputData[i];
	    }    
	   <c:forEach var="a" items="${list}">
	   document.getElementById("demo").innerHTML = text;
	   </c:forEach>
}); */
	
window.onload = function () {
	
	var chart = new CanvasJS.Chart("chartContainer",
	{
		legend: {
			maxWidth: 350,
			itemWidth: 120
		},
		data: [
		{
			type: "pie",
			showInLegend: true,
			legendText: "{indexLabel}",
			dataPoints: [
			 			<c:forEach var="a" items="${list}">
			 				{ label: "식비",  y: ${a.ca_price}  },
			 				{ label: "주거 통신", y: ${a.ca_spot} },
			 				{ label: "생활용품", y: 25  },
			 				{ label: "의복/미용",  y: 30  },
			 				{ label: "건강/문화",  y: 28  }
			 			] 
			 			</c:forEach>
		}
		]
	});
	chart.render();
}
</script>	
	
