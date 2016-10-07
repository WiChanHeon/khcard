<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<div class="row">
                <div class="col-lg-12">
                    <h1>KH 카드신청 <small>Statistics and more</small></h1>
                    <div class="alert alert-dismissable alert-warning">
                        <button data-dismiss="alert" class="close" type="button">&times;</button>
                       관리자에게 알립니다! 신청/분실에 관한 승인 및 거절은 사내 절차에 따라 처리하여주시기 바랍니다. 
                        <br />
                        사이트 오류 발생 시 웹페이지 담당 관리자에게 연락바랍니다 010-9903-0094 
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 최근 카드 신청자 목록 </h3>
                        </div>
                        <div class="panel-body">
                        <!--테이블 시작  -->
            <div>
            <h3 align="center">카드 신청자 목록</h3>
            <div class="search-position">
               <form action="manageApplyList.do" id="search_form" method="get">
                  <ul class="search">
                     <li><select name="keyfield" style="color:black; font-size:12pt;">
                             <option value="all">전체</option>
                           <option value="ap_name">신청인</option>
                           <option value="ap_reg">신청일자</option>
                           <option value="ap_rrnfront">주민번호</option>
                           
                     </select></li>
                     <li style="color:black; font-size:12pt;"><input type="text" size="16" name="keyword"></li>
                     <li style="color:black; font-size:12pt;"><input type="submit" value="찾기"></li>
                  </ul>
               </form>
            </div>
               <c:if test="${count==0 }">
                  <h4 class="empty-list">해당하는 신청자 목록이 없습니다.</h4>
               </c:if>
               <c:if test="${count>0 }">
               
                  <table border="1">
                     <tr>
                        <th>신청번호</th>
                        <th>신청인 성명</th>
                        <th>주민번호</th>
                        <th>은행명</th>
                        <th>계좌번호</th>
                        <th>신청일자</th>
                        <th>카드종류</th>
                        <th>상태</th>
                        <th id="1">관리</th>
                     </tr>
                     <c:forEach var="article" items="${list }">
                        <tr>
                           <td>${article.ap_num }</td>
                           <td>${article.ap_name }</td>
                           <td>${article.ap_rrnfront}-${article.ap_rrnrear }</td>
                             
                           <td>${article.ap_bank }</td>
                           <td>${article.ap_banknum }</td>
                           <td>${article.ap_reg }</td>
                           <c:if test="${article.info_id!=null }">
                           <td>${article.info_id }</td>
                           </c:if>
                           <c:if test="${article.info_id==null }">
                           <td>미선택</td>
                           </c:if>
                           <c:if test="${article.ap_pass==0 }">
                           <td id="p${article.ap_num }" style="width:150px;">대기</td>
                           </c:if>
                           <c:if test="${article.ap_pass==1 && article.ap_status==2 }">
                           <td id="p${article.ap_num }" style="width:150px;">분실(일시정지)</td>
                           </c:if>
                           <c:if test="${article.ap_pass==1 && article.ap_status==9 }">
                           <td id="p${article.ap_num }" style="width:150px;">카드파기</td>
                           </c:if>
                           <c:if test="${article.ap_pass==1 && article.ap_status==8 }">
                           <td id="p${article.ap_num }" style="width:150px;">재발급</td>
                           </c:if>
                           <c:if test="${article.ap_pass==1 && article.ap_status!=2 && article.ap_status!=9&& article.ap_status!=8}">
                           <td id="p${article.ap_num }" style="width:150px;">발급</td>
                           </c:if>
                           <c:if test="${article.ap_pass==2 }">
                           <td id="p${article.ap_num }" style="width:150px;">보류</td>
                           </c:if>
                           <c:if test="${article.ap_pass==3 }">
                           <td id="p${article.ap_num }" style="width:150px;">거절</td>
                           </c:if>
               
                           <td style="width:300px;">
                            <c:if test="${article.ap_pass==0}" >
                                   <input type="button" value="발급"  data-num="${article.ap_num }"  id="b${article.ap_num }" class="confirmCard">
                                     <input type="button" value="거절" id="d${article.ap_num }" data-num="${article.ap_num }" class="denyCard">
                           <input type="button" value="보류" id="a${article.ap_num }" data-num="${article.ap_num }" class="deferCard">
                           
                           </c:if>
                           
                           <c:if test="${article.ap_pass==2}">
                                   <input type="button" value="발급"  data-num="${article.ap_num }"  id="b${article.ap_num }" class="confirmCard">
                                     <input type="button" value="거절" id="d${article.ap_num }" data-num="${article.ap_num }"  class="denyCard">
                                     
                           </c:if>
                           
                           </td>
                           
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
            
           
          
            

           