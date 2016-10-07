<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
	
	
	
<div class="row">
	<div class="col-lg-12">
		<h1>
			KH 간편카드신청 <small>Statistics and more</small>
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
					<i class="fa fa-bar-chart-o"></i> 최근 카드 간편신청자 목록
				</h3>
			</div>
			<div class="panel-body">
				<!--테이블 시작  -->
				<div>
					<h3 align="center">카드 간편신청자 목록</h3>
					<div class="search-position">
						<form action="manageSimpleApplyList.do" id="search_form" method="get">
							<ul class="search">
								<li><select name="keyfield"
									style="color: black; font-size: 12pt;">
										<option value="all">전체</option>
										<option value="sap_name">신청인</option>
										<option value="sap_cell">전화번호</option>
										<option value="info_id">카드종류</option>

								</select></li>
								<li style="color: black; font-size: 12pt;"><input
									type="text" size="16" name="keyword"></li>
								<li style="color: black; font-size: 12pt;"><input
									type="submit" value="찾기"></li>
							</ul>
						</form>
					</div>
					<c:if test="${count==0 }">
						<h4 class="empty-list">해당하는 간편 신청자 목록이 없습니다.</h4>
					</c:if>
					<c:if test="${count>0 }">
                    
						<table border="1">
							<tr>
								<th>간편신청번호</th>
								<th>신청인 성명</th>
								<th>전화번호</th>
								<th>카드종류</th>
							</tr>
							<c:forEach var="article" items="${list }">
								<tr>
								<td>${article.sap_num }</td>
								<td>${ article.sap_name}</td>
								<td>${article.sap_cell}</td>
								<td>${article.info_id }</td>
          
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