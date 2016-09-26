package kr.spring.admin.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.spring.admin.service.AdminService;

@Controller
public class AnalysisYearAjaxController {

   private Logger log= Logger.getLogger(this.getClass());
   
   @Resource
   private AdminService adminService;
   
   @RequestMapping("/admin/analysisYearAjax.do")
   @ResponseBody
   public Map<String,Object> process(@RequestParam(value="ap_reg",defaultValue="2015") String ap_reg,HttpSession session){
      
      if(log.isDebugEnabled()){
         log.debug("ap_reg :"+ ap_reg);

      }
      //선택한 연도
      String ap_reg2= ap_reg;
      
      Map<String,Object> map = new HashMap<String,Object>();
      
      try {
         String userId=(String) session.getAttribute("adminId");
         if(userId==null){
            map.put("result", "logout");
            return map;
         }else{
            //날짜 포맷 변경 sql문에서 사용하기위해
            ap_reg=ap_reg+"%";
            //로그인 상태
            //카드별 연별 신청수
            int xpe2YearApplyCount= adminService.getCardYearApplyCount(ap_reg, "XPE2");
            int tbYearApplyCount= adminService.getCardYearApplyCount(ap_reg, "TB");
            int tpYearApplyCount= adminService.getCardYearApplyCount(ap_reg, "TP");
            int tre2YearApplyCount= adminService.getCardYearApplyCount(ap_reg, "TRE2");
            int me2YearApplyCount= adminService.getCardYearApplyCount(ap_reg, "ME2");
            int mpe2YearApplyCount= adminService.getCardYearApplyCount(ap_reg, "MPE2");
            int m3pe2YearApplyCount= adminService.getCardYearApplyCount(ap_reg, "M3PE2");
            int t3pe2YearApplyCount= adminService.getCardYearApplyCount(ap_reg, "T3PE2");
            int xe2YearApplyCount= adminService.getCardYearApplyCount(ap_reg, "XE2");
            int x3pe2YearApplyCount= adminService.getCardYearApplyCount(ap_reg, "X3PE2");
            int zroYearApplyCount= adminService.getCardYearApplyCount(ap_reg, "ZRO");
            int cmhYearApplyCount= adminService.getCardYearApplyCount(ap_reg, "CMH");
            
            map.put("result", "success");
            map.put("tbYearApplyCount", tbYearApplyCount);
            map.put("tpYearApplyCount", tpYearApplyCount);
            map.put("me2YearApplyCount", me2YearApplyCount);
            map.put("mpe2YearApplyCount", mpe2YearApplyCount);
            map.put("tre2YearApplyCount", tre2YearApplyCount);
            map.put("m3pe2YearApplyCount", m3pe2YearApplyCount);
            map.put("t3pe2YearApplyCount", t3pe2YearApplyCount);
            map.put("xe2YearApplyCount", xe2YearApplyCount);
            map.put("x3pe2YearApplyCount", x3pe2YearApplyCount);
            map.put("xpe2YearApplyCount", xpe2YearApplyCount);
            map.put("zroYearApplyCount", zroYearApplyCount);
            map.put("cmhYearApplyCount", cmhYearApplyCount);
            //select 박스에서 선택한 연도
            map.put("ap_reg2", ap_reg2);
            
            
            
         }
         
      } catch (Exception e) {
         e.printStackTrace();
      }
      
      return map; 
      
      
      
   }
   
}