package kr.spring.member.controller;

import java.io.File;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.member.service.MemberService;
import kr.spring.util.FileUtil;
import kr.spring.util.StringUtil;

@Controller
public class CdetailController {
private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private MemberService memberService;
	
	@RequestMapping("/member/cdetail.do")
	public ModelAndView process(@RequestParam("cardnum") String cardnum){
		
		if(log.isDebugEnabled()){
			log.debug("cardnum : " + cardnum);
		}
		
		
		
		
	
		
		return new ModelAndView();
	}
	
      
}
