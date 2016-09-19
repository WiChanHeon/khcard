package kr.spring.coboard.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.admember.domain.AdmemberCommand;
import kr.spring.admember.service.AdmemberService;
import kr.spring.coboard.domain.CoboardCommand;
import kr.spring.coboard.service.CoboardService;

@Controller
public class CoboardListController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private AdmemberService admemberService;
	
	@Resource
	private CoboardService coboardService;
	
	//커맨드 객체 초기화
	@ModelAttribute("command")
	public CoboardCommand initCommand(){
		return new CoboardCommand();
	}
	
	@RequestMapping("/admin/coboardList.do")
	public ModelAndView process(HttpSession session,
								@RequestParam(value="keyfield",defaultValue="")String keyfield,
								@RequestParam(value="keyword",defaultValue="")String keyword){
		
		//관리자 이름 세션 저장
		if(session.getAttribute("adminName")==null){
			AdmemberCommand adCommand = admemberService.selectAdMember((String)session.getAttribute("adminId"));
			String adminName1 = adCommand.getM_name();
			session.setAttribute("adminName", adminName1);
		}
		String adminName = (String)session.getAttribute("adminName");
		
		
		//디버그 로그
		if(log.isDebugEnabled()){
			log.debug("adminName : " + adminName);
			log.debug("keyfield : " + keyfield);
			log.debug("keyword : " + keyword);
		}		
		
		
		//키워드 정리
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("keyfield", keyfield);
		map.put("keyword", keyword);
		
		
		//게시판 목록 호출
		List<CoboardCommand> colist = null;
		int count = coboardService.getCoboardCount(map);
		System.out.println("count : " + count);
		
		if(count > 0){
			colist = coboardService.getCoboardList(map);
		}else{
			colist = Collections.emptyList();
		}		
		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("coboardList");
		mav.addObject("colist", colist);
		
		return mav;
	}
}
