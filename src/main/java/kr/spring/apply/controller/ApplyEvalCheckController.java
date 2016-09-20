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
	 
	 //새로한것
	 @RequestMapping(value="/apply/applyEvalView.do", method=RequestMethod.POST)
	 public String submit(@ModelAttribute("apply")
	                      @Valid ApplyCommand applyCommand,
			              BindingResult result,
			              HttpSession session){
		 
		 if(log.isDebugEnabled()){
			 log.debug("applyCommand : " + applyCommand);
		 }
		 //유효성 체크
		 if(result.hasFieldErrors("ap_name") || result.hasFieldErrors("ap_rrnrear")){
			 return form();
		 }
		 
		 //신청자 체크
		 try{
			 ApplyCommand apply= applyService.selectApply(applyCommand.getAp_name());
			 boolean check= false;
			 
			 if(apply != null){
				 check=apply.isCheckRrn(applyCommand.getAp_rrnrear());
			 }
			 
			 if(check){
				 //인증성공 , 신청정보 인증 처리
				 session.setAttribute("applyName", applyCommand.getAp_name());
				 return "redirect:/apply/applyEvalView.do";
			 }else{
				 //인증실패
				 throw new Exception();
			 }
		 }catch(Exception e){
			 //인증 실패로 폼 호출
			 result.reject("InvalidNameOrRrn");
			 return form();
			 
		 }
	
			 
		 
		 
	 }
	 
}
