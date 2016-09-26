package kr.spring.admin.controller;



import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.admin.service.AdminService;
@Controller
public class AnalysisMonthAjaxController {
  
	private Logger log= Logger.getLogger(this.getClass());

	@Resource
	private AdminService adminService;

	@RequestMapping("/admin/analysisMonthAjax.do")
	@ResponseBody
	public Map<String,Object> process(@RequestParam(value="ap_reg",defaultValue="01") String ap_reg,HttpSession session){
		if(log.isDebugEnabled()){
			log.debug("ap_reg :"+ ap_reg);

		}
		String ap_reg2= ap_reg;
		Map<String,Object> map = new HashMap<String,Object>(); 
        ModelAndView mav= new ModelAndView();
		
		try {
			String userId=(String) session.getAttribute("adminId");
			if(userId==null){
				map.put("result", "logout");
				return map;
				
			}else{
				//날짜 포맷 변경 sql문에서 사용하기위해
			ap_reg="16/"+ap_reg+"%";
			//현재 월 구하기
			Calendar oCalendar = Calendar.getInstance( );
			int current_reg = oCalendar.get(Calendar.MONTH) + 1;
				//로그인상태
				//카드별 월별 신청수
			int xpe2MonthApplyCount= adminService.getCardMonthApplyCount(ap_reg, "XPE2");
			int tbMonthApplyCount= adminService.getCardMonthApplyCount(ap_reg, "TB");
			int tpMonthApplyCount= adminService.getCardMonthApplyCount(ap_reg, "TP");
			int tre2MonthApplyCount= adminService.getCardMonthApplyCount(ap_reg, "TRE2");
			int me2MonthApplyCount= adminService.getCardMonthApplyCount(ap_reg, "ME2");
			int mpe2MonthApplyCount= adminService.getCardMonthApplyCount(ap_reg, "MPE2");
			int m3pe2MonthApplyCount= adminService.getCardMonthApplyCount(ap_reg, "M3PE2");
			int t3pe2MonthApplyCount= adminService.getCardMonthApplyCount(ap_reg, "T3PE2");
			int xe2MonthApplyCount= adminService.getCardMonthApplyCount(ap_reg, "XE2");
			int x3pe2MonthApplyCount= adminService.getCardMonthApplyCount(ap_reg, "X3PE2");
			int zroMonthApplyCount= adminService.getCardMonthApplyCount(ap_reg, "ZRO");
			int cmhMonthApplyCount= adminService.getCardMonthApplyCount(ap_reg, "CMH");
	
			
			map.put("result", "success");
			map.put("tbMonthApplyCount", tbMonthApplyCount);
			map.put("tpMonthApplyCount", tpMonthApplyCount);
			map.put("me2MonthApplyCount", me2MonthApplyCount);
			map.put("mpe2MonthApplyCount", mpe2MonthApplyCount);
			map.put("tre2MonthApplyCount", tre2MonthApplyCount);
			map.put("m3pe2MonthApplyCount", m3pe2MonthApplyCount);
			map.put("t3pe2MonthApplyCount", t3pe2MonthApplyCount);
			map.put("xe2MonthApplyCount", xe2MonthApplyCount);
			map.put("x3pe2MonthApplyCount", x3pe2MonthApplyCount);
			map.put("xpe2MonthApplyCount", xpe2MonthApplyCount);
			map.put("zroMonthApplyCount", zroMonthApplyCount);
			map.put("cmhMonthApplyCount", cmhMonthApplyCount);
			map.put("ap_reg2", ap_reg2);
			map.put("current_reg", current_reg);
			
	
				
			}
		}catch (Exception e) {
				e.printStackTrace();
				

			}
		
		return map;
	}
}

