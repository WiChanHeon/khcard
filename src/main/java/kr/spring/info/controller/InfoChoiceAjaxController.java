package kr.spring.info.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.spring.info.service.InfoService;

@Controller
public class InfoChoiceAjaxController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private InfoService infoService;
	
	@RequestMapping("/info/choicePlusAjax.do")
	@ResponseBody
	public Map<String,Object> processPlus(@RequestParam("info_id")String info_id, HttpSession session){
		
		if(log.isDebugEnabled()){
			log.debug("info_id - plus : " + info_id);
		}
		
		
		ArrayList<String> al = (ArrayList<String>) session.getAttribute("choice");
		
		if(al==null){
			al = new ArrayList<String>();
			session.setAttribute("choice", al);
			session.setAttribute("ccount", 0);
		}
		
		int count = al.size();
		System.out.println(count);
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		try{
			
			if(count < 3 && !al.contains(info_id)){ //담긴 개수 3 안되고 이미 존재하지 않음
				al.add(info_id);
				count++;
				
				session.setAttribute("choice", al);
				session.setAttribute("ccount", count);
				
				map.put("choice", al);
				map.put("ccount", count);
				map.put("result", "success");
				
			}else if(count >= 3){ //담긴 개수 3 초과
				map.put("result", "excess3");
			}else if(al.contains(info_id)){ //이미 존재
				map.put("result", "exist");
			}
		}catch(Exception e){
			e.printStackTrace();
			map.put("result", "failure");
		}
		
		return map;
	}
	
	
	@RequestMapping("/info/choiceMinusAjax.do")
	@ResponseBody
	public Map<String,Object> processMinus(@RequestParam("info_id")String info_id, HttpSession session){
		
		if(log.isDebugEnabled()){
			log.debug("info_id - minus : " + info_id);
		}
		
		
		ArrayList<String> al = (ArrayList<String>) session.getAttribute("choice");		
		int count = al.size();
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		try{
			
			if(count > 0 && al.contains(info_id)){ //담긴 카드 있고 비교함에 존재하는 카드
				al.remove(info_id);
				count--;
				
				session.setAttribute("choice", al);
				session.setAttribute("ccount", count);
				
				map.put("choice", al);
				map.put("ccount", count);
				map.put("result", "success");
				
			}else if(count < 1){ //카드 없음
				map.put("result", "none");
			}else if(!al.contains(info_id)){ //존재하지 않는 카드
				map.put("result", "wrong");
			}
		}catch(Exception e){
			e.printStackTrace();
			map.put("result", "failure");
		}
		
		return map;
	}
	
}
