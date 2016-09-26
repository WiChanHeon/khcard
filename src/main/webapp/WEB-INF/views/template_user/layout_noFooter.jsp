<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%-- stylesheet와 javascript 링크 ignore="true"로 설정하면 null일 때 실행되지 않음
<tiles:importAttribute name="cssList" ignore="true"/>
<tiles:importAttribute name="jsList" ignore="true"/>--%>
<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
	<!--<![endif]-->

	<head>
		<meta charset="utf-8">
		<title>The Project | Home Commerce</title>
		<meta name="description" content="The Project a Bootstrap-based, Responsive HTML5 Template">
		<meta name="author" content="htmlcoder.me">

		<!-- Mobile Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- Favicon -->
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/user/images/favicon.ico">

		<!-- Web Fonts -->
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Raleway:700,400,300' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=PT+Serif' rel='stylesheet' type='text/css'>
		
		<!-- Bootstrap core CSS -->
		<link href="${pageContext.request.contextPath}/resources/user/bootstrap/css/bootstrap.css" rel="stylesheet">

		<!-- Font Awesome CSS -->
		<link href="${pageContext.request.contextPath}/resources/user/fonts/font-awesome/css/font-awesome.css" rel="stylesheet">

		<!-- Fontello CSS -->
		<link href="${pageContext.request.contextPath}/resources/user/fonts/fontello/css/fontello.css" rel="stylesheet">

		<!-- Plugins -->
		<link href="${pageContext.request.contextPath}/resources/user/plugins/magnific-popup/magnific-popup.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/user/plugins/rs-plugin/css/settings.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/user/css/animations.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/user/plugins/owl-carousel/owl.carousel.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/user/plugins/owl-carousel/owl.transitions.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/user/plugins/hover/hover-min.css" rel="stylesheet">
		
		<!-- the project core CSS file -->
		<link href="${pageContext.request.contextPath}/resources/user/css/style.css" rel="stylesheet" >

		<!-- Color Scheme (In order to change the color scheme, replace the blue.css with the color scheme that you prefer)-->
		<link href="${pageContext.request.contextPath}/resources/user/css/skins/light_blue.css" rel="stylesheet">
		
		<!-- Custom Scripts -->
		<link href="${pageContext.request.contextPath}/resources/user/css/custom.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/css/gage.css" rel="stylesheet"> 
		<!--jQuery dependencies-->
		<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
		<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.0.0/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
		
		<%-- <c:forEach var="cssName" items="${cssList}">
			<link rel="stylesheet" href="<c:out value='${cssName}' />"/>
		</c:forEach> --%>
	</head>

	<!-- body classes:  -->
	<!-- "boxed": boxed layout mode e.g. <body class="boxed"> -->
	<!-- "pattern-1 ... pattern-9": background patterns for boxed layout mode e.g. <body class="boxed pattern-1"> -->
	<!-- "transparent-header": makes the header transparent and pulls the banner to top -->
	<body class="no-trans  transparent-header ">

		<!-- scrollToTop -->
		<!-- ================ -->
		<div class="scrollToTop circle"><i class="icon-up-open-big"></i></div>
		
		<!-- page wrapper start -->
		<!-- ================ -->
		<div class="page-wrapper">
			<!-- 헤더 시작 -->
			<tiles:insertAttribute name="header"/>
		    <!-- 헤더 끝 -->
			<!-- 바디 시작 -->
			<tiles:insertAttribute name="body"/>
			<!-- 바디 끝 -->
			<!-- section end -->
			
		</div>
		<!-- page-wrapper end -->

		<!-- JavaScript files placed at the end of the document so the pages load faster -->
		<!-- ================================================== -->
		<!-- Jquery and Bootstap core js files -->
		<script src="http://canvasjs.com/assets/script/canvasjs.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/plugins/jquery.min.js"></script>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/bootstrap/js/bootstrap.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.2/moment-with-locales.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.0.0/js/bootstrap-datetimepicker.min.js"></script>
		<!-- Modernizr javascript -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/plugins/modernizr.js"></script>

		<!-- jQuery Revolution Slider  -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/plugins/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/plugins/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

		<!-- Isotope javascript -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/plugins/isotope/isotope.pkgd.min.js"></script>
		
		<!-- Magnific Popup javascript -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
		
		<!-- Appear javascript -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/plugins/waypoints/jquery.waypoints.min.js"></script>

		<!-- Count To javascript -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/plugins/jquery.countTo.js"></script>
		
		<!-- Parallax javascript -->
		<script src="${pageContext.request.contextPath}/resources/user/plugins/jquery.parallax-1.1.3.js"></script>

		<!-- Contact form -->
		<script src="${pageContext.request.contextPath}/resources/user/plugins/jquery.validate.js"></script>

		<!-- Background Video -->
		<script src="${pageContext.request.contextPath}/resources/user/plugins/vide/jquery.vide.js"></script>

		<!-- Owl carousel javascript -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/plugins/owl-carousel/owl.carousel.js"></script>
		
		<!-- SmoothScroll javascript -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/plugins/jquery.browser.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/plugins/SmoothScroll.js"></script>

		<!-- Initialization of Plugins -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/template.js"></script>

		<!-- Custom Scripts -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/custom.js"></script>
		
		<!-- Custom Scripts1 -->
		<script src="${pageContext.request.contextPath}/resources/js/donan.js"></script>
		
		<%-- <c:forEach var="jsName" items="${jsList}">
			<script src="<c:out value='${jsName}' />"></script>
		</c:forEach> --%>
	</body>
</html>
