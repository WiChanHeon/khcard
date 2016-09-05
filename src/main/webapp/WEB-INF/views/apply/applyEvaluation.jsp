<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/applyeval.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/apply.css">
<div  class="apply_box">
   <h2><spring:message code="apply.Evaluation.title"/></h2>
   <form:form action="applyEval.do" commandName="apply" id="apply_register">
      <form:errors element="div" class="error-color"/>
      <div class="apply_inner">
      <ul>
         <li>
            <label for="ap_name">성명</label>
            <form:input path="ap_name" maxlength="10"/>
            <form:errors path="ap_name" class="error-color"/>
         </li>
         <li>
            <label for="ap_rrn">주민등록번호</label>
            <form:password path="ap_rrnfront" maxlength="6"/>
            <form:errors path="ap_rrnfront" class="error-color"/>
            -<form:input path="ap_rrnrear" maxlength="7"/>
            <form:errors path="ap_rrnrear" class="error-color"/>
         </li>
         <li class="align-center">
            <input type="submit" value="발급심사조회">
            <p>어쩌라고 넌 심사조건이 안돼 이자식아 꺼져</p>
         </li>
      </ul>
      </div>
   </form:form>
</div>