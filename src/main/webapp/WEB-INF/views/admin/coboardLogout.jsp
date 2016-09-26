<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	alert('로그아웃 상태입니다. 다시 로그인 해주세요.');
	location.href='${pageContext.request.contextPath}/admin/login.do';
</script>