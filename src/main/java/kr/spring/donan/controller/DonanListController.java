package kr.spring.donan.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.donan.domain.DonanCommand;
import kr.spring.donan.service.DonanService;

@Controller
public class DonanListController {
	private Logger log= Logger.getLogger(this.getClass());

	@Resource(name="donanService")
	private DonanService donanService;
	
	@RequestMapping(value = "/donan/list.do")
    public ModelAndView donanList() {
        List<DonanCommand> list = donanService.selectBoardList();
        
        ModelAndView mv = new ModelAndView("list.do");
        mv.setViewName("/donan/donanList");
        mv.addObject("list", list);
     
        return mv;
    }
	
}
