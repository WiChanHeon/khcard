<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/layout.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/info.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/info.js"></script>


<div class="container y_div">
	<div class="y_nav_menu y_center">
		<div class="y_floatright" style="margin:10px 30px 0 0;"><button type="button" class="btn btn-default btn-sm" id="y_btn-compare" data-toggle="tooltip" data-placement="bottom" title="관심카드"><span class="glyphicon glyphicon-plus"></span></button> <span class="badge" id="y_ccount"><c:if test="${sessionScope.ccount > 0}">${sessionScope.ccount}</c:if></span></div>
		
		
		<!-- 카드비교함 시작-->
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
		<!-- 카드비교함 끝 -->
		
		<div class="y_clear"></div>
		<h2><spring:message code="info.slist.title"/></h2>
		<p>신청하고자 하는 카드종류를 선택해 주세요.</p>
		
			<ul id="y_amenu">
				<li><a href="${pageContext.request.contextPath}/info/slist.do?info_rcm=1">추천카드</a></li>
				<li><a href="${pageContext.request.contextPath}/info/slist.do?info_flag=PM">Premium카드</a></li>
				<li><a href="${pageContext.request.contextPath}/info/slist.do?info_flag=PT">포인트카드</a></li>
				<li><a href="${pageContext.request.contextPath}/info/slist.do?info_flag=CB">할인카드</a></li>
				<li><a href="${pageContext.request.contextPath}/info/slist.do?info_flag=ETC">기타카드</a></li>
			</ul>
	</div>
	<br><br>

	<div class="row y_nav_content">	
		<c:if test="${empty list}">
		<div class="y_liketable y_nocard">등록된 카드가 없습니다.</div>
		</c:if>
		
		<c:if test="${!empty list}">
		<c:forEach var="slist" items="${list}">
		<div class="col-sm-4 y_card">			
			<div>
				<div class="y_name"><a href="#">${slist.info_name} > </a></div>
				<c:if test="${empty sessionScope.choice || (sessionScope.choice[0] != slist.info_id && sessionScope.choice[1] != slist.info_id  && sessionScope.choice[2] != slist.info_id)}">
					<div class="y_tooltip-top y_liketable" style="display:none;" id="${slist.info_id}_tooltip">관심카드 담기</div>
					<span class="y_floatright">
						<button type="button" class="btn btn-default y_button" id="${slist.info_id}"><span class="glyphicon glyphicon-plus"></span></button> 
					</span>				
				</c:if>

				<c:if test="${!empty sessionScope.choice && (sessionScope.choice[0] == slist.info_id || sessionScope.choice[1] == slist.info_id  || sessionScope.choice[2] == slist.info_id) }">
					<div class="y_tooltip-top y_liketable" style="display:none;" id="${slist.info_id}_tooltip">관심카드 빼기</div>
					<span class="y_floatright">
						<button type="button" class="btn btn-default y_button" id="${slist.info_id}"><span class="glyphicon glyphicon-minus"></span></button> 
					</span>
				</c:if>
			</div>
			<div class="y_clear">
				<p><img src="${pageContext.request.contextPath}/resources/images/card/${slist.info_img}" class="y_card-img1" id="${slist.info_id}_img"></p> 
				<div class="y_img_btndiv y_liketable" id="${slist.info_id}_img_btnview" style="display:none;"><input type="button" class="btn btn-primary y_img-btn" value="카드선택" onclick="slist.do#"></div> <!-- location.href='${pageContext.request.contextPath}/apply/writeto.do?info_id=${slist.info_id}' -->
			</div>
			<div class="y_nexonB">
				${slist.info_stitle}
			</div>
			<div>
				<p>${slist.info_scontent_br}</p>
			</div>
			<div>
				<span class="y_afee" id="${slist.info_id}_afee">연회비 보기</span>
			</div>
			<div class="y_tooltip-afee" id="${slist.info_id}_afee_view"style="display:none;">
				${slist.cp_afee}
			</div>
			
		</div>
		</c:forEach>
		</c:if>
	</div>
	
	
	<!-- 위로 이동 버튼 -->
	<a href="#" class="back_to_top"></a>  

</div>
