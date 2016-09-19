package kr.spring.admember.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.admember.domain.AdmemberCommand;
import kr.spring.admember.service.AdmemberService;

@Controller
public class AdMemberDetailController {
  private Logger log= Logger.getLogger(this.getClass());
  
  @Resource
  private AdmemberService admemberService;
  
  @RequestMapping("/admin/admemberdetail.do")
  public ModelAndView process(@RequestParam("m_id") String m_id){
	  
	  
	  
	  if(log.isDebugEnabled()){
		  log.debug("id : "+m_id);
	  }
	  
	  AdmemberCommand admember= admemberService.selectAdMember(m_id);
	  
	//                     轰 捞抚            加己疙        加己
	  return new ModelAndView("adMemberDetail","admember",admember);
  }
  
	
}
