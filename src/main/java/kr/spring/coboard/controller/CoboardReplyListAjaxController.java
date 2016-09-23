package kr.spring.coboard.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.spring.coboard.domain.CoboardReplyCommand;
import kr.spring.coboard.service.CoboardService;
import kr.spring.util.PagingUtil;

@Controller
public class CoboardReplyListAjaxController {
	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 5;
	private int pageCount = 3;
	
	@Resource
	private CoboardService coboardService;
	
	@RequestMapping("/admin/coboardListAjax.do")
	@ResponseBody
	public Map<String, Object> process(@RequestParam(value="pageNum",defaultValue="1")int currentPage, @RequestParam("co_num")int co_num, HttpSession session){
		
		if(log.isDebugEnabled()){
			log.debug("pageNum : " + currentPage);
			log.debug("co_num : " + co_num);
		}
		
		Map<String, Object> map = new HashMap<String, Object>(); //총 개수(count) 구하기 위한 map
		map.put("co_num", co_num);
		int count = coboardService.getCoboardReplyCount(co_num); //총 개수
		
		PagingUtil page = new PagingUtil(currentPage, count, rowCount, pageCount, "coboardListAjax.do");
		map.put("start", page.getStartCount()); //시작 번호
		map.put("end", page.getEndCount()); //끝 번호
		
		
		
		Map<String, Object> listmap = new HashMap<String, Object>();
		
		List<CoboardReplyCommand> relist = coboardService.getCoboardReplyList(map);
		String adminId = (String)session.getAttribute("adminId");
		
		listmap.put("count", count);
		listmap.put("relist", relist);
		listmap.put("rowCount", rowCount);
		listmap.put("adminId", adminId);
		
		return listmap;
	}
}
