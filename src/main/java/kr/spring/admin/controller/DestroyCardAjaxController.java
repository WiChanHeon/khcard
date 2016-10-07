package kr.spring.admin.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.spring.admin.service.AdminService;

@Controller
public class DestroyCardAjaxController {

	private Logger log= Logger.getLogger(this.getClass());
	
	 @Resource
	 private AdminService adminService;
	 
	 
	 @RequestMapping("/admin/destroyCardAjax.do")
	 @ResponseBody
	 public Map<String,String> process(@RequestParam("card_num") String card_num){
		 
		 if(log.isDebugEnabled()){
				log.debug("card_num :"+ card_num);

		}
		 
		 Map<String,String> map = new HashMap<String,String>();
		 
		 try {
			 
			 
			 adminService.updateReturnStatus("9", card_num);
			 map.put("result", "success");
			
		} catch (Exception e) {
			e.printStackTrace();
			map.put("result", "failure");
		}
		 
		 
		 
		 
		return map;
		 
	 }
}
