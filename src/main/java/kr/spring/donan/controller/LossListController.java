package kr.spring.donan.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.spring.apply.domain.ApplyCommand;

import kr.spring.donan.service.DonanService;
@Controller
public class LossListController {

	 private Logger log= Logger.getLogger(this.getClass());
	 
	 @Resource
	 private DonanService donanService;
	 
	 @ModelAttribute("apply")
	 public ApplyCommand initCommand(){
		 return new ApplyCommand();
	 }
	 
	 @RequestMapping(value="/donan/list.do", method=RequestMethod.GET)
	 public String form(){
		 
		 return "lossListView";
	 }
	 
	 //새로한것
	 @RequestMapping(value="/donan/list.do", method=RequestMethod.POST)
	 public String submit(@ModelAttribute("apply")
	                      @Valid ApplyCommand applyCommand,
			              BindingResult result,
			              Model model){
		 
		 
		 
		 if(log.isDebugEnabled()){
			  log.debug("applyCommand : " + applyCommand);
		  }
		  
		 if(result.hasFieldErrors("ap_name") || result.hasFieldErrors("ap_rrnfront") || result.hasFieldErrors("ap_rrnrear")){
			 return "lossListView";
		 }
		 
		 if(applyCommand != null){
			 HashMap<String,Object> map = new HashMap<String, Object>();
			 map.put("ap_name",	applyCommand.getAp_name());
			 map.put("ap_rrnfront", applyCommand.getAp_rrnfront());
			 map.put("ap_rrnrear", applyCommand.getAp_rrnrear());
			 
			 List<ApplyCommand> lossList= donanService.selectLossList(map);
			 
			 boolean apok = false;
			 
			 apok = true;
			 
			 model.addAttribute("lossList", lossList);
			 model.addAttribute("apok",apok);
			 
		 }
		 return "lossListView";
	
}
}
