package kr.spring.donan.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.spring.donan.domain.GageCommand;
import kr.spring.donan.service.GageService;

public class GageDataController {
	private Logger log= Logger.getLogger(this.getClass());
	 
	  @Resource
	  private GageService gageService;
	    
	  @RequestMapping("/gage/gageDataAjax.do")
	  @ResponseBody
	  public Map<String, Object> process(
			  				@RequestParam("ca_sort")int ca_sort,
			  				@RequestParam("ca_income") int ca_income){
		  if(log.isDebugEnabled()){
			  log.debug("ca_sort : " + ca_sort);
			  log.debug("ca_income : " + ca_income);
		  }
		  
		  HashMap<String, Object> hashMap = new HashMap<String,Object>();
		  hashMap.put("ca_sort", ca_sort);
		  hashMap.put("ca_income", ca_income);
		  
		  //√— µ•¿Ã≈Õ¿«¿« ∞πºˆ
		  int count = gageService.getRowCount(hashMap);
		  
		  List<GageCommand> list = null;
		  if(count > 0){
			  list = gageService.dataGage(hashMap);
		  }else{
			  list = Collections.emptyList();
		  }
		  
		  Map<String, Object> map = new HashMap<String, Object>();
		  map.put("count", count);
		  map.put("list", list);
		  return map;
	  }
}
