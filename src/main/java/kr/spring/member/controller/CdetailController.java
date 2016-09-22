package kr.spring.member.controller;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.member.domain.InfoCardsCommand;
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
		
		String sql = "SELECT * FROM F_"; 
		Map<String, String> map = new HashMap<String, String>();
		List<InfoCardsCommand> list = new ArrayList<InfoCardsCommand>();
		map.put("cardUseTable", sql+cardnum);
		list.addAll(memberService.infoCard(map));//카드내역
		System.out.println(list);
		
		ModelAndView mav = new ModelAndView();
		
		
		
		String sql2= "SELECT sum(pay_price) FROM F_";
		SimpleDateFormat formatter = new SimpleDateFormat ( "yyyyMM", Locale.KOREA );
		Date currentTime = new Date ();
		String dTime = formatter.format (currentTime);
		dTime += "%";
		
		
		Map<String, String> map2 = new HashMap<String, String>();
		sql2 +=cardnum;
		sql2 += " where to_char(pay_reg,'YYYYMM') like '"+dTime+"'";
		map2.put("monthPrice", sql2);
		double ab =memberService.monthPrice(map2);
		int month =memberService.monthPrice(map2);
		double aa=memberService.limitCard(cardnum);
		int limit=memberService.limitCard(cardnum);
		double percent = ab/aa*100;
		System.out.println(ab);
		System.out.println(aa);
		System.out.println(percent);
		limit = limit-month;
		
		
		String sql5 = "SELECT sum(pay_point) from F_";
		Map<String,String> map3 = new HashMap<String, String>();
		map3.put("sumPoint", sql5+cardnum);
		int sumpo = memberService.sumPoint(map3);
		
		mav.addObject("uselist", list);
		mav.addObject("num", cardnum);
		mav.addObject("sum", month);
		mav.addObject("limit", limit);
		mav.addObject("percent",percent);
		mav.addObject("point", sumpo);
		return mav;
	}
	
      
}
