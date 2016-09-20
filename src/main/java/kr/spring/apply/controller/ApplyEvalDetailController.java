package kr.spring.apply.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.apply.domain.ApplyCommand;
import kr.spring.apply.service.ApplyService;


@Controller
public class ApplyEvalDetailController {
  private Logger log = Logger.getLogger(this.getClass());
  
  @Resource
  private ApplyService applyService;
  
  @RequestMapping("/apply/applyEvalView.do")
  public ModelAndView process(HttpSession session){
	  
	  String ap_name=(String)session.getAttribute("applyName");
	  
	  if(log.isDebugEnabled()){
		  log.debug("ap_name : "+ap_name);
	  }
	  
	  ApplyCommand apply= applyService.selectApply(ap_name);
	  
	  //                        轰 捞抚            加己疙        加己
	  return new ModelAndView("applyEvaluationView","apply",apply);
  }
  
}
