package kr.spring.admin.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.admin.service.AdminService;
import kr.spring.simpleapply.domain.SimpleApplyCommand;
import kr.spring.util.PagingUtil;

@Controller
public class ManageSimpleApplyController {

	//로그
	private Logger log=Logger.getLogger(this.getClass());

	//한 글에 보여줄 글 갯수와, 페이지 카운트
	private int rowCount=10;
	private int pageCount=10;

	//서비스를 사용하기위해 리소스 가져옴
	@Resource
	private AdminService adminService;

	@RequestMapping("/admin/manageSimpleApplyList.do")
	public ModelAndView process(@RequestParam(value="pageNum",defaultValue="1") int currentPage,
			                    @RequestParam(value="keyfield",defaultValue="") String keyfield,
		                    	@RequestParam(value="keyword",defaultValue="") String keyword){

		//로그 체크
		if(log.isDebugEnabled()){
			log.debug("currentPage : " +currentPage);
			log.debug("keyfield : " +keyfield);
			log.debug("keyword : " +keyword);

		} 
		
		
		//해쉬맵에 키와 값의 쌍으로 저장
		 HashMap<String,Object> map = new HashMap<String,Object>();
		 map.put("keyfield", keyfield);
		 map.put("keyword",keyword);

		//총 글의 갯수 또는 검색된 글의 갯수
		int count=adminService.simpleApplyGetRowCount(map);
		
		 //페이징유틸 객체생성
		 PagingUtil page = new PagingUtil(keyfield,keyword,currentPage,count,rowCount,pageCount,"manageSimpleApplyList.do");
         
		//페이징유틸로 시작카운트와 끝 카운트 구해서 맵에 저장
		  map.put("start", page.getStartCount());
		  map.put("end", page.getEndCount());
		  
		  List<SimpleApplyCommand> list =null;
			
		  if(count>0){
			  list= adminService.simpleApplyList(map);
			  
		  }else{
			  list= Collections.emptyList();
			 
		  }
		
		  ModelAndView mav= new ModelAndView();
		  mav.setViewName("manageSimpleApply");
		  //신청
		  mav.addObject("count",count);
		  mav.addObject("list",list);
		  mav.addObject("pagingHtml",page.getPagingHtml());
		  	  
		  
		  
		  return mav;

	}
}
