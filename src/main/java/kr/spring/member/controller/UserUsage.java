package kr.spring.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserUsage {
	@RequestMapping("/usage/userUsage.do")
	public String proccess() {
		return "/usage/userUsage";
	}
}
