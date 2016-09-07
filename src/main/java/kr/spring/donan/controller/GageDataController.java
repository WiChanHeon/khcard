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
	  public Map<String, Object> process(@RequestParam("ca_num") int ca_num){
		  if(log.isDebugEnabled()){
			  log.debug("ca_num : " + ca_num);
		  }
		  
		  HashMap<String, Object> hashMap = new HashMap<String,Object>();
		  hashMap.put("ca_num", ca_num);
		  
		  //√— µ•¿Ã≈Õ¿« ∞πºˆ
		  int count = gageService.getRowCount(hashMap);
		  
		  List<GageCommand> list = null;
		  if(count > 0){
			  list = gageService.dataGage(hashMap);
		  }else{
			  list = Collections.emptyList();
		  }
		  
		  Map<String, Object> map = new HashMap<String, Object>();
		  
		  map.put("list", list);
		  return map;
	  }
	}
