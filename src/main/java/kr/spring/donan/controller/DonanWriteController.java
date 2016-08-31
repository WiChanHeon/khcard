package kr.spring.donan.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.spring.donan.domain.DonanCommand;
import kr.spring.donan.service.DonanService;

@Controller
@SessionAttributes("command")
public class DonanWriteController {
	private Logger log = Logger.getLogger(this.getClass());

	@Resource
	private DonanService donanService;

	@RequestMapping(value="/donan/write.do",method=RequestMethod.POST)
	public String submit(@ModelAttribute("command")
						 @Valid DonanCommand donanCommand,
						 BindingResult result,
						 SessionStatus status) throws Exception{

		if(log.isDebugEnabled()){
			log.debug("donanCommand : " + donanCommand );
		}

		//유효성 체크
		if(result.hasErrors()){
			return "donanWrite";
		}

		//글 등록
		donanService.insert(donanCommand);
		status.setComplete();
		
		return "redirect:/donan/list.do";
	}

}
