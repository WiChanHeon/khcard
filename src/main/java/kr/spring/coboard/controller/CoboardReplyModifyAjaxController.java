package kr.spring.coboard.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.spring.coboard.service.CoboardService;

@Controller
public class CoboardReplyModifyAjaxController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private CoboardService coboardService;
	
	@RequestMapping("/admin/coboardReplyModifyAjax.do")
	public Map<String,Object> process(){
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		return map;
	}
}
