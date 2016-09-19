<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<style type="text/css">
    table.table-style-one {
        font-family: verdana,arial,sans-serif;
        font-size:11px;
        color:#333333;
        border-width: 1px;
        border-color: #3A3A3A;
        border-collapse: collapse;
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
</style>
<div align="center">
	<h2>${num }</h2><h4>상세 내역</h4>
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






