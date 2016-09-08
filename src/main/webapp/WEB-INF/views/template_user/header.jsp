<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<style>
.dimmed, .dimmed_2 {
    display: none;
    overflow: hidden; 
    position: fixed;
    top: 0;
    left: 0;
    z-index:1;
    width: 100%;
    height: 100%;
    background: black;
    opacity: 0;
}
</style>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>

<div style="width: 100%; height: 105px; background-color: #000000;">

<script type="text/javascript">
		$(function(){
		     $(".dir").hover(function(){
		       $('ul:first',this).slideToggle('fast');
		       $(".dimmed").css('display','block');
		     });
		     $(".dir").mouseleave( function(){$(".dimmed").css('display','none')});
		   });
		
		</script>
<!-- opacity: 1 -->
<span class="dimmed" style="opacity:0.2"></span>
<ul id="nav" class="dropdown dropdown-linear dropdown-columnar" style=" width: 100%;">
<li style="margin-left: 350px;">
<a href="${pageContext.request.contextPath}/main/main.do"><img alt="logo" src="${pageContext.request.contextPath}/resources/user/images/logo.png" style="float: left; margin: 0px;"></a>
</li>
<li class="dir" style="margin-left: 170px;">My Account
	<ul style="left:0;">
		<li>
			<ul>
				<li style="color:inherit;">이용 내역</li>
				<li><a href="#">이용대금명세서</a></li>
				<li><a href="#">이용대금명세서(예정)</a></li>
				<li><a href="#">이용한도</a></li>
				<li><a href="#">카드이용내역</a></li>
				<li><a href="#">포인트/마일리지/할인/캐시백</a></li>
			</ul>
		</li>
		<li>FAQs
			<ul>
				<li><a href="${pageContext.request.contextPath}/info/slist.do">카드 신청</a></li>
				<li><a href="${pageContext.request.contextPath}/info/matchCard.do">내게 맞는 카드 찾기</a></li>
				<li><a href="./">Menu Subitem #3</a></li>
				<li><a href="./">Menu Subitem #4</a></li>
				<li><a href="./">Menu Subitem #5</a></li>
				<li><a href="./">Menu Subitem #6</a></li>
				<li><a href="./">Menu Subitem #7</a></li>
				<li><a href="./">Menu Subitem #8</a></li>
			</ul>
		</li>
		<li>The Team
			<ul>
				<li><a href="./">Brigita</a></li>
				<li><a href="./">John</a></li>
				<li><a href="./">Michael</a></li>
				<li><a href="./">Nick</a></li>
				<li><a href="./">Peter</a></li>
				<li><a href="./">Sarah</a></li>
				<li><a href="./">Stephanie</a></li>
				<li><a href="./">Warren</a></li>
			</ul>
		</li>
	</ul>
</li>
<li class="dir">카드 안내&middot;신청
	<ul>
		<li>카드 안내
			<ul>
				<h3 style="font-size: 12px; margin-top: 20px; margin-left: 5px;">Premium카드</h3>
				<li><a href="${pageContext.request.contextPath}/detail/TB.do">the Black</a></li>
				<li><a href="${pageContext.request.contextPath}/detail/TP.do">the Purple</a></li>
				<li><a href="${pageContext.request.contextPath}/detail/TR.do">the Red</a></li>
			</ul>
		</li>
		<li>
			<ul>
			<h3 style="font-size: 12px; margin-top: 35px; margin-left: 5px;">포인트 카드</h3>
				<li><a href="${pageContext.request.contextPath}/detail/M3.do">M3</a></li>
				<li><a href="${pageContext.request.contextPath}/detail/M2.do">M2</a></li>
				<li><a href="${pageContext.request.contextPath}/detail/M.do">M</a></li>
				<li><a href="${pageContext.request.contextPath}/detail/T3.do">T3</a></li>
			</ul>
		</li>
		<li>
			<ul>
			<h3 style="font-size: 12px; margin-top: 35px; margin-left: 5px;">할인 카드</h3>
				<li><a href="${pageContext.request.contextPath}/detail/X3.do">X3</a></li>
				<li><a href="${pageContext.request.contextPath}/detail/X2.do">X2</a></li>
				<li><a href="${pageContext.request.contextPath}/detail/X.do">X</a></li>
				<li><a href="${pageContext.request.contextPath}/detail/ZR.do">ZERO</a></li>
			</ul>
		</li>
		<li>
			<ul>
			<h3 style="font-size: 12px; margin-top: 35px; margin-left: 5px;">MY BUSINESS카드</h3>
				<li><a href="./">MY BUSINESS카드</a></li>
			<h3 style="font-size: 14px; margin-left: 5px;">제휴카드</h3>
				<li><a href="./">이마트 e카드</a></li>
				<li><a href="./">제휴카드</a></li>				
			</ul>
		</li>
		<li>
			<ul>
			<h3 style="font-size: 12px; margin-top: 35px; margin-left: 5px;">기타 카드</h3>
				<li><a href="./">체크카드</a></li>
				<li><a href="./">Gift카드</a></li>
				<li><a href="./">알파벳카드</a></li>
				<li><a href="./">특화카드</a></li>
			</ul>
		</li>
	</ul>
