package kr.spring.donan.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import kr.spring.donan.domain.GageCommand;
import kr.spring.donan.service.GageService;

@Controller
public class GageWriteController {
	
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private GageService gageService;
	
	@RequestMapping(value="/gage/write.do",method=RequestMethod.GET)
	public String form(HttpSession session, Model model){
		String card_num = (String)session.getAttribute("caradNum");

		GageCommand command = new GageCommand();
		command.setCard_num(card_num);

		model.addAttribute("command",command);

		return "gageWrite";
	}
	@RequestMapping(value="/gage/write.do",method=RequestMethod.POST)
	public String submit(@ModelAttribute("command")
						 GageCommand gageCommand,
						 BindingResult result,
						 SessionStatus status) throws Exception{

		if(log.isDebugEnabled()){
			log.debug("gageCommand : " + gageCommand );
		}

		//±Û µî·Ï
		gageService.insert(gageCommand);
		status.setComplete();
		
		return "redirect:/gage/list.do";
	}
}
