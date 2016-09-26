package kr.spring.donan.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.donan.domain.GageCommand;
import kr.spring.donan.service.GageService;

@Controller
public class GageListController {
	private Logger log= Logger.getLogger(this.getClass());

	@Resource(name="gageService")
	private GageService gageService;
	
	@RequestMapping(value = "/gage/list.do")
    public ModelAndView gageList(@RequestParam(value="keyfield",defaultValue="") String keyfield,
            					 @RequestParam(value="keyword",defaultValue="") String keyword) { 
		if(log.isDebugEnabled()){
	        log.debug("keyfield : " +keyfield);
	        log.debug("keyword : " +keyword);
	     } 
		HashMap<String,Object> map = new HashMap<String,Object>();
	    map.put("keyfield", keyfield);
	    map.put("keyword", keyword);
		
		List<GageCommand> list = null;
       
        ModelAndView mv = new ModelAndView("gagelist.do");
        mv.setViewName("gageList");
        mv.addObject("list", list);
     
        return mv;
    }
}
