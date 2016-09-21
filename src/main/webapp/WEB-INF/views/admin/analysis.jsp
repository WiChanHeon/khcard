<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%-- <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/analysis.js"></script>   --%>
   
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
        <div class="col-md-8">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 전월대비 카드 신청횟수
                             <select id="selectbox" style="float:right; color:black;">
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
        <div class="col-md-8">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 전년대비 카드 신청횟수</h3>
                           
                        </div>
                        <div class="panel-body">
                            <div id="totalApplyCount" style="height: 400px;"></div>
                        </div>
                  
                    </div>
        </div>
	   </div>
	   </div>
</div>
<script type="text/javascript">
$(document).ready(function(){
	
	
	 var count=0;
	 
	 
     $('#selectbox').change(function(){
		
		var data =$('#selectbox option:selected').val();
		
		getCardMonthApply(data,count);
		
	});
 
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
   						 	  labels: [data.ap_reg2+'월 카드신청 수','당월'+data.current_reg+'월 카드신청 수']
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
   						 	  labels: [data.ap_reg2+'월 카드신청 수','당월'+data.current_reg+'월 카드신청 수']
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
       
});
</script> 