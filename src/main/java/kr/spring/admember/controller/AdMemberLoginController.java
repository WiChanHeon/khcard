package kr.spring.admember.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.spring.admember.domain.AdmemberCommand;
import kr.spring.admember.service.AdmemberService;

@Controller
public class AdMemberLoginController {

	private Logger log= Logger.getLogger(this.getClass());
		 
		 @Resource
		 private AdmemberService admemberService;
		 
		 @ModelAttribute("command")
		 public AdmemberCommand initCommand(){
			 return new AdmemberCommand();
		 }
		 
		 @RequestMapping(value="/admin/login.do", method=RequestMethod.GET)
		 public String form(){
			 System.out.println("������´�!!!");
			 return "admemberLogin";
		 }
		 
		 //�����Ѱ�
		 @RequestMapping(value="/admin/login.do", method=RequestMethod.POST)
		 public String submit(@ModelAttribute("command")
		                      @Valid AdmemberCommand admemberCommand,
				              BindingResult result,
				              HttpSession session){
			 
			 if(log.isDebugEnabled()){
				 log.debug("admemberCommand : " + admemberCommand);
			 }
			 //��ȿ�� üũ
			 if(result.hasFieldErrors("m_id") || result.hasFieldErrors("m_pw")){
				 return form();
			 }
			 
			 //�α��� üũ
			 try{
				 AdmemberCommand admember= admemberService.selectAdMember(admemberCommand.getM_id());
				 boolean check= false;
				 
				 if(admember != null){
					 check=admember.isCheckedPasswd(admemberCommand.getM_pw());
				 }
				 
				 if(check){
					 //�������� , �α��� ó��
					 session.setAttribute("adminId", admemberCommand.getM_id());
					 return "redirect:/admin/adminMain.do";
				 }else{
					 //��������
					 throw new Exception();
				 }
			 }catch(Exception e){
				 //���� ���з� �� ȣ��
				 result.reject("invalidIdOrPassword");
				 return form();
				 
			 }
		
				 
			 
			 
		 }
		 
	}
	
	


	
	

