package kr.spring.apply.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.spring.apply.domain.ApplySimpleCommand;
import kr.spring.apply.service.ApplySimpleService;

@Controller
public class ApplySimpleWriteController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="applySimpleService")
	private ApplySimpleService applySimpleService;
	
	@ModelAttribute("applySimple")
	public ApplySimpleCommand initCommand(){
		  return new ApplySimpleCommand();
	  }
	
	@RequestMapping(value="/apply/applysimplewrite.do",method=RequestMethod.GET)
	public String form(){
		
		
		return "applySimpleWrite";
	}
	
	@RequestMapping(value="/apply/applysimplewrite.do",method=RequestMethod.POST)
	  public String submit(@ModelAttribute("applySimple") @Valid ApplySimpleCommand applySimpleCommand,BindingResult result){
		  
		  if(log.isDebugEnabled()){
			  log.debug("appplySimpleCommand: " +applySimpleCommand);
		  }
		  
		  
		  if(result.hasErrors()){
			  return form();
		  }
		  applySimpleService.applySimpleinsert(applySimpleCommand);
		  
		  return "applySimpleComplete";
	  }
}
