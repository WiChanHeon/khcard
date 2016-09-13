<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div>
	<h2></h2>
	<form action="list.do" id="search_form" method="get">
		<ul class="search">
			<li>
				<select name="keyfield">
					<option value="title">제목</option>
					<option value="id">ID</option>
					<option value="content">내용</option>
					<option value="all">전체</option>
				</select>
			</li>
			<li>
				<input type="text" size="16" name="keyword">
			</li>
			<li>
				<input type="submit" value="찾기">
			</li>
		</ul>
	</form>
	<table>
		<tr>
			<td class="align-right">
				<input type="button" value="글쓰기" 
				         onclick="location.href='write.do'">
			</td>
		</tr>
	</table>
	
</div>     






