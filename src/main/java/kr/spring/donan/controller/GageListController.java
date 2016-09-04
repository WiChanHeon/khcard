package kr.spring.donan.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.donan.domain.GageCommand;
import kr.spring.donan.service.GageService;

public class GageListController {
	private Logger log= Logger.getLogger(this.getClass());

	@Resource(name="gageService")
	private GageService gageService;
	
	@RequestMapping(value = "/donan/list.do")
    public ModelAndView donanList() {
        List<GageCommand> gagelist = gageService.selectBoardList();
        
        ModelAndView mv = new ModelAndView("gagelist.do");
        mv.setViewName("gageList");
        mv.addObject("gagelist", gagelist);
     
        return mv;
    }
}
