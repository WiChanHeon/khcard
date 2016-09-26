package kr.spring.coboard.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.spring.coboard.domain.CoboardReplyCommand;
import kr.spring.coboard.service.CoboardService;

@Controller
public class CoboardReplyModifyAjaxController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private CoboardService coboardService;
	
	@RequestMapping("/admin/coboardReplyModifyAjax.do")
	@ResponseBody
	public Map<String,Object> process(CoboardReplyCommand core, HttpSession session){
		
		String adminId = (String)session.getAttribute("adminId");
		int co_re_num = core.getCo_re_num();
		String co_re_content = core.getCo_re_content();
		
		if(log.isDebugEnabled()){
			log.debug("co_re_num : " + co_re_num);
			log.debug("co_re_content : " + co_re_content);
		}
		
		System.out.println(adminId);
		
		Map<String,Object> map = new HashMap<String,Object>();
				
		try{
			if(adminId == null){
				map.put("result", "logout");
			}else{
				coboardService.updateCoboardReply(core);
				map.put("result", "success");
			}
		}catch(Exception e){
			e.printStackTrace();
			map.put("result", "failure");
		}
		
		return map;
	}
}
