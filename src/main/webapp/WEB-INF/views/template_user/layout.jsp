f<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%-- stylesheet와 javascript 링크 ignore="true"로 설정하면 null일 때 실행되지 않음
<tiles:importAttribute name="cssList" ignore="true"/>
<tiles:importAttribute name="jsList" ignore="true"/>--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:getAsString name="title"/></title>

 	<!-- CSS --> 
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome-4.6.3/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/layout.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/detail.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/info.css">
	<link href="${pageContext.request.contextPath}/resources/user/css/custom.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/donan.css" rel="stylesheet">
	<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
</head>
<body>
	
	<!-- scrollToTop -->
	<div class="scrollToTop circle"><i class="fa fa-arrow-up fa-2x" aria-hidden="true"></i></div>
	
	<div class="page-wrapper">
		<!-- 헤더 시작 -->
		<tiles:insertAttribute name="header"/>
	    <!-- 헤더 끝 -->

		<!-- 바디 시작 -->
		<tiles:insertAttribute name="body"/>
		<!-- 바디 끝 -->

		<!-- 푸터 시작 -->
		<tiles:insertAttribute name="footer"/>
		<!-- 푸터 끝 -->
	</div>
	
	<!-- JavaScript -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.matchHeight.js"></script>

	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/layout.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/info.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/donan.js"></script>
</body>
</html>