</li>
<li class="dir">나만의 혜택
	<ul>
		<li>New
			<ul>
				<li><a href="./">Menu Subitem #1</a></li>
				<li><a href="./">Menu Subitem #2</a></li>
				<li><a href="./">Menu Subitem #3</a></li>
				<li><a href="./">Menu Subitem #4</a></li>
				<li><a href="./">Menu Subitem #5</a></li>
				<li><a href="./">Menu Subitem #6</a></li>
				<li><a href="./">Menu Subitem #7</a></li>
			</ul>
		</li>
		<li>Used
			<ul>
				<li><a href="./">Menu Subitem #1</a></li>
				<li><a href="./">Menu Subitem #2</a></li>
				<li><a href="./">Menu Subitem #3</a></li>
			</ul>
		</li>
		<li>Featured
			<ul>
				<li><a href="./">Menu Subitem #1</a></li>
				<li><a href="./">Menu Subitem #2</a></li>
				<li><a href="./">Menu Subitem #3</a></li>
				<li><a href="./">Menu Subitem #4</a></li>
				<li><a href="./">Menu Subitem #5</a></li>
			</ul>
		</li>
		<li>Top Rated
			<ul>
				<li><a href="./">Menu Subitem #1</a></li>
				<li><a href="./">Menu Subitem #2</a></li>
				<li><a href="./">Menu Subitem #3</a></li>
				<li><a href="./">Menu Subitem #4</a></li>
				<li><a href="./">Menu Subitem #5</a></li>
			</ul>
		</li>
		<li>Prices
			<ul>
				<li><a href="./">Menu Subitem #1</a></li>
				<li><a href="./">Menu Subitem #2</a></li>
				<li><a href="./">Menu Subitem #3</a></li>
				<li><a href="./">Menu Subitem #4</a></li>
				<li><a href="./">Menu Subitem #5</a></li>
			</ul>
		</li>
	</ul>
</li>
<li class="dir">M혜택 안내
	<ul>
		<li>About Us
			<ul>
				<li><a href="./">Menu Subitem #1</a></li>
				<li><a href="./">Menu Subitem #2</a></li>
				<li><a href="./">Menu Subitem #3</a></li>
				<li><a href="./">Menu Subitem #4</a></li>
			</ul>
		</li>
		<li>FAQs
			<ul>
				<li><a href="./">Menu Subitem #1</a></li>
				<li><a href="./">Menu Subitem #2</a></li>
				<li><a href="./">Menu Subitem #3</a></li>
				<li><a href="./">Menu Subitem #4</a></li>
				<li><a href="./">Menu Subitem #5</a></li>
				<li><a href="./">Menu Subitem #6</a></li>
				<li><a href="./">Menu Subitem #7</a></li>
				<li><a href="./">Menu Subitem #8</a></li>
			</ul>
		</li>
		<li>The Team
			<ul>
				<li><a href="./">Brigita</a></li>
				<li><a href="./">John</a></li>
				<li><a href="./">Michael</a></li>
				<li><a href="./">Nick</a></li>
				<li><a href="./">Peter</a></li>
				<li><a href="./">Sarah</a></li>
				<li><a href="./">Stephanie</a></li>
				<li><a href="./">Warren</a></li>
			</ul>
		</li>
	</ul>
</li>
<li class="dir">X혜택 안내
	<ul>
		<li>About Us
			<ul>
				<li><a href="./">Menu Subitem #1</a></li>
				<li><a href="./">Menu Subitem #2</a></li>
				<li><a href="./">Menu Subitem #3</a></li>
				<li><a href="./">Menu Subitem #4</a></li>
			</ul>
		</li>
		<li>FAQs
			<ul>
				<li><a href="./">Menu Subitem #1</a></li>
				<li><a href="./">Menu Subitem #2</a></li>
				<li><a href="./">Menu Subitem #3</a></li>
				<li><a href="./">Menu Subitem #4</a></li>
				<li><a href="./">Menu Subitem #5</a></li>
				<li><a href="./">Menu Subitem #6</a></li>
				<li><a href="./">Menu Subitem #7</a></li>
				<li><a href="./">Menu Subitem #8</a></li>
			</ul>
		</li>
		<li>The Team
			<ul>
				<li><a href="./">Brigita</a></li>
				<li><a href="./">John</a></li>
				<li><a href="./">Michael</a></li>
				<li><a href="./">Nick</a></li>
				<li><a href="./">Peter</a></li>
				<li><a href="./">Sarah</a></li>
				<li><a href="./">Stephanie</a></li>
				<li><a href="./">Warren</a></li>
			</ul>
		</li>
	</ul>
