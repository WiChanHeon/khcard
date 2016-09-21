package kr.spring.admember.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class AdMemberLogoutController {

	@RequestMapping("/admin/logout.do")
	public String process(HttpSession session){
		
		//·Î±×¾Æ¿ô 
		session.invalidate();
		
		return "redirect:/admin/adminMain.do";
	}
}

