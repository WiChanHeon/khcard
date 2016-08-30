<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Dark Admin</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin/css/local.css" />

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/admin/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/admin/bootstrap/js/bootstrap.min.js"></script>

    <!-- you need to include the shieldui css and js assets in order for the charts to work -->
    <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.min.css" />
    <link id="gridcss" rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/dark-bootstrap/all.min.css" />

    <script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
    <script type="text/javascript" src="http://www.prepbootstrap.com/Content/js/gridData.js"></script>
</head>
<body>
    <div id="wrapper">
        <!-- 헤더 시작 -->
        <tiles:insertAttribute name="header"/>
        <!-- 헤더 끝 -->
        <div id="page-wrapper">
            <!-- 바디 시작 -->
            <tiles:insertAttribute name="body"/>
            <!-- 바디 끝 -->
        </div>    
    </div>
    <!-- /#wrapper -->

    <script type="text/javascript">
        jQuery(function ($) {
            var performance = [12, 43, 34, 22, 12, 33, 4, 17, 22, 34, 54, 67],
                visits = [80, 323, 500, 32],
                traffic = [
                {
                                     신청번호: "태원", Amount: 323, Change: 53, Percent: 23, Target: 600,ㅇㅇ:24,심사:"<input type='button' value='전송'>"
                },
                {
                	신청번호: "ㅇㅇ", Amount: 345, Change: 34, Percent: 45, Target: 567
                },
                {
                	신청번호: "Social", Amount: 567, Change: 67, Percent: 23, Target: 456
                },
                {
                	신청번호: "Search", Amount: 234, Change: 23, Percent: 56, Target: 890
                },
                {
                	신청번호: "Internal", Amount: 111, Change: 78, Percent: 12, Target: 345
                }];


            $("#shieldui-chart1").shieldChart({
                theme: "dark",

                primaryHeader: {
                    text: "Visitors"
                },
                exportOptions: {
                    image: false,
                    print: false
                },
                dataSeries: [{
                    seriesType: "area",
                    collectionAlias: "Q Data",
                    data: performance
                }]
            });

            $("#shieldui-chart2").shieldChart({
                theme: "dark",
                primaryHeader: {
                    text: "Traffic Per week"
                },
                exportOptions: {
                    image: false,
                    print: false
                },
                dataSeries: [{
                    seriesType: "pie",
                    collectionAlias: "traffic",
                    data: visits
                }]
            });

            $("#shieldui-grid1").shieldGrid({
                dataSource: {
                    data: traffic
                },
                sorting: {
                    multiple: true
                },
                rowHover: false,
                paging: false,
                columns: [
                { field: "신청번호", width: "170px", title: "신청번호" },
                { field: "Amount", title: "Amount" },                
                { field: "Percent", title: "Percent", format: "{0} %" },
                { field: "Target", title: "Target" },
                { field: "oo",title:"oo"},
                { field: "심사",title:"심사상태"}
                ]
            });            
        });        
    </script>
</body>
</html>
