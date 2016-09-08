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
	
	//Ŀ�ǵ� ��ü(�ʱ�ȭ)
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
	
		List<String> list = memberService.usageCard(mem_id); //ī���ȣ����Ʈ
		
		List<InfoCardsCommand> list2 = new ArrayList<InfoCardsCommand>(); 
		
		
		
		String sql= "SELECT * FROM F_";
		/*Map<String,String> map= new HashMap<String, String>();*/
		
		
		System.out.println(sql+list.get(1));
		
		System.out.println(list);
		
		for(int i=0; i<list.size();i++){ //ī���ȣ����Ʈ�� 
			Map<String,String> map = new HashMap<String, String>();
			map.put("cardUseTable", sql+list.get(i)); //�� ī�����̺� SQL�� ���
			list2.addAll(memberService.infoCard(map)); //��ü select�� ��� ����Ʈ
		}
		
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("userUsage");
		mav.addObject("cards",list2);
		
		
		return mav;
	}
}
