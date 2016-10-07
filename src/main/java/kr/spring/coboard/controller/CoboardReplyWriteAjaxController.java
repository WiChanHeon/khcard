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
public class CoboardReplyWriteAjaxController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private CoboardService coboardService;
	
	@RequestMapping("/admin/coboardReplyWriteAjax.do")
	@ResponseBody
	public Map<String, String> process(CoboardReplyCommand core, HttpSession session){
		
		String adminId = (String)session.getAttribute("adminId");
		core.setM_id(adminId);
		core.setM_name((String)session.getAttribute("adminName"));
		
		if(log.isDebugEnabled()){
			log.debug("CoboardReplyCommand : " + core);
		}
		
		Map<String, String> map = new HashMap<String, String>();
		
		try{
			if(adminId == null){
				map.put("result", "logout");
			}else{
				coboardService.insertCoboardReply(core);
				map.put("result", "success");
			}
		}catch(Exception e){
			e.printStackTrace();
			map.put("result", "failure");
		}
		
		return map;
	}
}
