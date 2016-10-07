package kr.spring.donan.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.spring.donan.domain.DonanCommand;
import kr.spring.donan.service.DonanService;

@Controller
public class LossApplyCardAjaxController {

	private Logger log= Logger.getLogger(this.getClass());

	@Resource
	private DonanService donanService;
	

	@RequestMapping("/donan/lossApplyCardAjax.do")
	@ResponseBody
	public Map<String,Object> process(@RequestParam("card_num") String card_num,@RequestParam("loss_memo") String loss_memo){

		if(log.isDebugEnabled()){
			log.debug("card_num :"+ card_num);
			log.debug("loss_memo :"+ loss_memo);

		}
		Map<String,Object> map = new HashMap<String,Object>(); 
		
		int check=donanService.isCheckedLossCount(card_num);
	   

		try {
			//분실목록
			//처음 분실 처리시
			if(check==0){
				donanService.insertLossApply(Integer.parseInt(loss_memo), card_num);
	            
				donanService.updateLossStatus(card_num);
				map.put("result", "success");
		     
			}else{
				//분실데이터가 있을시
				donanService.updateLossStatus(card_num);
				donanService.updateLossMemo(Integer.parseInt(loss_memo),card_num);
				map.put("result", "success");
			}

		} catch (Exception e) {
			e.printStackTrace();
			map.put("result", "failure");
		}

		return map;



	}

}
