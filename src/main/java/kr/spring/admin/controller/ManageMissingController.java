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
import kr.spring.donan.domain.DonanCommand;
import kr.spring.util.PagingUtil;

@Controller
public class ManageMissingController {
	private Logger log= Logger.getLogger(this.getClass());

	//서비스를 사용하기위해 리소스 가져옴
	@Resource
	private AdminService adminService;

	//한 글에 보여줄 글 갯수와, 페이지 카운트
	private int rowCount=10;
	private int pageCount=10;

	@RequestMapping("/admin/manageMissingList.do")
	public ModelAndView process(@RequestParam(value="pageNum",defaultValue="1") int currentPage,
			@RequestParam(value="keyfield",defaultValue="") String keyfield,
			@RequestParam(value="keyword",defaultValue="") String keyword){

		//로그 체크
		if(log.isDebugEnabled()){
			log.debug("currentPage : " +currentPage);
			log.debug("keyfield :"+keyfield);
			log.debug("keyword :"+keyword);
		} 

		//해쉬맵에 키와 값의 쌍으로 저장
		HashMap<String,Object> map= new HashMap<String,Object>();
		map.put("keyfield",keyword );
		map.put("keyword",keyword );

		int count=adminService.missingGetRowCount(map);

		//페이징 유틸 객체생성
		PagingUtil page= new PagingUtil(keyfield,keyword,currentPage,count,rowCount,pageCount,"manageMissingList.do");

		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<DonanCommand> list =null;
		  if(count>0){
			  list=adminService.missingList(map);
			  
		  }else{
			  list=Collections.emptyList();
		  }
		  
		  ModelAndView mav= new ModelAndView();
		  mav.setViewName("manageMissing");
		  //신청
		  mav.addObject("count",count);
		  mav.addObject("list",list);
		  mav.addObject("pagingHtml",page.getPagingHtml());
		  	  
		  

		return mav;

	}

}
