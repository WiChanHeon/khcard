package kr.spring.apply.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.spring.apply.domain.ApplyEvalCommand;
import kr.spring.apply.service.ApplyService;

@Controller
public class ApplyEvalController {
private Logger log = Logger.getLogger(this.getClass());
   
   @Resource
   private ApplyService applyService;
   
   @ModelAttribute("apply")
   public ApplyEvalCommand initCommand(){
      return new ApplyEvalCommand();
   }
   
   @RequestMapping(value="/apply/applyEval.do",method=RequestMethod.GET)
   public String form(){
      return "/apply/applyEvaluation";
   }
   
   @RequestMapping(value="/apply/applyEval.do",method=RequestMethod.POST)
   public String submit(@ModelAttribute("apply") 
                        @Valid ApplyEvalCommand applyEvalCommand,
                        BindingResult result){
      if (applyService.selectApply(applyEvalCommand.getAp_name())==null) {
         result.reject("InvalidNameNull");
         return form();
      }
      ApplyEvalCommand eval = applyService.selectApplyEval(applyEvalCommand.getAp_name());
      if(log.isDebugEnabled()){
         log.debug("applyEvalCommand : " + applyEvalCommand);
         log.debug("eval : "+eval);
      }
      
      //유효성 체크
      if(result.hasFieldErrors("ap_name") || 
            result.hasFieldErrors("ap_rrnfront") || result.hasFieldErrors("ap_rrnrear")){
         return form();
      }
      applyService.selectApplyEval(applyEvalCommand.getAp_name());
      
      if (eval.getAp_name().equals(applyEvalCommand.getAp_name())) {
         if (eval.getAp_rrnfront().equals(applyEvalCommand.getAp_rrnfront())) {
            if (eval.getAp_rrnrear().equals(applyEvalCommand.getAp_rrnrear())) {
               return "redirect:/main/main.do";//요기를 발급심사페이지로 변경
            }else {
               result.reject("InvalidName");
               return form();
            }
         }else {
            result.reject("InvalidRrnFront");
            return form();
         }
      }else {
         result.reject("InvalidCardRrnRear");
         return form();
      }
      
   }
   
}