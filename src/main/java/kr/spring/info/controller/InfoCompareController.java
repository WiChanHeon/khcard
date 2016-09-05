package kr.spring.info.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.info.domain.InfoCommand;
import kr.spring.info.service.InfoService;

@Controller
public class InfoCompareController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private InfoService infoService;
	
	@RequestMapping("/info/compare.do")
	public ModelAndView process(@RequestParam("card1")String id1, @RequestParam("card2")String id2, @RequestParam(value="card3",defaultValue="")String id3, HttpSession session){
		
		if(log.isDebugEnabled()){
			log.debug("id1, id2, id3 : "+id1+", "+id2+", "+id3);
		}
		
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("id1", id1);
		map.put("id2", id2);
		map.put("id3", id3);
		
		List<InfoCommand> list = infoService.getInfo(map);
		
		/*int count = (Integer)session.getAttribute("ccount");*/
		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("compareCard");
		mav.addObject("compare", list);
		/*mav.addObject("ccount2", count);*/
		
		return mav;
	}
		
}