</li>
<li class="dir">카드 안내&middot;신청
	<ul>
		<li>About Us
			<ul>
				<li><a href="./">Menu Subitem #1</a></li>
				<li><a href="./">Menu Subitem #2</a></li>
				<li><a href="./">Menu Subitem #3</a></li>
				<li><a href="./">Menu Subitem #4</a></li>
			</ul>
		</li>
		<li>FAQs
			<ul>
				<li><a href="./">Menu Subitem #1</a></li>
				<li><a href="./">Menu Subitem #2</a></li>
				<li><a href="./">Menu Subitem #3</a></li>
				<li><a href="./">Menu Subitem #4</a></li>
				<li><a href="./">Menu Subitem #5</a></li>
				<li><a href="./">Menu Subitem #6</a></li>
				<li><a href="./">Menu Subitem #7</a></li>
				<li><a href="./">Menu Subitem #8</a></li>
			</ul>
		</li>
		<li>The Team
			<ul>
				<li><a href="./">Brigita</a></li>
				<li><a href="./">John</a></li>
				<li><a href="./">Michael</a></li>
				<li><a href="./">Nick</a></li>
				<li><a href="./">Peter</a></li>
				<li><a href="./">Sarah</a></li>
				<li><a href="./">Stephanie</a></li>
				<li><a href="./">Warren</a></li>
			</ul>
		</li>
	</ul>
</li>
<li class="dir">컬쳐&middot;라이프스타일
	<ul>
		<li>About Us
			<ul>
				<li><a href="./">Menu Subitem #1</a></li>
				<li><a href="./">Menu Subitem #2</a></li>
				<li><a href="./">Menu Subitem #3</a></li>
				<li><a href="./">Menu Subitem #4</a></li>
			</ul>
		</li>
		<li>FAQs
			<ul>
				<li><a href="./">Menu Subitem #1</a></li>
				<li><a href="./">Menu Subitem #2</a></li>
				<li><a href="./">Menu Subitem #3</a></li>
				<li><a href="./">Menu Subitem #4</a></li>
				<li><a href="./">Menu Subitem #5</a></li>
				<li><a href="./">Menu Subitem #6</a></li>
				<li><a href="./">Menu Subitem #7</a></li>
				<li><a href="./">Menu Subitem #8</a></li>
			</ul>
		</li>
		<li>The Team
			<ul>
				<li><a href="./">Brigita</a></li>
				<li><a href="./">John</a></li>
				<li><a href="./">Michael</a></li>
				<li><a href="./">Nick</a></li>
				<li><a href="./">Peter</a></li>
				<li><a href="./">Sarah</a></li>
				<li><a href="./">Stephanie</a></li>
				<li><a href="./">Warren</a></li>
			</ul>
		</li>
	</ul>
</li>
<li class="dir">고객센터
	<ul>
		<li>About Us
			<ul>
				<li><a href="./">Menu Subitem #1</a></li>
				<li><a href="./">Menu Subitem #2</a></li>
				<li><a href="./">Menu Subitem #3</a></li>
				<li><a href="./">Menu Subitem #4</a></li>
			</ul>
		</li>
		<li>FAQs
			<ul>
				<li><a href="./">Menu Subitem #1</a></li>
				<li><a href="./">Menu Subitem #2</a></li>
				<li><a href="./">Menu Subitem #3</a></li>
				<li><a href="./">Menu Subitem #4</a></li>
				<li><a href="./">Menu Subitem #5</a></li>
				<li><a href="./">Menu Subitem #6</a></li>
				<li><a href="./">Menu Subitem #7</a></li>
				<li><a href="./">Menu Subitem #8</a></li>
			</ul>
		</li>
		<li>The Team
			<ul>
				<li><a href="./">Brigita</a></li>
				<li><a href="./">John</a></li>
				<li><a href="./">Michael</a></li>
				<li><a href="./">Nick</a></li>
				<li><a href="./">Peter</a></li>
				<li><a href="./">Sarah</a></li>
				<li><a href="./">Stephanie</a></li>
				<li><a href="./">Warren</a></li>
			</ul>
		</li>
	</ul>
</li>






</ul>


	
</div>

