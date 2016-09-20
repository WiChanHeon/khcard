package kr.spring.coboard.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.coboard.service.CoboardService;

@Controller
public class CoboardModifyController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private CoboardService coboardService;
	
	
	@RequestMapping("/admin/coboardModify.do")
	public ModelAndView submit(){
		
		
		
		return new ModelAndView();
	}
}
