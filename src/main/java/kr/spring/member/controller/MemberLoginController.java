package kr.spring.member.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.spring.member.domain.MemberCommand;
import kr.spring.member.service.MemberService;

@Controller
public class MemberLoginController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private MemberService memberService;
	
	//Ŀ�ǵ� ��ü(�ڹٺ�) �ʱ�ȭ
	@ModelAttribute("hcommand")
	public MemberCommand initCommand(){
		return new MemberCommand();
	}
	
	@RequestMapping(value="/member/login.do",method=RequestMethod.GET)
	public String form(){
		return "member/memberLogin";
	}
	
	@RequestMapping(value="/member/login.do",method=RequestMethod.POST)
	public String submit(@ModelAttribute("hcommand")
	                     @Valid MemberCommand memberCommand,
	                     BindingResult result,
	                     HttpSession session){
		
		if(log.isDebugEnabled()){
			log.debug("memberCommand : " + memberCommand);
		}
		//��ȿ�� üũ
		if(result.hasFieldErrors("mem_id") || 
				result.hasFieldErrors("mem_pw")){
			return form();
		}
		
		//�α��� üũ
		try{
			MemberCommand member = 
					memberService.selectMember(memberCommand.getMem_id());
			boolean check = false;
			
			if(member!=null){
				check = member.isCheckedPasswd(memberCommand.getMem_pw());
			}
			if(check){
				//���� ����, �α��� ó��
				session.setAttribute("userId", memberCommand.getMem_id());
			
				return "redirect:/main/main.do";
			}else{
				//���� ����
				throw new Exception();
			}
		}catch(Exception e){
			//���� ���з� �� ȣ��
			result.reject("InvalidIdOrPassword");
			return form();
		}
	}
}







