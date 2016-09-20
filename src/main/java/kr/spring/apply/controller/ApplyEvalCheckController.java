package kr.spring.apply.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.spring.apply.domain.ApplyCommand;
import kr.spring.apply.service.ApplyService;


@Controller
public class ApplyEvalCheckController {

	 private Logger log= Logger.getLogger(this.getClass());
	 
	 @Resource
	 private ApplyService applyService;
	 
	 @ModelAttribute("apply")
	 public ApplyCommand initCommand(){
		 return new ApplyCommand();
	 }
	 
	 @RequestMapping(value="/apply/applyEvalView.do", method=RequestMethod.GET)
	 public String form(){
		 return "applyEvaluationView";
	 }
	 
	 //�����Ѱ�
	 @RequestMapping(value="/apply/applyEvalView.do", method=RequestMethod.POST)
	 public String submit(@ModelAttribute("apply")
	                      @Valid ApplyCommand applyCommand,
			              BindingResult result,
			              HttpSession session){
		 
		 if(log.isDebugEnabled()){
			 log.debug("applyCommand : " + applyCommand);
		 }
		 //��ȿ�� üũ
		 if(result.hasFieldErrors("ap_name") || result.hasFieldErrors("ap_rrnrear")){
			 return form();
		 }
		 
		 //��û�� üũ
		 try{
			 ApplyCommand apply= applyService.selectApply(applyCommand.getAp_name());
			 boolean check= false;
			 
			 if(apply != null){
				 check=apply.isCheckRrn(applyCommand.getAp_rrnrear());
			 }
			 
			 if(check){
				 //�������� , ��û���� ���� ó��
				 session.setAttribute("applyName", applyCommand.getAp_name());
				 return "redirect:/apply/applyEvalView.do";
			 }else{
				 //��������
				 throw new Exception();
			 }
		 }catch(Exception e){
			 //���� ���з� �� ȣ��
			 result.reject("InvalidNameOrRrn");
			 return form();
			 
		 }
	
			 
		 
		 
	 }
	 
}
