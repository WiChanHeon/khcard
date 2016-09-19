package kr.spring.member.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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
		list.addAll(memberService.infoCard(map));
		System.out.println(list);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("uselist", list);
		mav.addObject("num", cardnum);
		return mav;
	}
	
      
}
