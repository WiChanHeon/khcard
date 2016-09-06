<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome-4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/layout.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/info.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/info.js"></script>


<div class="y_div">
	
	<!-- 카드비교함 시작-->
	<div class="y_mfix" role="카드비교함 고정영역">
	<div class="y_floatright" style="margin:10px 30px 0 0;"><button type="button" class="btn btn-default btn-sm" id="y_btn-compare" data-toggle="tooltip" data-placement="bottom" title="관심카드"><span class="glyphicon glyphicon-plus"></span></button> <span class="badge" id="y_ccount"><c:if test="${sessionScope.ccount > 0}">${sessionScope.ccount}</c:if></span></div>
	
	<div id="y_compare" style="display:none;">
		<p class="y_ctitle">관심카드 <span id="y_ccount2"><c:if test="${sessionScope.ccount > 0}">(${sessionScope.ccount})</c:if></span> </p>

		<c:if test="${empty sessionScope.choice}">
			<div class="y_cimg" id="y_cimg1"></div>
			<div class="y_cimg" id="y_cimg2"></div>
			<div class="y_cimg" id="y_cimg3"></div>
		</c:if>
		
		<c:if test="${!empty sessionScope.choice}">
		<c:forEach var="i" begin="0" end="2">
			<div class="y_cimg" id="y_cimg${i+1}"> <c:if test="${sessionScope.choice[i]!=null}"><a href="#" class="y_clink" data-id="${sessionScope.choice[i]}"><img src="${pageContext.request.contextPath}/resources/images/card/card_${sessionScope.choice[i]}.png"></a></c:if> </div>
		</c:forEach>
		</c:if>
		
		<form action="compare.do" id="y_compareForm">
			<input type="hidden" name="card1" value="${sessionScope.choice[0]}">
			<input type="hidden" name="card2" value="${sessionScope.choice[1]}">
			<input type="hidden" name="card3" value="${sessionScope.choice[2]}">
			<input type="submit" id="y_cbtn" value="비교하기">
		</form>
		
	</div>
	</div>
	<!-- 카드비교함 끝 -->
	
	
	<div class="y_mmenu y_center">
		<br><br><br>
		<h2><spring:message code="info.matchCard.title"/></h2>
		
		<div class="y_quizbox">
		
			<div id="quiz0">
				<p class="y_quiztitle">포인트와 할인, 어떤 혜택을 원하시나요?</p>
				
				<span>
					<i class="fa fa-credit-card-alt fa-3x" aria-hidden="true"></i>
					<br>
					포인트
				</span>
				<span>
					<i class="fa fa-credit-card fa-3x" aria-hidden="true"></i>
					<br>
					할인
				</span>
			</div>
			
			<div id="quiz1" style="display:none;">
				<p class="y_quiztitle">연회비 / 혜택금액 중 어떠한 기준으로 알아보기를 원하시나요?</p>
				<span>
					<i class="fa fa-calendar-check-o fa-3x" aria-hidden="true"></i>
					<br>
					연회비로 알아보기
				</span>
				<span>
					<i class="fa fa-money fa-3x" aria-hidden="true"></i>
					<br>
					혜택금액이<br>큰 것으로 알아보기
				</span>
				<br><input type="button" class="btn btn-default y_q_first-btn" value="처음부터" onclick="location.href='matchCard.do'">		
			</div>
			
				<div id="quiz1-1" style="display:none;">
					<p class="y_quiztitle">원하시는 연회비는 얼마인가요?</p>
					<span>
						<i class="fa fa-long-arrow-down fa-3x" aria-hidden="true"></i>
						<br>
						1만원 이하
					</span>
					<span>
						<i class="fa fa-arrows-h fa-3x" aria-hidden="true"></i>
						<br>
						1~2만원
					</span>
					<span>
						<i class="fa fa-arrows-h fa-3x" aria-hidden="true"></i>
						<br>
						2~5만원
					</span>
					<span>
						<i class="fa fa-long-arrow-up fa-3x" aria-hidden="true"></i>
						<br>
						5만원 이상
					</span>
					<br><input type="button" class="btn btn-default y_q_first-btn" value="처음부터" onclick="location.href='matchCard.do'">		
				</div>
				
					<div id="quiz1-1-1" style="display:none;">
						<p class="y_quiztitle-card">내게 맞는 카드 상품은?</p>
						<div class="y_qcard">
							<img src="${pageContext.request.contextPath}/resources/images/card/card_CMH.png" class="y_matchCard" data-id="CMH">
								<div class="y_matchCard-btndiv" id="CMH_btnview" style="display:none;">
									<a class="btn btn-primary y_matchCard-btn" onclick="alert('~~')">인터넷신청</a> <!-- location.href='${pageContext.request.contextPath}/apply/writeto.do?info_id=${alist.info_id}' -->
									<a class="btn y_matchCard-btn y_matchCard-btn2" onclick="alert('!!')">전화신청</a>
									<div class="y_img_span">
									 
									</div>
								</div>	
							<br><div class="y_name"><a href="#">현대카드M HYBRID ></a></div>
							<br><p>M포인트 적립 하이브리드카드</p>
						</div>
						<br><input type="button" class="btn btn-default y_q_first-btn" value="처음부터" onclick="location.href='matchCard.do'">		
					</div>
			
			
		<br></div><br>
		
	</div>

	
	<div class="y_mcontent container">
		<div>	
			<p class="y_msubject">보기 쉬운 KH카드 전체 목록</p>
		</div>
			
		<c:if test="${empty list}">
		<div class="y_liketable y_nocard">등록된 카드가 없습니다.</div>
		</c:if>
		
		<c:if test="${!empty list}">
		<c:forEach var="alist" items="${list}">
		<div class="col-sm-4 y_card">			
			<div>
				<div class="y_name"><a href="#">${alist.info_name} > </a></div>
				<c:if test="${empty sessionScope.choice || (sessionScope.choice[0] != alist.info_id && sessionScope.choice[1] != alist.info_id  && sessionScope.choice[2] != alist.info_id)}">
					<div class="y_tooltip-top y_liketable" style="display:none;" id="${alist.info_id}_tooltip">관심카드 담기</div>
					<span class="y_floatright">
						<button type="button" class="btn btn-default y_button" id="${alist.info_id}"><span class="glyphicon glyphicon-plus"></span></button> 
					</span>				
				</c:if>

				<c:if test="${!empty sessionScope.choice && (sessionScope.choice[0] == alist.info_id || sessionScope.choice[1] == alist.info_id  || sessionScope.choice[2] == alist.info_id) }">
					<div class="y_tooltip-top y_liketable" style="display:none;" id="${alist.info_id}_tooltip">관심카드 빼기</div>
					<span class="y_floatright">
						<button type="button" class="btn btn-default y_button" id="${alist.info_id}"><span class="glyphicon glyphicon-minus"></span></button> 
					</span>
				</c:if>
			</div>
			<div class="y_clear">
				<p><img src="${pageContext.request.contextPath}/resources/images/card/${alist.info_img}" class="y_card-img1" id="${alist.info_id}_img"></p> 
				<div class="y_img_btndiv" id="${alist.info_id}_img_btnview" style="display:none;">
					<a class="btn btn-primary y_img-btn" onclick="alert('~~')">카드선택</a> <!-- location.href='${pageContext.request.contextPath}/apply/writeto.do?info_id=${alist.info_id}' -->
					<span class="y_img_span"></span>
				</div>				
			</div>
			<div class="y_nexonB">
				${alist.info_stitle}
			</div>
			<div>
				<p class="y_m_scontent">${alist.info_scontent_br}</p>
			</div>
			<div>
				<span class="y_afee" id="${alist.info_id}_afee">연회비 보기</span>
			</div>
			<div class="y_tooltip-afee" id="${alist.info_id}_afee_view"style="display:none;">
				${alist.cp_afee}
			</div>
			
		</div>
		</c:forEach>
		</c:if>
	</div>

</div>