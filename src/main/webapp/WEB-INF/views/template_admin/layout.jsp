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
    
    <!--모리스차트  -->
   <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
   <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
   <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
   <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>

    
     
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/admin/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/admin/bootstrap/js/bootstrap.min.js"></script>

    

    <!-- you need to include the shieldui css and js assets in order for the charts to work -->
    <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.min.css" />
    <link id="gridcss" rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/dark-bootstrap/all.min.css" />

    <script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
    <script type="text/javascript" src="http://www.prepbootstrap.com/Content/js/gridData.js"></script>
    
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin.css">
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
               
               var browsersPopularity = [
                                         ["XPE2",${xpe2Count} ],
                                         ["TB", ${tbCount}],
                                         ["TP", ${tpCount}],
                                         ["TRE2",${tre2Count} ],
                                         ["ME2", ${me2Count}],
                                         ["MPE2",${mpe2Count}],
                                         ["M3",${m3pe2Count}],
                                         ["T3PE2",${t3pe2Count}],
                                         ["XE2",${xe2Count}],
                                         ["X3PE2",${x3pe2Count}],
                                         ["ZRO",${zroCount}],
                                         ["CMH",${cmhCount}]
                                       ];

            $("#shieldui-chart2").shieldChart({
                theme: "dark",
                primaryHeader: {
                    text: "최다 신청 카드"
                },
                exportOptions: {
                    image: true,
                    print: true
                },
                dataSeries: [{
                    seriesType: "pie",
                    collectionAlias: "신청수",
                    data: browsersPopularity
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
            
            });            
        });    
        
         Morris.Bar({
        	  element: 'totalApplyCount',
        	  data: [
        	    { y: 'XPE2', a: ${xpe2Count}  },
        	    { y: 'TB', a: ${tbCount}   },
        	    { y: 'TP', a: ${tpCount}   },
        	    { y: 'TRE2', a: ${tre2Count}  },
        	    { y: 'ME2', a: ${me2Count}  },
        	    { y: 'MPE2', a: ${mpe2Count}  },
        	    { y: 'M3', a: ${m3pe2Count} },
        	    { y: 'T3PE2', a: ${t3pe2Count} },
        	    { y: 'XE2', a: ${xe2Count} },
        	    { y: 'X3PE2', a: ${x3pe2Count} },
        	    { y: 'ZRO', a: ${zroCount} },
        	    { y: 'CMH', a: ${cmhCount} }
           	  ],
        	  xkey: 'y',
        	  ykeys: ['a'],
        	  labels: ['총 카드신청 수']
        	});
         
         

    </script>
     

</body>
</html>
