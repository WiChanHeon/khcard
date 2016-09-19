<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:if test="${!empty userId}">
<script type="text/javascript">
	function test(){
		var box = document.getElementById("cardcategory");
		var selected = box.options[box.selectedIndex];
		var text="";
		var output ="";
		if(selected.value == '0'){
			document.getElementById("imgId").src = "${pageContext.request.contextPath}/resources/images/card_ZRO.png";
			
			output += '<c:forEach var="card" items="${cards}" varStatus="status">';
			output += '<c:if test="${status.count==1 }">';
			output += '<div style="height: 100px;">';
			output += '이달의 사용금액은 :<a href="cdetail.do?cardnum=<c:forEach var="i" items="${num }" varStatus="status"><c:if test="${status.count==1 }">${i}</c:if></c:forEach>"> ${card.month }</a><br>';
			output += '</div>';
			output += '<div style="height: 100px;">';
			output += '남은 카드한도는 : ${card.limit }<br>';
			output += '</div>';
			output += '<div style="height: 100px;">';
			output += '남은 포인트는 : ${card.pay_point}';
			output += '</div>';
			output += '</c:if>';
			output += '</c:forEach>';
			
			document.getElementById("views").innerHTML=output;
		}
		else if(selected.value == '1'){
			document.getElementById("imgId").src = "${pageContext.request.contextPath}/resources/images/card_ME2.png";
			
			output += '<c:forEach var="card" items="${cards}" varStatus="status">';
			output += '<c:if test="${status.count==eyongs0 }">';
			output += '<div style="height: 100px;">';
			output += '이달의 사용금액은 :<a href="cdetail.do?cardnum=<c:forEach var="i" items="${cards }" varStatus="status"><c:if test="${status.count==cusenumber }">${i.card_bunho}</c:if></c:forEach>">${card.month }</a><br>';
			output += '</div>';
			output += '<div style="height: 100px;">';
			output += '남은 카드한도는 : ${card.limit }<br>';
			output += '</div>';
			output += '<div style="height: 100px;">';
			output += '남은 포인트는 : ${card.pay_point}';
			output += '</div>';
			output += '</c:if>';
			output += '</c:forEach>';
			
			document.getElementById("views").innerHTML=output;
			
		}
	}

</script>
<div id="cardsLeft" style="width: 45%;border-right: 1px solid; float: left;">
	<h2 align="center"><spring:message code="member.usageMain.title"/></h2>
	<div id="cardss">
	<select id="cardcategory" onChange="test();" style="width: 200px; border-left: 1px; " >
		<option value="123">선택</option>
		<c:forEach var="i" items="${num }" varStatus="asd">
		<option value="${asd.index}">${i}</option>
		</c:forEach>
	</select>
	<div id="cardsImage">
	<img id="imgId" src="${pageContext.request.contextPath}/resources/images/card_ZRO.png">
	</div>
	</div>
	
</div>
	<div style="width: 45%; float: right;" id="views">
			<c:forEach var="card" items="${cards}"  varStatus="status">
			<c:if test="${status.count==1 }">
				<div style="height: 100px;">
				이달의 사용금액은 : <a href="cdetail.do?cardnum=<c:forEach var="i" items="${num }" varStatus="status"><c:if test="${status.count==1 }">${i }</c:if></c:forEach>">${card.month }</a><br>
				</div>
				<div style="height: 100px;">
				남은 카드한도는 : ${card.limit }<br>
				</div>
				<div style="height: 100px;">
				남은 포인트는 : ${card.pay_point}
				</div>
			</c:if>
			</c:forEach>
	</div>
</c:if>
<c:if test="${empty userId}">
<div>
	<span>로그인을 하셔야 사용할수 있습니다</span>.<br>
	<input type="button" value="Log-in" onclick="location.href='${pageContext.request.contextPath}/member/login.do'">
</div>
</c:if>