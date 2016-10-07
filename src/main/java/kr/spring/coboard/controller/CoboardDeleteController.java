package kr.spring.coboard.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.spring.coboard.domain.CoboardCommand;
import kr.spring.coboard.service.CoboardService;
import kr.spring.util.FileUtil;

@Controller
public class CoboardDeleteController {
	@Resource
	private CoboardService coboardService;
	
	@RequestMapping("/admin/coboardDelete.do")
	public String process(@RequestParam("co_num")int co_num, HttpSession session){
		
		//삭제 도중 세션 만료되었을 경우
		String adminId = (String)session.getAttribute("adminId");
		if(adminId == null){
			return "coboardLogout";
		}
		
		
		//파일 체크
		CoboardCommand coboard = coboardService.selectCoboard(co_num);
		String fileName = coboard.getCo_filename();
		
		//접속ID와 작성ID가 일치하지 않을 경우
		String writer = coboard.getM_id();
		if(!adminId.equals(writer)){
			return "coboardMismatch";
		}
		
		//게시물 삭제
		coboardService.deleteCoboard(co_num);
		
		//파일 있는 경우 삭제
		if(fileName!=null){ FileUtil.removeFile(fileName); }
		
		return "redirect:/admin/coboardList.do";
	}
}
