<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <h2>
      <img
         src="${pageContext.request.contextPath}/resources/images/h2_lost01_1.gif"
         alt="분실신고/재발급신청" />
   </h2>
	<h4>분실카드 선택</h4>
	<table>
		<thead>
			<tr>
				<th><p align="center">선택</p></th>
				<th><p align="center">구분</p></th>
				<th><p align="center">고객명</p></th>
				<th><p align="center">카드구분</p></th>
				<th><p align="center">카드번호</p></th>
				<th><p align="center">제휴명</p></th>
				<th><p align="center">결제계좌</p></th>
				<th><p align="center">재발급 신청여부</p></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="a" items="${list}">
				<tr>
					<td><p align="center"><input type="checkbox" id="c"></p></td>
					<td><p align="center">복수</p></td>
					<td><p align="center">${a.ap_name}</p></td>
					<td><p align="center">현대카드</p></td>
					<td><p align="center">${a.card_num}</p></td>
					<td><p align="center">${a.info_id}</p></td>
					<td><p align="center">${a.ap_bank}</p></td>
					<td>
						<p align="center">
						<select name="recard">
						<option value="no">아니오</option>
						<option value="yes">예</option>
						</select>
						</p>
					</td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
		
		<div class="bun">
		<input type="button" id="btn1" value="분실 신고" class="btn btn-primary">
		</div>

	<form:form action="write.do" commandName="command" onsubmit="return validateForm(this)" method="post" name="myForm">
	<div class="jub1" style="display: none;">
	<h4>분실신고 접수</h4>
	</div>
	<div class="jub" style="display: none;">
		<form>
			<div class="form-group1">
				<font color="red">*</font>
				분실일<br> 
				<input type="date" name="loss_reg">
			</div>
			<div class="form-group2">
				<em style="display: block; margin-bottom: 3px; font-size: smaller;">ex)삼성동에서 지갑분실</em>
				 <font color="red">*</font>
				 분실장소<br> 
				<input type="text" name="loss_memo">
			</div>
			
			<div class="form-group3">
				<font color="red">*</font>
				핸드폰번호<br> 
				<input type="text" name="loss_phone" maxLength="4">-
				<input type="text" name="loss_phone" maxLength="4">-
				<input type="text" name="loss_phone" maxLength="4">
			</div>
		</form>
			<div class="rok">
				<input type="submit" id="btn2" value="신고" class="btn btn-primary">
			</div>
	</div>
		</form:form>

	<div class="check_zone" > 
	<p class="eyong">이용전 반드시 확인하세요</p>
	<div class="nae" style="display :none;">
		<ul class="listDot"> 
			<li>분실신고를 하시기전 먼저 카드 승인내역을 확인하시기 바랍니다.&nbsp;<a
				href="/hpp/HPPUSEN/useDmsA01.shc" class="btn_renewalType type4"><span
					class="inner">국내이용내역</span></a>&nbsp;<a
				href="/hpp/HPPUSEN/HppGetListFrnA01.shc"
				class="btn_renewalType type4"><span class="inner">해외이용내역</span></a></li>
			<li>법인카드 분실, 해외분실의 경우 1544-7200번으로 즉시 신고하여 주시기 바랍니다.</li>
			<li>고객님께서 사용하지 않은 승인내역이 있을 경우 또는 재발급 불가 카드 상세 내용 확인을 원하실 경우 콜센터로
				문의 바랍니다.<br>(평일 09:00 ~ 18:00는 1544-7000번 / 주말 · 공휴일 · 평일 18:00
				~ 09:00는 1544-7200번)
			</li>
			<li>재발급 신청 후에는 기존카드의 분실신고 해제가 불가하오니 이점 양지 바랍니다.</li>
			<li>분실신고 접수번호가 부여되지 않으면 분실신고가 되지 않는 것 이므로 꼭 확인하시기 바랍니다.</li>
			<li>월납요금 [통신비/관리비/보험료/전기요금 등등]에 대해 자동납부 중인 경우<br>카드 교체발급으로
				인해 새로운 카드로 자동납부가 불가할 수 있사오니,<br>해당업체를 통해 별도 카드번호변경 신청을 해주시기
				바랍니다.
			</li>
			<li>체크,현금겸용 카드의 경우 예금인출여부는 별도 확인하시기 바랍니다.</li>
			<li>체크카드 분실 시 현금겸용기능 정지는 해당 은행으로 별도 요청하시기 바랍니다.(신한,우체국,수협제외)</li>
			<li>안내<br>법인카드를 분실하셨을 경우와 해외분실의 경우에는 즉시 24시간
				승인실[☎1544-7200]로 전화하여 신고해 주시기 바랍니다.
			</li>
			<li>재발급불가 표시안내
				<ul>
					<li>해당기관(직업훈련학교, 보훈청 및 읍, 면, 동사무소)에서 발급된 체크카드일 경우<br>"재발급불가"로
						표시된 체크카드를 원하실 경우는 해당기관(직업훈련학교, 보훈청 및 읍, 면, 동사무소)으로 재발급 신청해 주십시오.
					</li>
					<li>본인 기존 소지한 후불교통체크카드에 계좌연결이 되어 있지 않을 경우<br>후불교통기능은 계좌가
						있는 체크카드에만 추가하실 수 있으므로, 상담실(☎1544-7474)로 계좌등록 후 재발급 신청 바랍니다.
					</li>
					<li>본인 기존 소지한 당사카드에 후불교통 사용제한 코드가 등재되어 있는 경우<br>후불교통 사용제한
						코드가 등재되어 있어 후불교통기능을 추가하실 수 없으므로, 상담실(☎1544-7474)로 후불교통기능 없는 체크카드로
						재발급 신청 바랍니다.
					</li>
				</ul>
			</li>
		</ul>
	</div>
</div>