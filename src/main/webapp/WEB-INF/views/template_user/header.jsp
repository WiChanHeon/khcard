<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<div id="o_header">

	<!-- 메뉴 hover 뒷배경 dimmed 영역 -->
	<span class="dimmed" style="opacity:0.2"></span>
	
	<!-- 메뉴 시작 -->
	<ul id="nav" class="dropdown dropdown-linear dropdown-columnar" style=" /* width: 100%; */ width:1640px;">
		<li style="margin-left: 270px;">
		<a	 href="${pageContext.request.contextPath}/main/main.do"><img alt="logo" src="${pageContext.request.contextPath}/resources/images/logo.png" style="float: left; margin-top: 10px;"></a>
		</li>
		<li class="dir" style="margin-left: 170px;">My Account
		   <ul style="left:0;">
		      <li>이용내역
		         <ul>
		            <li><a href="#">이용대금명세서</a></li>
		            <li><a href="#">이용대금명세서(예정)</a></li>
		            <li><a href="#">이용한도</a></li>
		            <li><a href="#">카드이용내역</a></li>
		            <li><a href="#" style="width: 170px;">포인트/마일리지/할인/캐시백</a></li>
		         </ul>
		     	</li>
      
      <li>이용대금 결제 신청
         <ul>
            <li><a href="#">즉시결제</a></li>
            <li><a href="#">결제연기</a></li>
            <li><a href="#" style="width: 170px;">분할납부 결제(할부 전환)</a></li>
            <li><a href="#" style="width: 240px;">일부결제금액이월약정(리볼빙)</a></li>
            <li><a href="#">포인트결제전환</a></li>
         </ul>
      </li>
      <li>카드 납부서비스
         <ul>
            <li><a href="#">자동납부</a></li>
            <li><a href="#">수시납부</a></li>
            
            <li style="margin-top: 5px;">입금&middot;소득공제 내역
               <ul>
                  <li><a href="#">입금내역</a></li>
                  <li><a href="#">소득공제내역</a></li>
               </ul>
      </li>
         </ul>
      </li>
      <li>이용 편의서비스 안내&middot;신청
         <ul>
            <li><a href="#">결제승인(SMS)문자서비스</a></li>
            <li><a href="#">이용내역 안내메일 서비스</a></li>
            <li><a href="#">해외 이용제한/해제 서비스</a></li>
            
            <li style="margin-top: 5px;">케어서비스 안내&middot;신청
               <ul>
                  <li><a href="#">쇼핑케어상품</a></li>
                  <li><a href="#">개인정보 안심서비스</a></li>
                  <li><a href="#">채무면제&middot;유예상품</a></li>
                  <li><a href="#">오토케어상품</a></li>
                  <li><a href="#">보험서비스</a></li>
                  <li><a href="#">신용지킴이 서비스</a></li>
               </ul>
      </li>
         </ul>
      </li>
      <li>카드&middot;개인정보 관리
         <ul>
            <li><a href="#">내카드 목록</a></li>
            <li><a href="#">결제정보 조회/변경</a></li>
            <li><a href="#">개인정보 조회/변경</a></li>
            <li><a href="#">Lock &amp; Limit</a></li>
            <li><a href="#">가상카드번호</a></li>
         </ul>
      </li>
      
   </ul>
</li>
<li class="dir">카드 안내&middot;신청
   <ul>
      <li>카드 안내
         <ul>
            <li>Premium카드</li>
            <li><a href="${pageContext.request.contextPath}/detail/TB.do">the Black</a></li>
            <li><a href="${pageContext.request.contextPath}/detail/TP.do">the Purple</a></li>
            <li><a href="${pageContext.request.contextPath}/detail/TR.do">the Red</a></li>
         </ul>
      </li>
      <li>
         <ul>
         <li>포인트 카드</li>
            <li><a href="${pageContext.request.contextPath}/detail/M3.do">M3</a></li>
            <li><a href="${pageContext.request.contextPath}/detail/M2.do">M2</a></li>
            <li><a href="${pageContext.request.contextPath}/detail/M.do">M</a></li>
            <li><a href="${pageContext.request.contextPath}/detail/T3.do">T3</a></li>
         </ul>
      </li>
      <li>
         <ul>
         <li>할인 카드<li>
            <li><a href="${pageContext.request.contextPath}/detail/X3.do">X3</a></li>
            <li><a href="${pageContext.request.contextPath}/detail/X2.do">X2</a></li>
            <li><a href="${pageContext.request.contextPath}/detail/X.do">X</a></li>
            <li><a href="${pageContext.request.contextPath}/detail/ZR.do">ZERO</a></li>
         </ul>
      </li>
      <li>
         <ul>
         <li>MY BUSINESS카드<li>
         <li><a href="#">MY BUSINESS카드</a></li>
            
            <li style="margin-top: 5px;">제휴카드
               <ul>
                  <li><a href="#">이마트 e카드</a></li>
                  <li><a href="#">제휴카드</a></li>   
               </ul>            
         </ul>
      </li>
      <li>
         <ul>
         <li>기타 카드</li>
            <li><a href="#">체크카드</a></li>
            <li><a href="#">Gift카드</a></li>
            <li><a href="#">알파벳카드</a></li>
            <li><a href="#">특화카드</a></li>
         </ul>
      </li>
      <li>카드신청
         <ul>
            <li><a href="${pageContext.request.contextPath}/info/slist.do">카드신청</a></li>
            
            <li>카드추천
               <ul>
                  <li><a href="${pageContext.request.contextPath}/info/matchCard.do">내게 맞는 카드 찾기</a></li>
               </ul>
         </ul>
      </li>
      <li>발급조회&middot;수령등록
         <ul>
            <li><a href="#">카드발급조회</a></li>
            <li><a href="#">카드신청안심&middot;서비스</a></li>
            <li><a href="#">카드비밀번호 등록/변경</a></li>
         </ul>
      </li>
   </ul>
