package kr.spring.coboard.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.spring.coboard.domain.CoboardCommand;
import kr.spring.coboard.service.CoboardService;

@Controller
public class CoboardDetailController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private CoboardService coboardService;
	
	@RequestMapping("/admin/coboardDetail.do")
	public String process(@RequestParam("co_num")int co_num, Model model){
		
		if(log.isDebugEnabled()){
			log.debug("co_num : " + co_num);
		}
		
		//조회수 증가 (본인은 오르지 않게 추후 작업)
		coboardService.plusHit(co_num);
		
		CoboardCommand command = coboardService.selectCoboard(co_num);
		
		
		model.addAttribute("coboard", command);
		
		return "coboardDetail";
	}


}
