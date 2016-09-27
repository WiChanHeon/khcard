package kr.spring.apply.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ApplyEvalCheckOutController {
	
	@RequestMapping("/apply/checkout.do")
	public String process(HttpSession session){
		
		//·Î±×¾Æ¿ô 
		session.invalidate();
		
		return "redirect:/apply/applyEvalView.do";
	}
}
