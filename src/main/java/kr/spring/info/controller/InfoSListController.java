package kr.spring.info.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.info.domain.InfoCommand;
import kr.spring.info.service.InfoService;

@Controller
public class InfoSListController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private InfoService infoService;
	
	@RequestMapping("/info/slist.do")
	public ModelAndView process(@RequestParam(value="info_rcm",defaultValue="")String info_rcm, 
								@RequestParam(value="info_flag",defaultValue="")String info_flag){
		
		if(log.isDebugEnabled()){
			log.debug("info_rcm, info_flag : " + info_rcm + ", " + info_flag);
		}
		
		/* 전체 목록 받을 때(파라미터 받으면 안됨)
		List<InfoCommand> alist = infoService.getAllList();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("sList");
		mav.addObject("alist", alist);*/
		
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("info_rcm", info_rcm);
		map.put("info_flag", info_flag);
		
		List<InfoCommand> list = infoService.getSList(map);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("sList");
		mav.addObject("list", list);
		
		return mav;
	}
}
