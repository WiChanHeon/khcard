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

import kr.spring.donan.domain.DonanWriteCommand;
import kr.spring.donan.service.DonanService;

@Controller
public class DonanWriteController {
	
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private DonanService donanService;
	
	@RequestMapping(value="/donan/write.do",method=RequestMethod.GET)
	public String form(HttpSession session, Model model){
		String loss_phone = (String)session.getAttribute("phone");

		DonanWriteCommand command = new DonanWriteCommand();
		command.setLoss_phone(loss_phone);

		model.addAttribute("command",command);

		return "donanWrite";
	}
	@RequestMapping(value="/donan/write.do",method=RequestMethod.POST)
	public String submit(@ModelAttribute("command")
						 DonanWriteCommand donanwriteCommand,
						 BindingResult result,
						 SessionStatus status) throws Exception{

		if(log.isDebugEnabled()){
			log.debug("donanwriteCommand : " + donanwriteCommand );
		}

		//±Û µî·Ï
		donanService.insert(donanwriteCommand);
		status.setComplete();
		
		return "redirect:/donan/list.do";
	}
}
