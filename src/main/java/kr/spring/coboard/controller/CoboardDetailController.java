package kr.spring.coboard.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.spring.admember.domain.AdmemberCommand;
import kr.spring.admember.service.AdmemberService;
import kr.spring.coboard.domain.CoboardCommand;
import kr.spring.coboard.service.CoboardService;

@Controller
public class CoboardDetailController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private CoboardService coboardService;
	
	@Resource
	private AdmemberService admemberService;
	
	@RequestMapping("/admin/coboardDetail.do")
	public String process(@RequestParam("co_num")int co_num, Model model, HttpSession session){
		
		if(log.isDebugEnabled()){
			log.debug("co_num : " + co_num);
		}
		
		CoboardCommand command = coboardService.selectCoboard(co_num);
		
		String adminId = (String)session.getAttribute("adminId");
		String writer = command.getM_id();
		
		//조회수 증가 (본인이 작성한 글은 조회수 올라가지 않음)
		if(!adminId.equals(writer)){
			coboardService.plusHit(co_num);
			command = coboardService.selectCoboard(co_num);
		}
		
		
		//글쓴이 정보
		AdmemberCommand adminInfo = admemberService.selectAdMember(writer);
		
		//댓글 개수
		int count = coboardService.getCoboardReplyCount(co_num);
		
		model.addAttribute("coboard", command);
		model.addAttribute("co_re_count", count);
		model.addAttribute("adminInfo", adminInfo);
		
		return "coboardDetail";
	}


}
