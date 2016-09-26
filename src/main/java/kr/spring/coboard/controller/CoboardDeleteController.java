package kr.spring.coboard.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.spring.coboard.service.CoboardService;

@Controller
public class CoboardDeleteController {
	@Resource
	private CoboardService coboardService;
	
	@RequestMapping("/admin/coboardDelete.do")
	public String process(@RequestParam("co_num")int co_num, HttpSession session){
		
		//���� ���� ���� ����Ǿ��� ���
		String adminId = (String)session.getAttribute("adminId");
		if(adminId == null){
			return "coboardLogout";
		}
		
		coboardService.deleteCoboard(co_num);
		
		return "redirect:/admin/coboardList.do";
	}
}
