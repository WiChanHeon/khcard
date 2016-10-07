package kr.spring.coboard.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.spring.coboard.domain.CoboardReplyCommand;
import kr.spring.coboard.service.CoboardService;

@Controller
public class CoboardReplyDeleteController {
	@Resource
	private CoboardService coboardService;
	
	@RequestMapping("/admin/coboardReplyDelete.do")
	public String process(@RequestParam("co_re_num")int co_re_num, @RequestParam("co_num")int co_num, HttpSession session){
		
		//삭제 도중 세션 만료되었을 경우
		String adminId = (String)session.getAttribute("adminId");
		if(adminId == null){
			return "coboardLogout";
		}
		
		//접속ID와 작성ID가 일치하지 않을 경우
		CoboardReplyCommand core = coboardService.selectCoboardReply(co_re_num);
		String writer = core.getM_id();
		if(!adminId.equals(writer)){
			return "coboardMismatch";
		}
		
		coboardService.deleteCoboardReply(co_re_num);
		
		return "redirect:/admin/coboardDetail.do?co_num="+co_num;
	}
}
