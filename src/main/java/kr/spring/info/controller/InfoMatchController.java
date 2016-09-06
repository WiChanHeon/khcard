package kr.spring.info.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.info.domain.InfoCommand;
import kr.spring.info.service.InfoService;

@Controller
public class InfoMatchController {
	
	@Resource
	private InfoService infoService;
	
	@RequestMapping("/info/matchCard.do")
	public ModelAndView process(){
		
		List<InfoCommand> list = infoService.getAllList();
		
		return new ModelAndView("matchCard", "list", list);
	}
	
	
}
