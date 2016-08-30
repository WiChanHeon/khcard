package kr.spring.loss.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.loss.domain.DonanCommand;
import kr.spring.loss.service.DonanService;
import kr.spring.util.PagingUtil;

@Controller
public class DonanController {
	private Logger log= Logger.getLogger(this.getClass());
	
	private int rowCount=10;
	private int pageCount=10;
	
	@Resource
	private DonanService donanService;
	
	@RequestMapping("/chanheon/donan.do")
	public ModelAndView process(){
		
		HashMap<String,Object> map = new HashMap<String,Object>();
		
		//ÃÑ ±ÛÀÇ °¹¼ö ¶Ç´Â °Ë»öµÈ ±ÛÀÇ °¹¼ö
		int count= donanService.getRowCount(map);

		PagingUtil page = new PagingUtil(count,rowCount,pageCount,"donan.do");

		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());

		List<DonanCommand> list =null;
		if(count>0){
			list= donanService.list(map);
		}else{
			list= Collections.emptyList();
		}

		ModelAndView mav= new ModelAndView();
		mav.setViewName("donanList");
		
		return mav;
	}
}
