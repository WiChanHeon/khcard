package kr.spring.info.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.info.domain.InfoCommand;
import kr.spring.info.service.InfoService;

@Controller
public class InfoSListController {
	
	@Resource
	private InfoService infoService;
	
	@RequestMapping("/info/slist.do")
	public ModelAndView process(){
		List<InfoCommand> list = null;
		list = infoService.getSList();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		
		return mav;
	}
}