</li>
<li class="dir">나만의 혜택
   <ul style=" padding: 0 0 0 965px;">
      <li>
         <ul>
            <li><a href="#">Star&middot;Gold Friendship</a></li>
            <li><a href="#">보유 바우처</a></li>
            <li><a href="#">보유 카드 혜택</a></li>
            <li><a href="#">이용금액/혜택 내역</a></li>
            <li><a href="#">MY DBUSINESS 안내</a></li>
            <li><a href="#">이벤트</a></li>
         </ul>
      </li>
   </ul>
</li>
<li class="dir">M혜택 안내
   <ul style=" padding: 0 0 0 1065px;">
      <li>M포인트 적립 안내
         <ul>
            <li><a href="#">기본 M포인트</a></li>
            <li><a href="#">추가 M포인트</a></li>
         </ul>
      </li>
      <li>M포인트 사용 안내
         <ul>
            <li><a href="#">이달의 M포인트 Special</a></li>
            <li><a href="#">M 100 Club</a></li>
            <li><a href="#">일상 사용처</a></li>
            <li><a href="#">M포인트 교환</a></li>
            <li><a href="#">자동차 구매</a></li>
         </ul>
      </li>
      <li>온라인쇼핑
         <ul>
            <li><a href="#">M포인트몰</a></li>
            <li><a href="#">PRIVIA 쇼핑</a></li>
            <li><a href="#">제휴몰 M포인트 부분 사용</a></li>
            <li><a href="#">제휴몰 M포인트 전액 사용</a></li>
         </ul>
      </li>
   </ul>
</li>
<li class="dir">X혜택 안내
   
</li>
<li class="dir">금융 안내&middot;신청
   <ul style=" padding: 0 0 0 1270px;">
      <li>
         <ul>
            <li><a href="#">장기카드대출(카드론)</a></li>
            <li><a href="#">단기카드대출(현금서비스)</a></li>
            <li><a href="#">일부결제금액이월약정(리볼빙)</a></li>
            <li><a href="#">내게 맞는 금융상품</a></li>
            <li><a href="#">현대카드 금융ATM</a></li>
         </ul>
      </li>
   </ul>
</li>
<li class="dir">컬쳐&middot;라이프스타일
   <ul>
      <li>Culture
         <ul>
            <li><a href="#">슈퍼콘서트</a></li>
            <li><a href="#">컬쳐프로젝트</a></li>
            <li><a href="#">슈퍼매치</a></li>
         </ul>
      </li>
      <li>Space
         <ul>
            <li><a href="#">VINYL & PLASTIC</a></li>
            <li><a href="#">STORAGE</a></li>
            <li><a href="#">DESIGN LIBRARY</a></li>
            <li><a href="#">TRAVEL LIBRARY</a></li>
            <li><a href="#">MUSIC LIBRARY</a></li>
            <li><a href="#">UNDERSTAGE</a></li>
            <li><a href="#">HOUSE OF THE PURPLE</a></li>
            <li><a href="#">CARD FACTORY</a></li>
         </ul>
      </li>
      <li>Life
         <ul>
            <li><a href="#">클럽서비스</a></li>
            <li><a href="#">고메워크</a></li>
            <li><a href="#">PRIVIA 여행</a></li>
            <li><a href="#">PRIVIA 쇼핑</a></li>
            <li><a href="#">GLOBAL MUSEUM PASS</a></li>
            <li><a href="#">채널 현대카드</a></li>
            <li><a href="#">Stephanie</a></li>
            <li><a href="#">Warren</a></li>
         </ul>
      </li>
   </ul>
</li>
<li class="dir">고객센터
   <ul>
      <li>고객상담&middot;문의
         <ul>
            <li><a href="#">자주하는질문</a></li>
            <li><a href="#">상담/문의</a></li>
            <li><a href="#">도난&middot;분실 신고/해제</a></li>
         </ul>
      </li>
      <li>소비자보호
         <ul>
            <li><a href="#">소비자포털</a></li>
            <li><a href="#">전자민원접수</a></li>
            <li><a href="#">소비자보호 헌장</a></li>
            <li><a href="#">소비자보호 체계</a></li>
            <li><a href="#">소비자보호 우수 사례</a></li>
            <li><a href="#">소비자피해 경보 사례</a></li>
            <li><a href="#">금융판례</a></li>
            <li><a href="#">금융분쟁 사례</a></li>
            <li><a href="#">민원접수 현황</a></li>
            <li><a href="#">외국인/청각장애인 상담 안내</a></li>
            <li><a href="#">고객권리</a></li>
         </ul>
      </li>
      <li>공인인증서 안내
         <ul>
            <li><a href="#">공인인증서 등록/삭제</a></li>
            <li><a href="#">모바일용 공인인증서 복사</a></li>
            <li><a href="#">휴대폰인증서발급안내</a></li>
         </ul>
      </li>
      <li>이용안내
         <ul>
            <li><a href="#">카드 종합 이용안내</a></li>
            <li><a href="#">온라인/모바일 결제서비스</a></li>
            <li><a href="#">웹사이트 이용안내</a></li>
            <li><a href="#">이용약관</a></li>
            <li><a href="#">상품공시실/자료실</a></li>
            <li><a href="#">뉴스/공지</a></li>
            <li><a href="#">회원 소식지</a></li>
         </ul>
      </li>
   </ul>
</li>

</ul>
</div>
