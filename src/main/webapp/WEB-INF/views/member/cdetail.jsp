<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<style type="text/css">
	body {
            margin: 0;
            padding: 20px;
            background: grey;
            color: white;

            font-family: Tahoma, Geneva, sans-serif;
            font-size: 24px;
        }
    table.table-style-one {
        font-family: verdana,arial,sans-serif;
        font-size:11px;
        color:#333333;
        border-width: 1px;
        border-color: #3A3A3A;
        border-collapse: collapse;
        width: 700px;
    }
    table.table-style-one th {
        border-width: 1px;
        padding: 8px;
        border-style: solid;
        border-color: #3A3A3A;
        background-color: #B3B3B3;
    }
    table.table-style-one td {
        border-width: 1px;
        padding: 8px;
        border-style: solid;
        border-color: #3A3A3A;
        background-color: #ffffff;
    }
	
/* Inline Bar Graph */
.iGraph{ white-space:nowrap; line-height:normal;}
.iGraph .gBar{ display:inline-block; width:250px; height:14px; margin:0 5px 0 0; border:1px solid #ccc; background:#e9e9e9; font-size:11px;}
.iGraph .gAction{ display:inline-block; height:14px; border:1px solid #8c9bac; background:#99a6b6; margin:-1px;float: left;}
.iGraph .gPercent{ font:16px Arial, Helvetica, sans-serif; color:#ccc;}
.iGraph .gPercent strong{ font-size:18px; color:#e88b30;}

.limit{ font:16px Arial, Helvetica, sans-serif; color:#ccc;}
.limit strong{ font-size:18px; color:#e88b30;}

</style>
<div align="center">
	<h2>${num }</h2><h4>상세 내역</h4>
</div>
<div align="center">
	<p>이번달 사용금액은 
	<span class="iGraph">
		<span class="gBar"><span class="gAction" style="width:${percent}%"></span></span>
		<span class="gPercent"><strong>${sum}</strong>원</span>
	</span> 
입니다.<br>남은 한도금액은 <span class="limit"><strong>${limit}</strong>원</span>입니다.</p>
</div>
<div align="center">
	<h2>보유 포인트는 : ${point }</h2>
</div>
<div align="center">
	<table class="table-style-one">
    <thead>
    <tr>
        <th>결제일</th><th>결제장소</th><th>결제금액</th><th>포인트</th><th>포인트적립률</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="use" items="${uselist }">
    <tr>
        <td>${use.pay_reg }</td>
        <td>${use.pay_spot }</td>
        <td>${use.pay_price }</td>
        <td>${use.pay_point }</td>
        <td>${use.pay_rate }</td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</div>     






