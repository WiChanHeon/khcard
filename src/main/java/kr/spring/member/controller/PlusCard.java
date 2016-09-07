package kr.spring.member.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.spring.member.domain.CardsCommand;
import kr.spring.member.domain.MemberCommand;
import kr.spring.member.service.MemberService;

@Controller
public class PlusCard {
private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private MemberService memberService;
	
	@ModelAttribute("hcommand")
	public CardsCommand initCommand(){
		return new CardsCommand();
	}
	@RequestMapping(value="/member/plusCard.do",method=RequestMethod.GET)
	public String form() {
		
		return "/member/plusCard";
	}
	
	
	@RequestMapping(value="/member/plusCard.do",method=RequestMethod.POST)
	public String submit(@ModelAttribute("hcommand") 
	                     @Valid CardsCommand cardsCommand,
	                     BindingResult result,HttpSession session){
		String mem_id = (String)session.getAttribute("userId");
		if (memberService.cardsMember(cardsCommand.getCard_num())==null) {
			result.reject("InvalidCardnum");
			return form();
		}
		CardsCommand cards = memberService.cardsMember(cardsCommand.getCard_num());
		if(log.isDebugEnabled()){
			log.debug("cardsCommand : " + cardsCommand);
			log.debug("cards : "+cards);
		}
		
		//유효성 체크
		if(result.hasFieldErrors("card_num") || 
				result.hasFieldErrors("card_pw") || result.hasFieldErrors("card_cvc")){
			return form();
		}
		memberService.cardsMember(cardsCommand.getCard_num());
		if (cards.getCard_num().equals(cardsCommand.getCard_num())) {
			if (cards.getCard_pw().equals(cardsCommand.getCard_pw())) {
				if (cards.getCard_cvc().equals(cardsCommand.getCard_cvc())) {
					memberService.updateCards(mem_id,cardsCommand.getCard_num());
					return "redirect:/main/main.do";
				}else {
					result.reject("InvalidCvc");
					return form();
				}
			}else {
				result.reject("InvalidPw");
				return form();
			}
		}else {
			result.reject("InvalidCardnum");
			return form();
		}
		
		
	}
	
}