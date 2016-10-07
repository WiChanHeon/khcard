<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%-- <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/analysis.js"></script>   --%>
    <!--모리스차트  -->
   <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
   <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
   <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
   <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
   
    <script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
   <script type="text/javascript" src="http://www.prepbootstrap.com/Content/js/gridData.js"></script>  
<div class="row">
   <div class="col-lg-12">
      <h1>
         KH 카드통계 <small>Statistics and more</small>
      </h1>
      <div class="alert alert-dismissable alert-warning">
         <button data-dismiss="alert" class="close" type="button">&times;</button>
          사이트 오류 발생 시 웹페이지 담당 관리자에게 연락바랍니다 010-9903-0094
      </div>
   
      <div class="row">
       <div class="col-md-8">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 총 카드 신청횟수</h3>
                        </div>
                        <div class="panel-body">
                            <div id="totalApplyCount" style="height: 400px;"></div>
                        </div>
                  
                    </div>
        </div>
        <div class="col-lg-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> KH Card 신청현황</h3>
                        </div>
                        <div class="panel-body">
                            <div id="shieldui-chart2"></div>
                        </div>
                    </div>
                </div>
        <div class="col-md-8">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 올해 월별 카드 신청횟수
                             <select id="m_selectbox" style="float:right; color:black;">
                                  <option value="01" selected="selected">1월</option>
                                  <option value="02">2월</option>
                                  <option value="03">3월</option>
                                  <option value="04">4월</option>
                                  <option value="05">5월</option>
                                  <option value="06">6월</option>
                                  <option value="07">7월</option>
                                  <option value="08">8월</option>
                                  <option value="09">9월</option>
                                  <option value="10">10월</option>
                                  <option value="11">11월</option>
                                  <option value="12">12월</option>
                            </select></h3>
                        </div>
                        <div class="panel-body">
                            <div id="compareMonthApplyCount" style="height: 400px;"></div>
                        </div>
                  
                    </div>
        </div>
        <div class="col-md-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-rss"></i> 월별 통계 결과</h3>
                        </div>
                        <div class="panel-body feed">
                           <div style="text-align:center; font-size:13pt; width:0 auto; letter-spacing:normal;">
                            <div id="a_output"></div>
                           </div>
                          
                        </div>
                    </div>
                </div>
        <div class="col-md-8">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 연도별 카드 신청횟수
                            <select id="y_selectbox" style="float:right; color:black;">
                                  <option value="15" selected="selected">2015년</option>
                                  <option value="14">2014년</option>
                                  <option value="13">2013년</option>
                                  <option value="12">2012년</option>
                                  <option value="11">2011년</option>
                                  <option value="10">2010년</option>
                                  <option value="09">2009년</option>
                                  <option value="08">2008년</option>
                                  <option value="07">2007년</option>
                                  <option value="06">2006년</option>
                                  <option value="05">2005년</option>
                                  <option value="04">2004년</option>
                            </select></h3>
                           
                        </div>
                        <div class="panel-body">
                            <div id="compareYearApplyCount" style="height: 400px;"></div>
                        </div>
                        
                  
                    </div>
        </div>
          <div class="col-md-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-rss"></i> 연별 통계 결과</h3>
                        </div>
                        <div class="panel-body feed">
                           <div style="text-align:center; font-size:13pt; width:0 auto; letter-spacing:normal;">
                            <div id="b_output"></div>
                           </div>
                          
                        </div>
                    </div>
                </div>
      </div>
      </div>
