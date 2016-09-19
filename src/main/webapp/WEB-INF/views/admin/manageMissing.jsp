<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/js/confirmCard.js"></script>
<div class="row">
	<div class="col-lg-12">
		<h1>
			KH 카드분실 <small>Statistics and more</small>
		</h1>
		<div class="alert alert-dismissable alert-warning">
			<button data-dismiss="alert" class="close" type="button">&times;</button>
			관리자에게 알립니다! 신청/분실에 관한 승인 및 거절은 사내 절차에 따라 처리하여주시기 바랍니다. <br /> 사이트 오류
			발생 시 웹페이지 담당 관리자에게 연락바랍니다 010-9903-0094
		</div>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">
					<i class="fa fa-bar-chart-o"></i> 최근 분실 신고자 목록
				</h3>
			</div>
			<div class="panel-body">
				<!--테이블 시작  -->
				<div>
					<h3 align="center">카드 분실신고 목록</h3>

					<c:if test="${count==0 }">
						<h4 class="empty-list">해당하는 분실신고 목록이 없습니다.</h4>
					</c:if>
					<c:if test="${count>0 }">
						<div class="search-position">
							<form action="missingApplyList.do" id="search_form" method="get">
								<ul class="search">
									<li><select name="keyfield"
										style="color: black; font-size: 12pt;">
											<option value="all">전체</option>
											<option value="card_num">카드번호</option>
											<option value="loss_reg">분실신고일자</option>
											<option value="loss_num">분실신고번호</option>

									</select></li>
									<li style="color: black; font-size: 12pt;"><input
										type="text" size="16" name="keyword"></li>
									<li style="color: black; font-size: 12pt;"><input
										type="submit" value="찾기"></li>
								</ul>
							</form>
						</div>
						<table border="1">
							<tr>
								<th>분실신고번호</th>
								<th>카드번호</th>
								<th>분실신고 날짜</th>
								<th>분실내용</th>
								<th id="1"></th>
							</tr>
							<c:forEach var="article" items="${list }">
								<tr>
									<td>${article.loss_num }</td>
									<td>${article.card_num }</td>
									<td><fmt:formatDate value="${article.loss_reg}" pattern="yyyy-MM-dd"/></td>
									<td>${article.loss_memo }</td>
									<td><input type="button" value="카드정지" id="buttonstyle">
										<input type="button" value="재발급" id="buttonstyle"></td>
								</tr>
							</c:forEach>
						</table>
						<div class="align-center">${pagingHtml }</div>
					</c:if>
				</div>
				<!--테이블 끝  -->
				<div id="shieldui-grid1"></div>
			</div>
		</div>
	</div>
</div>