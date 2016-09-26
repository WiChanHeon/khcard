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
import kr.spring.apply.domain.ApplyCommand;
import kr.spring.util.PagingUtil;

@Controller
public class AdminListController {
	//로그
	private Logger log=Logger.getLogger(this.getClass());
	
	//한 글에 보여줄 글 갯수와, 페이지 카운트
	private int rowCount=5;
	private int pageCount=10;
	    
	//서비스를 사용하기위해 리소스 가져옴
	@Resource
	private AdminService adminService;
	
	@RequestMapping("/admin/adminMain.do")
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
		 int count=adminService.applyGetRowCount(map);
	     //카드별 총 신청 갯수
		 int xpe2Count=adminService.getCardApplyCount("XPE2");
		 int tbCount=adminService.getCardApplyCount("TB");
		 int tpCount=adminService.getCardApplyCount("TP");
		 int tre2Count=adminService.getCardApplyCount("TRE2");
		 int me2Count=adminService.getCardApplyCount("ME2");
		 int mpe2Count=adminService.getCardApplyCount("MPE2");
		 int m3pe2Count=adminService.getCardApplyCount("M3PE2");
		 int t3pe2Count=adminService.getCardApplyCount("T3PE2");
		 int xe2Count=adminService.getCardApplyCount("XE2");
		 int x3pe2Count=adminService.getCardApplyCount("X3PE2");
		 int zroCount=adminService.getCardApplyCount("ZRO");
		 int cmhCount=adminService.getCardApplyCount("CMH");
		 
		  //페이징 유틸 객체생성
		  PagingUtil page = new PagingUtil(keyfield,keyword,currentPage,count,rowCount,pageCount,"adminMain.do");
		  //페이징유틸로 시작카운트와 끝 카운트 구해서 맵에 저장
		  map.put("start", page.getStartCount());
		  map.put("end", page.getEndCount());
		  
		  List<ApplyCommand> list =null;
		  if(count>0){
			  list= adminService.applyList(map);
		  }else{
			  list= Collections.emptyList();
		  }
		  
		  ModelAndView mav= new ModelAndView();
		  mav.setViewName("adminMain");
		  mav.addObject("count",count);
		  mav.addObject("list",list);
		  mav.addObject("pagingHtml",page.getPagingHtml());
		  //카드별 신청 횟수 
		  mav.addObject("xpe2Count",xpe2Count);
		  mav.addObject("tbCount",tbCount);
		  mav.addObject("tpCount",tpCount);
		  mav.addObject("tre2Count",tre2Count);
		  mav.addObject("me2Count",me2Count);
		  mav.addObject("mpe2Count",mpe2Count);
		  mav.addObject("m3pe2Count",m3pe2Count);
		  mav.addObject("t3pe2Count",t3pe2Count);
		  mav.addObject("xe2Count",xe2Count);
		  mav.addObject("x3pe2Count",x3pe2Count);
		  mav.addObject("zroCount",zroCount);
		  mav.addObject("cmhCount",cmhCount);
		  
		  System.out.println("===================="+zroCount);
		  
		  return mav;
		
	}
	
	
}

