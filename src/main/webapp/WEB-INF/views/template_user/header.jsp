<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- 메뉴 hover 뒷배경 dimmed 영역 -->
<span class="y_dimmed"></span>

<!-- header 메뉴 -->
<div class="main-navigation" id="y_makeMenu">
<nav class="navbar navbar-inverse" id="y_header">
	<div class="container-fluid">
	
		<!-- 로고 -->
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/main/main.do"><img alt="logo" src="${pageContext.request.contextPath}/resources/images/logo.png"></a>
		</div>

		<!-- 메뉴 시작 -->	
		<ul class="nav navbar-nav navbar-right">
			<!-- <li class="active"><a href="#">Active Menu</a></li> -->
			<li class="dropdown mega-menu">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">My Account</a>
				<ul class="dropdown-menu">
					<li>
					
						<!-- 실용적인 서비스 안내 -->
						<span class="y_silyoung"><img src="${pageContext.request.contextPath}/resources/images/img_digital_banner.gif"><br><br>가장 실용적인 Digital 서비스를 <br>경험해 보세요.<br><a href="#">Digital KH카드 프로젝트 ></a></span>
	 						
						<div class="col-sm-2 col-sm-offset-2">
							<h5>이용내역</h5>
							<ul class="menu">
								<li><a href="#">이용대금 명세서</a></li>
								<li><a href="#">이용대금명세서(예정)</a></li>
								<li><a href="#">이용한도</a></li>
								<li><a href="#">카드이용내역</a></li>
								<li><a href="#">포인트/마일리지/할인/캐시백</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>이용대금 결제 신청</h5>
							<ul class="menu">
								<li><a href="#">즉시결제</a></li>
					            <li><a href="#">결제연기</a></li>
					            <li><a href="#">분할납부 결제(할부 전환)</a></li>
					            <li><a href="#">일부결제금액이월약정(리볼빙)</a></li>
					            <li><a href="#">포인트결제전환</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>카드 납부서비스</h5>
							<ul class="menu">
								<li><a href="#">자동납부</a></li>
								<li><a href="#">수시납부</a></li>
							</ul>
							
							<br>
							<h5>입금·소득공제 내역</h5>
							<ul class="menu">
								<li><a href="#">입금내역</a></li>
								<li><a href="#">소득공제내역</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>이용 편의서비스 안내·신청</h5>
							<ul class="menu">
								<li><a href="#">결제승인(SMS)문자서비스</a></li>
								<li><a href="#">이용내역 안내메일 서비스</a></li>
								<li><a href="#">해외 이용제한/해제 서비스</a></li>
							</ul>
							
							<br>
							<h5>케어서비스 안내·신청</h5>
							<ul class="menu">
								<li><a href="#">쇼핑케어상품</a></li>
								<li><a href="#">개인정보 안심서비스</a></li>
								<li><a href="#">채무면제&middot;유예상품</a></li>
								<li><a href="#">오토케어상품</a></li>
								<li><a href="#">보험서비스</a></li>
								<li><a href="#">신용지킴이 서비스</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>카드·개인정보 관리</h5>
							<ul class="menu">
								<li><a href="#">내카드 목록</a></li>
								<li><a href="#">결제정보 조회/변경</a></li>
								<li><a href="#">개인정보 조회/변경</a></li>
								<li><a href="#">Lock &amp; Limit</a></li>
								<li><a href="#">가상카드번호</a></li>
							</ul>
						</div>

					</li>
				</ul>
			</li>
			
			
			<li class="dropdown mega-menu">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">카드 안내 신청</a>
				<ul class="dropdown-menu">
					<li>
						
						<!-- 실용적인 서비스 안내 -->
						<span class="y_silyoung"><img src="${pageContext.request.contextPath}/resources/images/img_digital_banner.gif"><br><br>가장 실용적인 Digital 서비스를 <br>경험해 보세요.<br><a href="#">Digital KH카드 프로젝트 ></a></span>
						
						<div class="col-sm-1 col-sm-offset-2">
							<h5>카드 안내</h5>
							<ul class="menu">
								<li>Premium카드</li>
								<li><a href="${pageContext.request.contextPath}/detail/TB.do">the Black</a></li>
								<li><a href="${pageContext.request.contextPath}/detail/TP.do">the Purple</a></li>
								<li><a href="${pageContext.request.contextPath}/detail/TRE2.do">the Red</a></li>
							</ul>
						</div>
						<div class="col-sm-1">
							<h5 class="o_noneT">.</h5>
							<ul class="menu">
								<li>포인트 카드</li>
								<li><a href="${pageContext.request.contextPath}/detail/M3PE2.do">M3</a></li>
								<li><a href="${pageContext.request.contextPath}/detail/MPE2.do">M2</a></li>
								<li><a href="${pageContext.request.contextPath}/detail/ME2.do">M</a></li>
								<li><a href="${pageContext.request.contextPath}/detail/T3PE2.do">T3</a></li>
							</ul>
						</div>
						<div class="col-sm-1">
							<h5 class="o_noneT">.</h5>
							<ul class="menu">
								<li>할인 카드<li>
								<li><a href="${pageContext.request.contextPath}/detail/X3PE2.do">X3</a></li>
								<li><a href="${pageContext.request.contextPath}/detail/XPE2.do">X2</a></li>
								<li><a href="${pageContext.request.contextPath}/detail/XE2.do">X</a></li>
								<li><a href="${pageContext.request.contextPath}/detail/ZRO.do">ZERO</a></li>
							</ul>
						</div>
						<div class="col-sm-1" style="width:150px;">
							<h5 class="o_noneT">.</h5>
							<ul class="menu">
								<li>MY BUSINESS카드<li>
								<li><a href="#">MY BUSINESS카드</a></li>
							</ul>
							
							<br>
							<ul class="menu">
								<li>제휴카드</li>
								<li><a href="#">이마트 e카드</a></li>
								<li><a href="#">제휴카드</a></li>  
							</ul>
						</div>
						<div class="col-sm-1">
							<h5 class="o_noneT">.</h5>
							<ul class="menu">
								<li>기타 카드</li>
								<li><a href="#">체크카드</a></li>
								<li><a href="#">Gift카드</a></li>
								<li><a href="#">알파벳카드</a></li>
								<li><a href="#">특화카드</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>카드신청</h5>
							<ul class="menu">
								<li><a href="${pageContext.request.contextPath}/info/slist.do">카드신청</a></li>
							</ul>
							
							<br>
							<h5>카드추천</h5>
							<ul class="menu">
								<li><a href="${pageContext.request.contextPath}/info/matchCard.do">내게 맞는 카드 찾기</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>발급조회·수령등록</h5>
							<ul class="menu">
								<li><a href="#">카드발급조회</a></li>
								<li><a href="#">카드신청안심서비스</a></li>
								<li><a href="#">카드수령등록</a></li>
								<li><a href="#">카드비밀번호 등록/변경</a></li>
							</ul>
						</div>

					</li>
				</ul>
			</li>
			
			
			<li class="dropdown mega-menu">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">나만의 혜택</a>
				<ul class="dropdown-menu">
					<li>
						
						<!-- 실용적인 서비스 안내 -->
						<span class="y_silyoung"><img src="${pageContext.request.contextPath}/resources/images/img_digital_banner.gif"><br><br>가장 실용적인 Digital 서비스를 <br>경험해 보세요.<br><a href="#">Digital KH카드 프로젝트 ></a></span>
						
						<div class="col-sm-2"> <!--  col-sm-offset-5 -->
							<ul class="menu">
								<li><a href="#">Star·Gold Friendship</a></li>
								<li><a href="#">보유 바우처</a></li>
								<li><a href="#">보유 카드 혜택</a></li>
								<li><a href="#">이용금액/혜택 내역</a></li>
								<li><a href="#">MY BUSINESS 안내</a></li>
								<li><a href="#">이벤트</a></li>
							</ul>
						</div>
						
					</li>
				</ul>
			</li>
			
			
			<li class="dropdown mega-menu">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">M혜택 안내</a>
				<ul class="dropdown-menu">
					<li>
						
						<!-- 실용적인 서비스 안내 -->
						<span class="y_silyoung"><img src="${pageContext.request.contextPath}/resources/images/img_digital_banner.gif"><br><br>가장 실용적인 Digital 서비스를 <br>경험해 보세요.<br><a href="#">Digital KH카드 프로젝트 ></a></span>
						
						<div class="col-sm-2 col-sm-offset-6">
							<h5>M포인트 적립 안내</h5>
							<ul class="menu">
								<li><a href="#">기본 M포인트</a></li>
								<li><a href="#">추가 M포인트</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>M포인트 사용 안내</h5>
							<ul class="menu">
								<li><a href="#">이달의 M포인트 Special</a></li>
								<li><a href="#">M 100 Club</a></li>
								<li><a href="#">일상 사용처</a></li>
								<li><a href="#">M포인트 교환</a></li>
								<li><a href="#">자동차 구매</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>온라인쇼핑</h5>
							<ul class="menu">
								<li><a href="#">M포인트몰</a></li>
								<li><a href="#">PRIVIA 쇼핑</a></li>
								<li><a href="#">제휴몰 M포인트 부분 사용</a></li>
								<li><a href="#">제휴몰 M포인트 전액 사용</a></li>
							</ul>
						</div>
						
					</li>
				</ul>
			</li>
			
			
			<li class="dropdown mega-menu">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">X혜택 안내</a>
				<!-- <ul class="dropdown-menu">
				</ul> -->
			</li>
			
			
			<li class="dropdown mega-menu">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">금융 안내·신청</a>
				<ul class="dropdown-menu">
					<li>
						
						<!-- 실용적인 서비스 안내 -->
						<span class="y_silyoung"><img src="${pageContext.request.contextPath}/resources/images/img_digital_banner.gif"><br><br>가장 실용적인 Digital 서비스를 <br>경험해 보세요.<br><a href="#">Digital KH카드 프로젝트 ></a></span>
						
						<div class="col-sm-2"> <!-- col-sm-offset-7 -->
							<ul class="menu">
								<li><a href="#">장기카드대출(카드론)</a></li>
								<li><a href="#">단기카드대출(현금서비스)</a></li>
								<li><a href="#">일부결제금액이월약정(리볼빙)</a></li>
								<li><a href="#">내게 맞는 금융상품</a></li>
								<li><a href="#">현대카드 금융ATM</a></li>
							</ul>
						</div>
						
					</li>
				</ul>
			</li>
			
			
			<li class="dropdown mega-menu">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">컬쳐·라이프스타일</a>
				<ul class="dropdown-menu">
					<li>
						
						<!-- 실용적인 서비스 안내 -->
						<span class="y_silyoung"><img src="${pageContext.request.contextPath}/resources/images/img_digital_banner.gif"><br><br>가장 실용적인 Digital 서비스를 <br>경험해 보세요.<br><a href="#">Digital KH카드 프로젝트 ></a></span>
						
						<div class="col-sm-2 col-sm-offset-4">
							<h5>Culture</h5>
							<ul class="menu">
								<li><a href="#">슈퍼콘서트</a></li>
								<li><a href="#">컬쳐프로젝트</a></li>
								<li><a href="#">슈퍼매치</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>Space</h5>
							<ul class="menu">
								<li><a href="#">VINYL &amp; PLASTIC</a></li>
								<li><a href="#">STORAGE</a></li>
								<li><a href="#">DESIGN LIBRARY</a></li>
								<li><a href="#">TRAVEL LIBRARY</a></li>
								<li><a href="#">MUSIC LIBRARY</a></li>
								<li><a href="#">UNDERSTAGE</a></li>
								<li><a href="#">HOUSE OF THE PURPLE</a></li>
								<li><a href="#">CARD FACTORY</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>Life</h5>
							<ul class="menu">
								<li><a href="#">클럽서비스</a></li>
								<li><a href="#">고메워크</a></li>
								<li><a href="#">PRIVIA 여행</a></li>
								<li><a href="#">PRIVIA 쇼핑</a></li>
								<li><a href="#">GLOBAL MUSEUM PASS</a></li>
								<li><a href="#">채널 현대카드</a></li>
								<li><a href="#">Stephanie</a></li>
								<li><a href="#">Warren</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>Designed by Hyundai Card</h5>
							<ul class="menu">
								<li><a href="#">Collaboration</a></li>
								<li><a href="#">Talent Donation</a></li>
								<li><a href="#">Object Branding</a></li>
							</ul>
						</div>
						
					</li>
				</ul>
			</li>
			
			
			<li class="dropdown mega-menu">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">고객센터</a>
				<ul class="dropdown-menu">
					<li>
						
						<!-- 실용적인 서비스 안내 -->
						<span class="y_silyoung"><img src="${pageContext.request.contextPath}/resources/images/img_digital_banner.gif"><br><br>가장 실용적인 Digital 서비스를 <br>경험해 보세요.<br><a href="#">Digital KH카드 프로젝트 ></a></span>
						
						<div class="col-sm-2 col-sm-offset-4">
							<h5>고객상담·문의</h5>
							<ul class="menu">
								<li><a href="#">자주하는질문</a></li>
								<li><a href="#">상담/문의</a></li>
								<li><a href="#">도난·분실 신고/해제</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>소비자보호</h5>
							<ul class="menu">
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
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>공인인증서 안내</h5>
							<ul class="menu">
								<li><a href="#">공인인증서 등록/삭제</a></li>
								<li><a href="#">모바일용 공인인증서 복사</a></li>
								<li><a href="#">휴대폰인증서발급안내</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>이용안내</h5>
							<ul class="menu">
								<li><a href="#">카드 종합 이용안내</a></li>
								<li><a href="#">온라인/모바일 결제서비스</a></li>
								<li><a href="#">웹사이트 이용안내</a></li>
								<li><a href="#">이용약관</a></li>
								<li><a href="#">상품공시실/자료실</a></li>
								<li><a href="#">뉴스/공지</a></li>
								<li><a href="#">회원 소식지</a></li>
							</ul>
						</div>
						
					</li>
				</ul>
			</li>
			
			
			<!-- <li><a href="#">Page 3</a></li>  -->
			
			
			
		</ul>
	</div>
</nav>
</div>