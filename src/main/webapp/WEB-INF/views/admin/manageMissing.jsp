<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


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
					<div class="search-position">
						<form action="manageMissingList.do" id="search_form" method="get">
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
					<c:if test="${count==0 }">
						<h4 class="empty-list">해당하는 분실신고 목록이 없습니다.</h4>
					</c:if>
					<c:if test="${count>0 }">

						<table border="1">
							<tr>
								<th>분실신고번호</th>
								<th>카드번호</th>
								<th>분실신고 날짜</th>
								<th>재발급 여부</th>
								<th>상태</th>
								<th>관리</th>
							</tr>
							<c:forEach var="article" items="${list }">
								<tr>
									<td>${article.loss_num }</td>

									<td>${article.card_num }</td>
									<td><fmt:formatDate value="${article.loss_reg}"
											pattern="yyyy-MM-dd" /></td>
									<c:if test="${article.loss_memo==0 }">
										<td>NO</td>
									</c:if>
									<c:if test="${article.loss_memo==1 }">
										<td>YES</td>
									</c:if>
									<c:if test="${article.ap_status==1 }">
										<td id="${article.loss_num }" style="width: 200px;">정상</td>
									</c:if>
									<c:if test="${article.ap_status==2 }">
										<td id="${article.loss_num }" style="width: 200px;">일시정지</td>
									</c:if>
									<c:if test="${article.ap_status==9 }">
										<td id="${article.loss_num }" style="width: 200px;">파기</td>
									</c:if>
									<c:if test="${article.ap_status==8 }">
										<td id="${article.loss_num }" style="width: 200px;">재발급</td>
									</c:if>
									<c:if test="${article.ap_status==2}">

										<td id="a${article.loss_num}" style="width: 300px;"><input
											type="button" value="정상처리" data-num="${article.card_num }"
											data-num2="${article.loss_num }" class="returnCard">
											<input type="button" value="파기처리"
											data-num="${article.loss_num }" class="destroyButtonView">
										</td>
										<td id="b${article.loss_num }"
											style="display: none; width: 300px;"><input
											type="button" value="재발급" data-num="${article.card_num }"
											data-num2="${article.loss_num }" class="reissue"> <input
											type="button" value="완전파기" data-num="${article.card_num }"
											data-num2="${article.loss_num }" class="destroy"></td>
										
									   </c:if>
									   <c:if test="${article.ap_status==8||article.ap_status==9||article.ap_status==1}">
									     
										<td style="width: 300px;" ></td>
									   
									   </c:if>
									   
									
								



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