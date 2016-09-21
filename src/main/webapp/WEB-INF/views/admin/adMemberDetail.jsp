<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div class="col-lg-12">
		<h1>
			<spring:message code="admember.detail.title"
				arguments="${admember.m_id }" />
			<small>Statistics and more</small>
		</h1>
		<div class="alert alert-dismissable alert-warning">
			<button data-dismiss="alert" class="close" type="button">&times;</button>

			<br />

		</div>
	</div>
</div>
<div>
	<ul>
		<li>아이디: ${admember.m_id }</li>
		<li>이름: ${admember.m_name }</li>
		<li>연락처:${admember.m_cell }</li>
		<li>이메일: ${admember.m_email }</li>
		<li>부서:${admember.m_dept }</li>
		<li>직책: ${admember.m_position }</li>

	</ul>
	<hr size="1" width="100%">
</div>


