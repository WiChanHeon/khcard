<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	alert('잘못된 접근입니다.');
	location.href='${pageContext.request.contextPath}/admin/coboardList.do';
</script>