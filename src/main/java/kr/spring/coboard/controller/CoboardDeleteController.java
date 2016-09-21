package kr.spring.coboard.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.spring.coboard.service.CoboardService;

@Controller
public class CoboardDeleteController {
	@Resource
	private CoboardService coboardService;
	
	@RequestMapping("/admin/coboardDelete.do")
	public String process(@RequestParam("co_num")int co_num){
		
		System.out.println("delete진입성공");
		
		coboardService.deleteCoboard(co_num);
		
		return "redirect:/admin/coboardList.do";
	}
}
