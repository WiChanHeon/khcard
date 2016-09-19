<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<div class="t_content-area" id="t_main">
<div class="content_topbox">
      <ul class="eachmenu">
         <!--로그인 영역  -->
         <li class="login-back">
         <br>
         <div class="combine-line">
         <a href="#"><h3>My Account &gt;</h3></a><h5><a href="#" style="margin-left:35px;">회원가입</h5></a>
         </div>
         <button type="button" class="btn loginForm"><span>아이디</span></button>
         <div id="output" style="display:none;">
          <form action="#" method="post">
           <input type="text" name="mem_id"  placeholder="   아이디" style="height:35px; width: 100%;">
           <input type="password" name="mem_pw"  placeholder="   비밀번호" style="margin-bottom:3%; height:35px; width: 100%;">
           <input type="submit" value="로그인" style="width:100%; height:35px;">
          </form> 
         </div>
            
      </li>
      <li>
       <div class="login-content"><a href="#">신용카드번호 안전을 위해<br>가상카드번호를 간단하게<br> 생성/해지<br>#3 가상카드번호<br>Digital KH 카드>
       </a></div>
      </li>
      </ul>
</div>
<div class="content_topbox2">
<ul class="eachmenu">
    <h3><a href="#" class="acolor">카드 안내&middot;신청 &gt;</a></h3>
   </ul>
   <div class="img">
    <a href="#"><img src="${pageContext.request.contextPath }/resources/images/main/maincard1.PNG" alt="현대카드M Edition2 카드 이미지" /></a>
    </div>
    <div class="explain">
          <a href="#" >현대카드M Edition2</a><br/>
          <a href="#" >강력한 포인트카드</a>
     </div>
    <br/>
    <div class="img">
    <a href="#"><img src="${pageContext.request.contextPath }/resources/images/main/maincard2.PNG" alt="현대카드X Edition2 카드 이미지" /></a>
    </div>
     <div class="explain">
          <a href="#" >현대카드X Edition2</a><br/>
          <a href="#" >쓸수록 커지는 할인카드</a>
     </div>
     <br>
     <div class="list_area">
       <ul class="zbox">
        <li>
         <a href="#">카드신청</a>
        </li>
        <li>
         <a href="#">인기/신청카드</a>
        </li>  
        <li>
         <a href="#">카드발급조회</a>
        </li>  
        <li>
         <a href="#">카드수령등록</a>
        </li>          
       </ul>
     </div>
   </div>
   <div class="content_topbox3">
   <ul class="eachmenu">
    <h3><a href="#" class="acolor">M혜택 안내&gt;</a></h3>
   </ul>
   <div class="img">
    <a href="#"><img src="${pageContext.request.contextPath }/resources/images/main/benefit1.PNG" alt="KH 혜택 안내" /></a>
    </div>
    <div class="explain">
          <a href="#" >50% KH 포인트 Special</a><br/>
     </div>
     <ul class="eachmenu">
    <h3><a href="#" class="acolor">X혜택 안내&gt;</a></h3>
   </ul>
   <div class="img">
    <a href="#"><img src="${pageContext.request.contextPath }/resources/images/main/benefit2.PNG" alt="KH 혜택 안내" /></a>
    </div>
    <div class="explain">
          <a href="#" >5% / 10% 시즌 스페셜 할인</a><br/>
     </div>
     <div>
      <a href="#"class="linebox">
           회원님의 맞춤 혜택을
      <br>
           확인해보세요
      <span class="btn">나만의 혜택</span>
      </a>
     </div>
     
   </div>
   
   <div class="content_topbox4">
   <ul class="eachmenu">
    <h3><a href="#" class="acolor">금융 안내&middot;신청 &gt;</a></h3>
   </ul>
   <div class="img">
    <a href="#"><img src="${pageContext.request.contextPath }/resources/images/main/banking.PNG" alt="KH 금융안내-신청" /></a>
    </div>
    <div class="explain">
          <a href="#" >목돈이 필요한데 복잡한 서류절차 없이 바로 빌릴 수 없을까?</a><br/>
     </div>
     <br/>
     <br/>
     <hr style="width:75%; border-color:#969696;">
     <div class="explainHr" style="color:gray;">목돈이 필요할 때,
     <div><h5><a href="#">장기카드대출(카드론)&gt;</a></h5></div>
     </div>
     <hr style="width:75%; border-color:#969696;">
    
     <div class="explainHr" style="color:gray;">일상에서 현금이 필요할 때,
     <div><h5><a href="#">단기카드대출(현금서비스)&gt;</a></h5></div>
     </div>
     <hr style="width:75%; border-color:#969696;">
     <div class="explainHr" style="color:gray;">카드 대금이 부담 될 때,
     <div><h5><a href="#">일부결제금액이 월약정(리볼빙)&gt;</a></h5></div>
     </div>
     
   </div>
   
   <div class="content_bottombox">
   <ul class="eachmenu">
    <h3><a href="#" class="acolor">컬쳐&middot;라이프스타일 &gt;</a></h3>
   </ul>
   <div class="img">
    <a href="#"><img src="${pageContext.request.contextPath }/resources/images/main/festival.PNG" alt="KH 라이프스타일" /></a>
    </div>
    <div class="explain">
          <a href="#" >KH카드 컬처프로젝트 24 <br/>시규어 로스</a>
         
     </div>
   </div>
   <div class="content_bottombox2">
   <ul class="eachmenu">
    <h3><a href="#" class="acolor">고객센터 &gt;</a></h3>    
   </ul>
        <div class="list_area">
       <ul class="zbox">
        <li>
         <a href="#">상담/문의</a>
        </li>
        <li>
         <a href="#">도난&middot;분실 신고/해제</a>
        </li>  
        <li>
         <a href="#">전자민원접수</a>
        </li>  
        <li>
         <a href="#">소비자포털</a>
        </li>          
       </ul>
     </div>
     <div class="service-center">
     <h3>1525-1259</h3>
     <p>(해외 : 82-2-3015-9000)</p>
     <hr style="width:100%; border-color:#969696; ">
     </div>
      <div class="service-explain"><a href="#">외국인(Foreigner)/청각장애인</a>을 위한<br> 상담 안내 서비스를 제공합니다.</div>
     
   </div>
   <div class="content_bottombox3">
   <ul class="eachmenu">
    <h3><a href="#" class="acolor">Digital 카드 프로젝트 &gt;</a></h3>
   </ul>
   <div class="img">
    <a href="#"><img src="${pageContext.request.contextPath }/resources/images/main/project.PNG" alt="KH 프로젝트" /></a>
    </div>
    <div class="explain">
          <a href="#"  >신용카드번호 안전을 위해 가상의 카드번호를 간편하게 생성하고 해지</a>
     </div>
   </div>
   <div class="content_bottombox4">
   <ul class="eachmenu">
    <h3><a href="#" class="acolor">이벤트 &gt;</a></h3>
   </ul>
   <div class="img">
    <a href="#"><img src="${pageContext.request.contextPath }/resources/images/main/event.PNG" alt="KH 이벤트" /></a>
    </div>
    <div class="explain">
          <a href="#"  >9월 추석맞이 마트&middot;백화점 온라인 쇼핑 특별 할인 이벤트</a>
     </div>
   </div>
   </div>
