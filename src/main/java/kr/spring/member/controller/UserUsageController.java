package kr.spring.member.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
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
		
		List<Integer> list3 = new ArrayList<Integer>();
		
		List<Integer> list4 = new ArrayList<Integer>(); 
		
		String sql= "SELECT * FROM F_";
		/*Map<String,String> map= new HashMap<String, String>();*/
		String sql2= "SELECT sum(pay_price) FROM F_";
		
		SimpleDateFormat formatter = new SimpleDateFormat ( "yyyyMM", Locale.KOREA );
		Date currentTime = new Date ( );
		String dTime = formatter.format (currentTime);
		dTime += "%";
		System.out.println(dTime);
		for(int i=0;i<list.size();i++){
			Map<String, String> map2 = new HashMap<String, String>();
			sql2 += list.get(i);
			sql2 += " where to_char(pay_reg,'YYYYMM') like '"+dTime+"'";
			map2.put("monthPrice", sql2);
			list3.add(memberService.monthPrice(map2));
			System.out.println(sql2);
			System.out.println("list3 : "+list3.get(i));
			sql2= "SELECT sum(pay_price) FROM F_";
		}
		System.out.println("list3 : "+list3);
		
		
		for(int i=0;i<list.size();i++){
			list4.add(memberService.limitCard(list.get(i)));
			System.out.println("list4 : "+list.get(i));
		}
		System.out.println("list4 : "+list4);
		
		System.out.println(list);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("userUsage");
		for(int i=0; i<list.size();i++){ //카드번호리스트당 
			Map<String,String> map = new HashMap<String, String>();
			map.put("cardUseTable", sql+list.get(i));//각 카드테이블 SQL문 담기 
			list2.addAll(memberService.infoCard(map)); //전체 select문 담긴 리스트
			
			
			System.out.println(list2);
			
			for(int j=0;j<list2.size();j++){
				if (list2.get(j).getCard_bunho()==null) {
					list2.get(j).setCard_bunho(list.get(i));
					list2.get(j).setLimit(list4.get(i));
					list2.get(j).setMonth(list3.get(i));;
				}
			}
			
			
			mav.addObject("cards",list2);
			
		}
		
		for(int i=0; i<list.size();i++){
			mav.addObject("num",list.get(i));
		}
		mav.addObject("gaesoo",list.size());
		System.out.println(mav.toString());
		
		
		
		return mav;
	}
}
