package kr.spring.member.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
public class UserUsageController {
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
	
		List<String> list = memberService.usageCard(mem_id); //카드번호리스트
		
		List<InfoCardsCommand> list2 = new ArrayList<InfoCardsCommand>(); 
		
		
		
		String sql= "SELECT * FROM F_";
		/*Map<String,String> map= new HashMap<String, String>();*/
		
		
		System.out.println(sql+list.get(1));
		
		System.out.println(list);
		
		for(int i=0; i<list.size();i++){ //카드번호리스트당 
			Map<String,String> map = new HashMap<String, String>();
			map.put("cardUseTable", sql+list.get(i)); //각 카드테이블 SQL문 담기
			list2.addAll(memberService.infoCard(map)); //전체 select문 담긴 리스트
		}
		
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("userUsage");
		mav.addObject("cards",list2);
		
		
		return mav;
	}
}
