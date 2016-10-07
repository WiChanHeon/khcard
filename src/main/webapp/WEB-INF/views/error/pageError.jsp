<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div style="min-height:600px;vertical-align:middle;">
	<table style="text-align:center;margin:0 auto;">
		<tr>
			<td><br><h2>오류 발생</h2><br></td>	
		</tr>
		<tr>
			<td>
				게시판에 오류가 발생했습니다.<br>
				관리자에게 문의해주시기 바랍니다.<br><br>
				<a href="#" onClick="history.back()">이전 페이지로</a> 
			</td>
		</tr>
	</table>
</div>

<%
	Throwable e = (Throwable)request.getAttribute("exception");
	e.printStackTrace();
%>