</div>
<script type="text/javascript">
$(document).ready(function(){
   
   
    var count=0;
    
    $('#y_selectbox').change(function(){
       
       var data=$('#y_selectbox option:selected').val();
       
       getCardYearApply(data,count);
       getCardYearAnalysis(data,count);
       
    });
    
    
     $('#m_selectbox').change(function(){
      
      var data =$('#m_selectbox option:selected').val();
      
      getCardMonthApply(data,count);
      getCardMonthAnalysis(data,count);
      
   });
     
      function getCardYearAnalysis(data,count){
         $.ajax({
            type:'post',
            data:{ap_reg:data},
            url:'analysisYearAjax.do',
            dataType:'json',
            cache:false,
            timeout:30000,
            success:function(data){
               count++;
               
               if(count>0){
                  $('#b_output').html('');
                     //선택 년도의 총 신청 수 
                      var totalSelectYearCount=data.xpe2YearApplyCount+data.tbYearApplyCount+data.tpYearApplyCount+data.tre2YearApplyCount+data.me2YearApplyCount+data.mpe2YearApplyCount+data.m3pe2YearApplyCount+data.t3pe2YearApplyCount+data.xe2YearApplyCount+data.x3pe2YearApplyCount+data.zroYearApplyCount+data.cmhYearApplyCount; 
                       //현 년도의 총 신청수
                       var totalCurrentYearCount =${xpe2CurrentYearCount}+${tbCurrentYearCount}+${tpCurrentYearCount}+${tre2CurrentYearCount}+${me2CurrentYearCount}+${mpe2CurrentYearCount}+${m3pe2CurrentYearCount}+${t3pe2CurrentYearCount}+${xe2CurrentYearCount}+${x3pe2CurrentYearCount}+${zroCurrentYearCount}+${cmhCurrentYearCount};
                       
                       var b_output="";
                       
                       b_output+="2016년 "+data.ap_reg2+"년의 총 카드신청수는 "+totalSelectYearCount+"입니다<br>";
                       b_output+="2016년 현 연도의 총 카드신청수는 "+totalCurrentYearCount+"입니다<br>";
                        
                       //총 카드신청수
                       var totalresult=totalCurrentYearCount-totalSelectYearCount;
                      
                      if(totalresult>0){
                      b_output+=data.ap_reg2+"년에 비해 총 카드 신청수  "+totalresult+" 만큼 <b style='color:green;'>증가</b><br>";
                      }else if(totalresult==0){
                      b_output+="총 카드 신청수 "+data.ap_reg2+"년과 <b style='color:blue;'>변동없음</b><br>";
                      }else if(totalresult<0){
                        b_output+=data.ap_reg2+"년에 비해 총 카드 신청수  "+-1*totalresult+" 만큼 <b style='color:red;'>감소</b><br>";
                      }
                       //증감률 계산
                           
                       if(totalSelectYearCount<totalCurrentYearCount){
                          var increasePercentResult=(totalCurrentYearCount-totalSelectYearCount)/totalSelectYearCount*100;
                          if(totalSelectYearCount==0){
                             b_output+="비교 년도 데이터가 없기 때문에 증감률을 계산 할 수 없습니다 <br><br>"
                          }else{
                          b_output+=data.ap_reg2+"년에 비해 총 카드 신청률  "+Math.floor(increasePercentResult)+"% <b style='color:green;'>증가</b><br><br>";
                          }
                       }else if(totalCurrentYearCount==totalSelectYearCount){
                          b_output+="총 카드 신청률 "+data.ap_reg2+"년과 <b style='color:blue;'>변동없음</b><br><br>";
                       }else if(totalSelectYearCount>totalCurrentYearCount){
                          var increasePercentResult=(totalSelectYearCount-totalCurrentYearCount)/totalSelectYearCount*100;
                          if(totalSelectYearCount==0){
                             b_output+="현 년도의 데이터가 없기 때문에 증감률을 계산 할 수 없습니다.<br><br>"
                          }else{
                          b_output+=data.ap_reg2+"년도에 비해 총 카드 신청률  "+Math.floor(increasePercentResult)+"% 만큼 <b style='color:red;'>감소</b><br><br>";
                          }
                       }
                    
                    //카드별 신청수 
                      var result=data.xpe2YearApplyCount-${xpe2CurrentYearCount};
                      
                      if(result>0){
                          b_output+="XPE2 카드 신청수 "+data.ap_reg2+" 년에 비해 "+result+" 만큼 <b style='color:red;'>감소</b><br>";
                      }else if(result==0){
                          b_output+="XPE2 카드 신청수 "+data.xpe2YearApplyCount+"으로 "+data.ap_reg2+" 년과 <b style='color:blue;'>변동없음</b><br>";
                      }else if(result<0){
                          b_output+="XPE2 카드 신청수 "+data.ap_reg2+"년에 비해 "+-1*result+" 만큼 <b style='color:green;'>증가</b><br>";
                      }
                      
                       var result2=data.tbYearApplyCount-${tbCurrentYearCount};
                      
                      if(result2>0){
                          b_output+="TB   카드 신청수 "+data.ap_reg2+" 년에 비해 "+result2+" 만큼 <b style='color:red;'>감소</b><br>";
                      }else if(result2==0){
                          b_output+="TB   카드 신청수 "+data.tbYearApplyCount+"으로 "+data.ap_reg2+" 년과 <b style='color:blue;'>변동없음</b><br>";
                      }else if(result2<0){
                          b_output+="TB   카드 신청수 "+data.ap_reg2+"년에 비해 "+-1*result2+" 만큼 <b style='color:green;'>증가</b><br>";
                      }
                      
                       var result3=data.tpYearApplyCount-${tpCurrentYearCount};
                    
                    if(result3>0){
                        b_output+="TP   카드 신청수 "+data.ap_reg2+" 년에 비해 "+result3+" 만큼 <b style='color:red;'>감소</b><br>";
                    }else if(result3==0){
                        b_output+="TP   카드 신청수 "+data.tpYearApplyCount+"으로 "+data.ap_reg2+" 년과 <b style='color:blue;'>변동없음</b><br>";
                    }else if(result3<0){
                        b_output+="TP   카드 신청수 "+data.ap_reg2+"년에 비해 "+-1*result3+" 만큼 <b style='color:green;'>증가</b><br>";
                    }
                    
                     var result4=data.tre2YearApplyCount-${tre2CurrentYearCount};
                     
                     if(result4>0){
                         b_output+="TRE2  카드 신청수 "+data.ap_reg2+" 년에 비해 "+result4+" 만큼 <b style='color:red;'>감소</b><br>";
                     }else if(result4==0){
                         b_output+="TRE2  카드 신청수 "+data.tre2YearApplyCount+"으로 "+data.ap_reg2+" 년과 <b style='color:blue;'>변동없음</b><br>";
                     }else if(result4<0){
                         b_output+="TRE2  카드 신청수 "+data.ap_reg2+"년에 비해 "+-1*result4+" 만큼 <b style='color:green;'>증가</b><br>";
                     }
                     
                       var result5=data.me2YearApplyCount-${me2CurrentYearCount};
                     
                     if(result5>0){
                         b_output+="ME2  카드 신청수 "+data.ap_reg2+" 년에 비해 "+result5+" 만큼 <b style='color:red;'>감소</b><br>";
                     }else if(result5==0){
                         b_output+="ME2  카드 신청수 "+data.me2YearApplyCount+"으로 "+data.ap_reg2+" 년과 <b style='color:blue;'>변동없음</b><br>";
                     }else if(result5<0){
                         b_output+="ME2  카드 신청수 "+data.ap_reg2+"년에 비해 "+-1*result5+" 만큼 <b style='color:green;'>증가</b><br>";
                     }
                     
                       var result6=data.mpe2YearApplyCount-${mpe2CurrentYearCount};
                     
                     if(result6>0){
                         b_output+="MPE2 카드 신청수 "+data.ap_reg2+" 년에 비해 "+result6+" 만큼 <b style='color:red;'>감소</b><br>";
                     }else if(result6==0){
                         b_output+="MPE2 카드 신청수 "+data.mpe2YearApplyCount+"으로 "+data.ap_reg2+" 년과 <b style='color:blue;'>변동없음</b><br>";
                     }else if(result6<0){
                         b_output+="MPE2 카드 신청수 "+data.ap_reg2+"년에 비해 "+-1*result6+" 만큼 <b style='color:green;'>증가</b><br>";
                     }
                     
                     var result7=data.m3pe2YearApplyCount-${m3pe2CurrentYearCount};
                    
                    if(result7>0){
                        b_output+="M3PE2 카드 신청수 "+data.ap_reg2+" 년에 비해 "+result7+" 만큼 <b style='color:red;'>감소</b><br>";
                    }else if(result7==0){
                        b_output+="M3PE2 카드 신청수 "+data.m3pe2YearApplyCount+"으로 "+data.ap_reg2+" 년과 <b style='color:blue;'>변동없음</b><br>";
                    }else if(result7<0){
                        b_output+="M3PE2 카드 신청수 "+data.ap_reg2+"년에 비해 "+-1*result7+" 만큼 <b style='color:green;'>증가</b><br>";
                    }
                    
                     var result8=data.t3pe2YearApplyCount-${t3pe2CurrentYearCount};
                     
                     if(result8>0){
                         b_output+="T3PE2 카드 신청수 "+data.ap_reg2+" 년에 비해 "+result8+" 만큼 <b style='color:red;'>감소</b><br>";
                     }else if(result8==0){
                         b_output+="T3PE2 카드 신청수 "+data.t3pe2YearApplyCount+"으로 "+data.ap_reg2+" 년과 <b style='color:blue;'>변동없음</b><br>";
                     }else if(result8<0){
                         b_output+="T3PE2 카드 신청수 "+data.ap_reg2+"년에 비해 "+-1*result8+" 만큼 <b style='color:green;'>증가</b><br>";
                     }
                     
                      var result9=data.xe2YearApplyCount-${xe2CurrentYearCount};
                      
                      if(result9>0){
                          b_output+="XE2  카드 신청수 "+data.ap_reg2+" 년에 비해 "+result9+" 만큼 <b style='color:red;'>감소</b><br>";
                      }else if(result9==0){
                          b_output+="XE2  카드 신청수 "+data.xe2YearApplyCount+"으로 "+data.ap_reg2+" 년과 <b style='color:blue;'>변동없음</b><br>";
                      }else if(result9<0){
                          b_output+="XE2  카드 신청수 "+data.ap_reg2+"년에 비해 "+-1*result9+" 만큼 <b style='color:green;'>증가</b><br>";
                      }
                      
                       var result10=data.x3pe2YearApplyCount-${x3pe2CurrentYearCount};
                       
                       if(result10>0){
                           b_output+="X3PE2 카드 신청수 "+data.ap_reg2+" 년에 비해 "+result10+" 만큼 <b style='color:red;'>감소</b><br>";
                       }else if(result10==0){
                           b_output+="X3PE2 카드 신청수 "+data.x3pe2YearApplyCount+"으로 "+data.ap_reg2+" 년과 <b style='color:blue;'>변동없음</b><br>";
                       }else if(result10<0){
                           b_output+="X3PE2 카드 신청수 "+data.ap_reg2+"년에 비해 "+-1*result10+" 만큼 <b style='color:green;'>증가</b><br>";
                       }
                       
                      var result11=data.zroYearApplyCount-${zroCurrentYearCount};
                    
                    if(result11>0){
                        b_output+="ZRO  카드 신청수 "+data.ap_reg2+" 년에 비해 "+result11+" 만큼 <b style='color:red;'>감소</b><br>";
                    }else if(result11==0){
                        b_output+="ZRO  카드 신청수 "+data.zroYearApplyCount+"으로 "+data.ap_reg2+" 년과 <b style='color:blue;'>변동없음</b><br>";
                    }else if(result11<0){
                        b_output+="ZRO  카드 신청수 "+data.ap_reg2+"년에 비해 "+-1*result11+" 만큼 <b style='color:green;'>증가</b><br>";
                    }
                    
                   var result12=data.cmhYearApplyCount-${cmhCurrentYearCount};
                      
                      if(result12>0){
                          b_output+="CMH  카드 신청수 "+data.ap_reg2+" 년에 비해 "+result12+" 만큼 <b style='color:red;'>감소</b><br><br>";
                      }else if(result12==0){
                          b_output+="CMH  카드 신청수 "+data.cmhYearApplyCount+"으로 "+data.ap_reg2+" 년과 <b style='color:blue;'>변동없음</b><br>";
                      }else if(result12<0){
                          b_output+="CMH  카드 신청수 "+data.ap_reg2+"년에 비해 "+-1*result12+" 만큼 <b style='color:green;'>증가</b><br>";
                      }
                    
                      
                      $('#b_output').html(b_output);     
                  
               }
            },
            error:function(){
                 alert('네트워크 오류발생!');
              }
            
         });
      }
     
       function getCardMonthAnalysis(data,count){
          $.ajax({
               type:'post',
               data:{ap_reg:data},
               url:'analysisMonthAjax.do',
               dataType:'json',
               cache:false,
               timeout:30000,
               success:function(data){
               
                  count++;

                   if(count>0){
                      $('#a_output').html('');
               
               //선택 월의 총 신청 수 
               var totalSelectMonthCount=data.xpe2MonthApplyCount+data.tbMonthApplyCount+data.tpMonthApplyCount+data.tre2MonthApplyCount+data.me2MonthApplyCount+data.mpe2MonthApplyCount+data.m3pe2MonthApplyCount+data.t3pe2MonthApplyCount+data.xe2MonthApplyCount+data.x3pe2MonthApplyCount+data.zroMonthApplyCount+data.cmhMonthApplyCount; 
                //현 월의 총 신청수
                var totalCurrentMonthCount=${xpe2CurrentMonthCount}+${tbCurrentMonthCount}+${tpCurrentMonthCount}+${tre2CurrentMonthCount}+${me2CurrentMonthCount}+${mpe2CurrentMonthCount}+${m3pe2CurrentMonthCount}+${t3pe2CurrentMonthCount}+${xe2CurrentMonthCount}+${x3pe2CurrentMonthCount}+${zroCurrentMonthCount}+${cmhCurrentMonthCount};
                
                var a_output="";
                
                a_output+="2016년 "+data.ap_reg2+"월의 총 카드신청수는 "+totalSelectMonthCount+"입니다<br>";
                a_output+="2016년 현 월의 총 카드신청수는 "+totalCurrentMonthCount+"입니다<br>";
                 
                //총 카드신청수
                var totalresult=totalCurrentMonthCount-totalSelectMonthCount;
               
               if(totalresult>0){
               a_output+=data.ap_reg2+"월에 비해 총 카드 신청수  "+totalresult+" 만큼 <b style='color:green;'>증가</b><br>";
               }else if(totalresult==0){
               a_output+="총 카드 신청수 "+data.ap_reg2+"월과 <b style='color:blue;'>변동없음</b><br>";
               }else if(totalresult<0){
                 a_output+=data.ap_reg2+"월에 비해 총 카드 신청수  "+-1*totalresult+" 만큼 <b style='color:red;'>감소</b><br>";
               }
                //증감률 계산
                    
                if(totalSelectMonthCount<totalCurrentMonthCount){
                   var increasePercentResult=(totalCurrentMonthCount-totalSelectMonthCount)/totalSelectMonthCount*100;
                   if(totalSelectMonthCount==0){
                      a_output+="비교 월의 데이터가 없기 때문에 증감률을 계산 할 수 없습니다 <br><br>"
                   }else{
                   a_output+=data.ap_reg2+"월에 비해 총 카드 신청률  "+Math.floor(increasePercentResult)+"% <b style='color:green;'>증가</b><br><br>";
                   }
                }else if(totalCurrentMonthCount==totalSelectMonthCount){
                   a_output+="총 카드 신청률 "+data.ap_reg2+"월과 <b style='color:blue;'>변동없음</b><br><br>";
                }else if(totalSelectMonthCount>totalCurrentMonthCount){
                   var increasePercentResult=(totalSelectMonthCount-totalCurrentMonthCount)/totalSelectMonthCount*100;
                   if(totalSelectMonthCount==0){
                      a_output+="현 월의 데이터가 없기 때문에 증감률을 계산 할 수 없습니다.<br><br>"
                   }else{
                   a_output+=data.ap_reg2+"월에 비해 총 카드 신청률  "+Math.floor(increasePercentResult)+"% 만큼 <b style='color:red;'>감소</b><br><br>";
                   }
                }
             
             //카드별 신청수 
               var result=data.xpe2MonthApplyCount-${xpe2CurrentMonthCount};
               
               if(result>0){
                   a_output+="XPE2 카드 신청수 "+data.ap_reg2+" 월에 비해 "+result+" 만큼 <b style='color:red;'>감소</b><br>";
               }else if(result==0){
                   a_output+="XPE2 카드 신청수 "+data.xpe2MonthApplyCount+"으로 "+data.ap_reg2+" 월과 <b style='color:blue;'>변동없음</b><br>";
               }else if(result<0){
                   a_output+="XPE2 카드 신청수 "+data.ap_reg2+"월에 비해 "+-1*result+" 만큼 <b style='color:green;'>증가</b><br>";
               }
               
                var result2=data.tbMonthApplyCount-${tbCurrentMonthCount};
               
               if(result2>0){
                   a_output+="TB   카드 신청수 "+data.ap_reg2+" 월에 비해 "+result2+" 만큼 <b style='color:red;'>감소</b><br>";
               }else if(result2==0){
                   a_output+="TB   카드 신청수 "+data.tbMonthApplyCount+"으로 "+data.ap_reg2+" 월과 <b style='color:blue;'>변동없음</b><br>";
               }else if(result2<0){
                   a_output+="TB   카드 신청수 "+data.ap_reg2+"월에 비해 "+-1*result2+" 만큼 <b style='color:green;'>증가</b><br>";
               }
               
                var result3=data.tpMonthApplyCount-${tpCurrentMonthCount};
             
             if(result3>0){
                 a_output+="TP   카드 신청수 "+data.ap_reg2+" 월에 비해 "+result3+" 만큼 <b style='color:red;'>감소</b><br>";
             }else if(result3==0){
                 a_output+="TP   카드 신청수 "+data.tpMonthApplyCount+"으로 "+data.ap_reg2+" 월과 <b style='color:blue;'>변동없음</b><br>";
             }else if(result3<0){
                 a_output+="TP   카드 신청수 "+data.ap_reg2+"월에 비해 "+-1*result3+" 만큼 <b style='color:green;'>증가</b><br>";
             }
             
              var result4=data.tre2MonthApplyCount-${tre2CurrentMonthCount};
              
              if(result4>0){
                  a_output+="TRE2  카드 신청수 "+data.ap_reg2+" 월에 비해 "+result4+" 만큼 <b style='color:red;'>감소</b><br>";
              }else if(result4==0){
                  a_output+="TRE2  카드 신청수 "+data.tre2MonthApplyCount+"으로 "+data.ap_reg2+" 월과 <b style='color:blue;'>변동없음</b><br>";
              }else if(result4<0){
                  a_output+="TRE2  카드 신청수 "+data.ap_reg2+"월에 비해 "+-1*result4+" 만큼 <b style='color:green;'>증가</b><br>";
              }
              
                var result5=data.me2MonthApplyCount-${me2CurrentMonthCount};
              
              if(result5>0){
                  a_output+="ME2  카드 신청수 "+data.ap_reg2+" 월에 비해 "+result5+" 만큼 <b style='color:red;'>감소</b><br>";
              }else if(result5==0){
                  a_output+="ME2  카드 신청수 "+data.me2MonthApplyCount+"으로 "+data.ap_reg2+" 월과 <b style='color:blue;'>변동없음</b><br>";
              }else if(result5<0){
                  a_output+="ME2  카드 신청수 "+data.ap_reg2+"월에 비해 "+-1*result5+" 만큼 <b style='color:green;'>증가</b><br>";
              }
              
                var result6=data.mpe2MonthApplyCount-${mpe2CurrentMonthCount};
              
              if(result6>0){
                  a_output+="MPE2 카드 신청수 "+data.ap_reg2+" 월에 비해 "+result6+" 만큼 <b style='color:red;'>감소</b><br>";
              }else if(result6==0){
                  a_output+="MPE2 카드 신청수 "+data.mpe2MonthApplyCount+"으로 "+data.ap_reg2+" 월과 <b style='color:blue;'>변동없음</b><br>";
              }else if(result6<0){
                  a_output+="MPE2 카드 신청수 "+data.ap_reg2+"월에 비해 "+-1*result6+" 만큼 <b style='color:green;'>증가</b><br>";
              }
              
              var result7=data.m3pe2MonthApplyCount-${m3pe2CurrentMonthCount};
             
             if(result7>0){
                 a_output+="M3PE2 카드 신청수 "+data.ap_reg2+" 월에 비해 "+result7+" 만큼 <b style='color:red;'>감소</b><br>";
             }else if(result7==0){
                 a_output+="M3PE2 카드 신청수 "+data.m3pe2MonthApplyCount+"으로 "+data.ap_reg2+" 월과 <b style='color:blue;'>변동없음</b><br>";
             }else if(result7<0){
                 a_output+="M3PE2 카드 신청수 "+data.ap_reg2+"월에 비해 "+-1*result7+" 만큼 <b style='color:green;'>증가</b><br>";
             }
             
              var result8=data.t3pe2MonthApplyCount-${t3pe2CurrentMonthCount};
              
              if(result8>0){
                  a_output+="T3PE2 카드 신청수 "+data.ap_reg2+" 월에 비해 "+result8+" 만큼 <b style='color:red;'>감소</b><br>";
              }else if(result8==0){
                  a_output+="T3PE2 카드 신청수 "+data.t3pe2MonthApplyCount+"으로 "+data.ap_reg2+" 월과 <b style='color:blue;'>변동없음</b><br>";
              }else if(result8<0){
                  a_output+="T3PE2 카드 신청수 "+data.ap_reg2+"월에 비해 "+-1*result8+" 만큼 <b style='color:green;'>증가</b><br>";
              }
              
               var result9=data.xe2MonthApplyCount-${xe2CurrentMonthCount};
               
               if(result9>0){
                   a_output+="XE2  카드 신청수 "+data.ap_reg2+" 월에 비해 "+result9+" 만큼 <b style='color:red;'>감소</b><br>";
               }else if(result9==0){
                   a_output+="XE2  카드 신청수 "+data.xe2MonthApplyCount+"으로 "+data.ap_reg2+" 월과 <b style='color:blue;'>변동없음</b><br>";
               }else if(result9<0){
                   a_output+="XE2  카드 신청수 "+data.ap_reg2+"월에 비해 "+-1*result9+" 만큼 <b style='color:green;'>증가</b><br>";
               }
               
                var result10=data.x3pe2MonthApplyCount-${x3pe2CurrentMonthCount};
                
                if(result10>0){
                    a_output+="X3PE2 카드 신청수 "+data.ap_reg2+" 월에 비해 "+result10+" 만큼 <b style='color:red;'>감소</b><br>";
                }else if(result10==0){
                    a_output+="X3PE2 카드 신청수 "+data.x3pe2MonthApplyCount+"으로 "+data.ap_reg2+" 월과 <b style='color:blue;'>변동없음</b><br>";
                }else if(result10<0){
                    a_output+="X3PE2 카드 신청수 "+data.ap_reg2+"월에 비해 "+-1*result10+" 만큼 <b style='color:green;'>증가</b><br>";
                }
                
               var result11=data.zroMonthApplyCount-${zroCurrentMonthCount};
             
             if(result11>0){
                 a_output+="ZRO  카드 신청수 "+data.ap_reg2+" 월에 비해 "+result11+" 만큼 <b style='color:red;'>감소</b><br>";
             }else if(result11==0){
                 a_output+="ZRO  카드 신청수 "+data.zroMonthApplyCount+"으로 "+data.ap_reg2+" 월과 <b style='color:blue;'>변동없음</b><br>";
             }else if(result11<0){
                 a_output+="ZRO  카드 신청수 "+data.ap_reg2+"월에 비해 "+-1*result11+" 만큼 <b style='color:green;'>증가</b><br>";
             }
             
            var result12=data.cmhMonthApplyCount-${cmhCurrentMonthCount};
               
               if(result12>0){
                   a_output+="CMH  카드 신청수 "+data.ap_reg2+" 월에 비해 "+result12+" 만큼 <b style='color:red;'>감소</b><br><br>";
               }else if(result12==0){
                   a_output+="CMH  카드 신청수 "+data.cmhMonthApplyCount+"으로 "+data.ap_reg2+" 월과 <b style='color:blue;'>변동없음</b><br>";
               }else if(result12<0){
                   a_output+="CMH  카드 신청수 "+data.ap_reg2+"월에 비해 "+-1*result12+" 만큼 <b style='color:green;'>증가</b><br>";
               }
             
               
               $('#a_output').html(a_output);
                   }
                   
               },
               error:function(){
                   alert('네트워크 오류발생!');
                }
          });
               
       }
     
       function getCardYearApply(data,count){
          $.ajax({
             type:'post',
             data:{ap_reg:data},
             url:'analysisYearAjax.do',
             dataType:'json',
             cache:false,
             timeout:30000,
             success:function(data){
               
                if(data.result=='logout'){
                     alert('로그인해야 조회 할 수 있습니다.');   
                  }else if(data.result=='success'){
                     
                     count++;
             
                     if(count>0){
                     //초기화
                      $('#compareYearApplyCount').empty();   
                     
                Morris.Bar({
                      element: 'compareYearApplyCount',
                      data: [
                        { y: 'XPE2', a:data.xpe2YearApplyCount ,b:${xpe2CurrentYearCount} },
                        { y: 'TB',  a:data.tbYearApplyCount ,b:${tbCurrentYearCount}},
                        { y: 'TP',  a:data.tpYearApplyCount ,b:${tpCurrentYearCount}   },
                        { y: 'TRE2',  a:data.tre2YearApplyCount ,b:${tre2CurrentYearCount} },
                        { y: 'ME2',  a:data.me2YearApplyCount,b:${me2CurrentYearCount}  },
                        { y: 'MPE2',  a:data.mpe2YearApplyCount,b:${mpe2CurrentYearCount}  },
                        { y: 'M3',  a:data.m3pe2YearApplyCount,b:${m3pe2CurrentYearCount} },
                        { y: 'T3PE2',  a:data.t3pe2YearApplyCount,b:${t3pe2CurrentYearCount} },
                        { y: 'XE2',  a:data.xe2YearApplyCount,b:${xe2CurrentYearCount} },
                        { y: 'X3PE2',  a:data.x3pe2YearApplyCount,b:${x3pe2CurrentYearCount} },
                        { y: 'ZRO',  a:data.zroYearApplyCount,b:${zroCurrentYearCount}},
                        { y: 'CMH',  a:data.cmhYearApplyCount,b:${cmhCurrentYearCount} }
                         ],
                      xkey: 'y',
                      ykeys: ['a','b'],
                      labels: ['지난 20'+data.ap_reg2+'년 카드신청 수','올해 카드신청 수']
                    }); 
                  }else{
                    Morris.Bar({
                      element: 'compareYearApplyCount',
                      data: [
                        { y: 'XPE2', a:data.xpe2YearApplyCount ,b:${xpe2CurrentYearCount} },
                        { y: 'TB',  a:data.tbYearApplyCount ,b:${tbCurrentYearCount}},
                        { y: 'TP',  a:data.tpYearApplyCount ,b:${tpCurrentYearCount}   },
                        { y: 'TRE2',  a:data.tre2YearApplyCount ,b:${tre2CurrentYearCount} },
                        { y: 'ME2',  a:data.me2YearApplyCount,b:${me2CurrentYearCount}  },
                        { y: 'MPE2',  a:data.mpe2YearApplyCount,b:${mpe2CurrentYearCount}  },
                        { y: 'M3',  a:data.m3pe2YearApplyCount,b:${m3pe2CurrentYearCount} },
                        { y: 'T3PE2',  a:data.t3pe2YearApplyCount,b:${t3pe2CurrentYearCount} },
                        { y: 'XE2',  a:data.xe2YearApplyCount,b:${xe2CurrentYearCount} },
                        { y: 'X3PE2',  a:data.x3pe2YearApplyCount,b:${x3pe2CurrentYearCount} },
                        { y: 'ZRO',  a:data.zroYearApplyCount,b:${zroCurrentYearCount}},
                        { y: 'CMH',  a:data.cmhYearApplyCount,b:${cmhCurrentYearCount} }
                         ],
                      xkey: 'y',
                      ykeys: ['a','b'],
                      labels: ['지난 20'+data.ap_reg2+'년 카드신청 수','올해 카드신청 수']
                    }); 
                     
                     }
                  }
             },
             error:function(){
                alert('네트워크 오류발생!');
             }
             
          });
       }
 
       function getCardMonthApply(data,count){
          $.ajax({
            type:'post',
            data:{ap_reg:data},
            url:'analysisMonthAjax.do',
            dataType:'json',
            cache:false,
            timeout:30000,
            success:function(data){
               
               if(data.result=='logout'){
                  alert('로그인해야 조회 할 수 있습니다.');   
               }else if(data.result=='success'){
                  
                  count++;
                  
                  if(count>0){
                     $('#compareMonthApplyCount').empty();
                     Morris.Bar({
                           element: 'compareMonthApplyCount',
                           data: [
                             { y: 'XPE2', a:data.xpe2MonthApplyCount ,b:${xpe2CurrentMonthCount} },
                             { y: 'TB',  a:data.tbMonthApplyCount ,b:${tbCurrentMonthCount}},
                             { y: 'TP',  a:data.tpMonthApplyCount ,b:${tpCurrentMonthCount}   },
                             { y: 'TRE2',  a:data.tre2MonthApplyCount ,b:${tre2CurrentMonthCount}  },
                             { y: 'ME2',  a: data.me2MonthApplyCount,b:${me2CurrentMonthCount}  },
                             { y: 'MPE2',  a: data.mpe2MonthApplyCount,b:${mpe2CurrentMonthCount}  },
                             { y: 'M3',  a: data.m3pe2MonthApplyCount,b:${m3pe2CurrentMonthCount} },
                             { y: 'T3PE2',  a: data.t3pe2MonthApplyCount,b:${t3pe2CurrentMonthCount} },
                             { y: 'XE2',  a: data.xe2MonthApplyCount,b:${xe2CurrentMonthCount} },
                             { y: 'X3PE2',  a: data.x3pe2MonthApplyCount,b:${x3pe2CurrentMonthCount} },
                             { y: 'ZRO',  a: data.zroMonthApplyCount,b:${zroCurrentMonthCount} },
                             { y: 'CMH',  a: data.cmhMonthApplyCount,b:${cmhCurrentMonthCount} }
                              ],
                           xkey: 'y',
                           ykeys: ['a','b'],
                           labels: ['지난'+data.ap_reg2+'월 카드신청 수','당월'+data.current_reg+'월 카드신청 수']
                         }); 
                  }else{
                     Morris.Bar({
                           element: 'compareMonthApplyCount',
                           data: [
                             { y: 'XPE2', a:data.xpe2MonthApplyCount ,b:${xpe2CurrentMonthCount} },
                             { y: 'TB',  a:data.tbMonthApplyCount ,b:${tbCurrentMonthCount}},
                             { y: 'TP',  a:data.tpMonthApplyCount ,b:${tpCurrentMonthCount}   },
                             { y: 'TRE2',  a:data.tre2MonthApplyCount ,b:${tre2CurrentMonthCount}  },
                             { y: 'ME2',  a: data.me2MonthApplyCount,b:${me2CurrentMonthCount}  },
                             { y: 'MPE2',  a: data.mpe2MonthApplyCount,b:${mpe2CurrentMonthCount}  },
                             { y: 'M3',  a: data.m3pe2MonthApplyCount,b:${m3pe2CurrentMonthCount} },
                             { y: 'T3PE2',  a: data.t3pe2MonthApplyCount,b:${t3pe2CurrentMonthCount} },
                             { y: 'XE2',  a: data.xe2MonthApplyCount,b:${xe2CurrentMonthCount} },
                             { y: 'X3PE2',  a: data.x3pe2MonthApplyCount,b:${x3pe2CurrentMonthCount} },
                             { y: 'ZRO',  a: data.zroMonthApplyCount,b:${zroCurrentMonthCount} },
                             { y: 'CMH',  a: data.cmhMonthApplyCount,b:${cmhCurrentMonthCount} }
                              ],
                           xkey: 'y',
                           ykeys: ['a','b'],
                           labels: ['지난'+data.ap_reg2+'월 카드신청 수','당월'+data.current_reg+'월 카드신청 수']
                         }); 
                  }
               
                  
                   
               }else{
                  alert('조회시 오류발생');
               }
               
               
            },
            error:function(){
               alert('네트워크 오류발생!');
            }
         });
       }
       
       //기본값 호출
       getCardMonthApply('01',0);
       //기본값 호출
       getCardYearApply('15',0);
       //월 통계결과 기본값 호출
       getCardMonthAnalysis('01',0);
       //년도 통계결과 기본값
       getCardYearAnalysis('15',0);
         
       
});
</script> 
 <!-- /#wrapper -->
 <script type="text/javascript">
 
 
 
        jQuery(function ($) {
               
               var browsersPopularity = [
                                         ["XPE2",${xpe2Count} ],
                                         ["TB", ${tbCount}],
                                         ["TP", ${tpCount}],
                                         ["TRE2",${tre2Count} ],
                                         ["ME2", ${me2Count}],
                                         ["MPE2",${mpe2Count}],
                                         ["M3",${m3pe2Count}],
                                         ["T3PE2",${t3pe2Count}],
                                         ["XE2",${xe2Count}],
                                         ["X3PE2",${x3pe2Count}],
                                         ["ZRO",${zroCount}],
                                         ["CMH",${cmhCount}]
                                       ];

            $("#shieldui-chart2").shieldChart({
                theme: "dark",
                primaryHeader: {
                    text: "최다 신청 카드"
                },
                exportOptions: {
                    image: true,
                    print: true
                },
                dataSeries: [{
                    seriesType: "pie",
                    collectionAlias: "신청수",
                    data: browsersPopularity
                }]
            });

             $("#shieldui-grid1").shieldGrid({
                dataSource: {
                    data: traffic
                },
                sorting: {
                    multiple: true
                },
                rowHover: false,
                paging: false,
            
            });            
        });    
        
         Morris.Bar({
             element: 'totalApplyCount',
             data: [
               { y: 'XPE2', a: ${xpe2Count}  },
               { y: 'TB', a: ${tbCount}   },
               { y: 'TP', a: ${tpCount}   },
               { y: 'TRE2', a: ${tre2Count}  },
               { y: 'ME2', a: ${me2Count}  },
               { y: 'MPE2', a: ${mpe2Count}  },
               { y: 'M3', a: ${m3pe2Count} },
               { y: 'T3PE2', a: ${t3pe2Count} },
               { y: 'XE2', a: ${xe2Count} },
               { y: 'X3PE2', a: ${x3pe2Count} },
               { y: 'ZRO', a: ${zroCount} },
               { y: 'CMH', a: ${cmhCount} }
                ],
             xkey: 'y',
             ykeys: ['a'],
             labels: ['총 카드신청 수']
           });
         
         

    </script>
     

</body>
</html>
