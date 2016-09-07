package kr.spring.member.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.member.domain.InfoCardsCommand;
import kr.spring.member.domain.MemberCommand;
import kr.spring.member.service.MemberService;

@Controller
public class UserUsage {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private MemberService memberService;
	
	//커맨드 객체(초기화)
		@ModelAttribute("hcommand")
		public InfoCardsCommand initCommand(){
			return new InfoCardsCommand();
		}
	
	@RequestMapping("/member/userUsage.do")
	public ModelAndView proccess(HttpSession session) {
		String mem_id = (String)session.getAttribute("userId");
		if(log.isDebugEnabled()){
			log.debug("mem_id : " + mem_id);
		}
		List<String> list = memberService.usageCard(mem_id);
		String a="";
		String b="";
		String c="";
		List<InfoCardsCommand> list2 = new ArrayList<InfoCardsCommand>(); 
		
		for(int i=0; i<list.size();i++){
			list2.add(memberService.infoCard(list.get(i)));
		}
		
		/*if (a=="") {
			a=list.get(0);
			InfoCardsCommand a1=memberService.infoCard(a);
			a1.setCardnum(a);
		}else if (a!="") {
			b=list.get(1);
			InfoCardsCommand b1=memberService.infoCard(b);
			b1.setCardnum(b);
		}else if (a!="" && b!="") {
			c=list.get(2);
			InfoCardsCommand c1=memberService.infoCard(c);
			c1.setCardnum(c);
		}*/
		ModelAndView mav=new ModelAndView();
		
		
		return mav;
	}
}
