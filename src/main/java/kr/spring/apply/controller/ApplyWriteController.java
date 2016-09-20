package kr.spring.apply.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.spring.apply.domain.ApplyCommand;
import kr.spring.apply.service.ApplyService;

@Controller
public class ApplyWriteController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="applyService")
	private ApplyService applyService;
	
	@ModelAttribute("apply")
	public ApplyCommand initCommand(){
		  return new ApplyCommand();
	  }
	
	@RequestMapping(value="/apply/applywrite.do",method=RequestMethod.GET)
	public String form(){
		return "applyWrite";
	}
	
	@RequestMapping(value="/apply/applywrite.do",method=RequestMethod.POST)
	  public String submit(@ModelAttribute("apply") @Valid ApplyCommand applyCommand,BindingResult result){
		  
		  if(log.isDebugEnabled()){
			  log.debug("appplyCommand: " +applyCommand);
		  }
		  
		  if(result.hasErrors()){
			  return form();
		  }
		  applyService.applyinsert(applyCommand);
		  
		  return "redirect:/main/main.do";
	  }
}
