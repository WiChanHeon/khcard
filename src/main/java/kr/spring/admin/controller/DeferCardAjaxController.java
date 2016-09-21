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
import kr.spring.apply.domain.ApplyCommand;
@Controller
public class DeferCardAjaxController {

	private Logger log= Logger.getLogger(this.getClass());

	@Resource
	private AdminService adminService;

	@RequestMapping("/admin/deferCardAjax.do")
	@ResponseBody
	public Map<String,String> process(@RequestParam("ap_num") String ap_num,HttpSession session){

		if(log.isDebugEnabled()){
			log.debug("ap_num :"+ ap_num);

		}
		Map<String,String> map = new HashMap<String,String>();
		//관리자간 중복 보류 방지
		ApplyCommand checkApplyCommand=adminService.selectApplyMember(ap_num);
		if(checkApplyCommand.getAp_pass()==2){ //이미 보류 상태일때
			map.put("result", "isdefered");
			return map;
		}else if(checkApplyCommand.getAp_pass()==1){ //이미 발급 상태일때 
			map.put("result", "isconfirmed");
			return map;
		}else if(checkApplyCommand.getAp_pass()==3){ //이미 거절 상태일 때 
			map.put("result", "isdenied");
			return map;
		}


		try {
			String userId=(String) session.getAttribute("adminId");
			if(userId==null){
				map.put("result", "logout");

			}else{
				ApplyCommand applyCommand=adminService.selectApplyMember(ap_num);
				applyCommand.setAp_pass(2);
				applyCommand.setCard_num("");
				adminService.updatePassStatus(applyCommand);

				map.put("result", "success");
			}
		} catch (Exception e) {
			e.printStackTrace();
			map.put("result", "failure");
		}
		return map;

	}
}

