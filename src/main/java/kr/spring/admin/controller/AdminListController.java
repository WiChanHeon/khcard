package kr.spring.admin.controller;


import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.admin.service.AdminService;
import kr.spring.apply.domain.ApplyCommand;
import kr.spring.util.PagingUtil;

@Controller
public class AdminListController {
	//�α�
	private Logger log=Logger.getLogger(this.getClass());
	
	//�� �ۿ� ������ �� ������, ������ ī��Ʈ
	private int rowCount=5;
	private int pageCount=10;
	    
	//���񽺸� ����ϱ����� ���ҽ� ������
	@Resource
	private AdminService adminService;
	
	@RequestMapping("/admin/adminMain.do")
	public ModelAndView process(@RequestParam(value="pageNum",defaultValue="1") int currentPage,
			                    @RequestParam(value="keyfield",defaultValue="") String keyfield,
			                    @RequestParam(value="keyword",defaultValue="") String keyword){
		
		//�α� üũ
		 if(log.isDebugEnabled()){
			  log.debug("currentPage : " +currentPage);
			  log.debug("keyfield : " +keyfield);
			  log.debug("keyword : " +keyword);
		  } 
		
		 //�ؽ��ʿ� Ű�� ���� ������ ����
		 HashMap<String,Object> map = new HashMap<String,Object>();
		 map.put("keyfield", keyfield);
		 map.put("keyword",keyword);
		 
		 //�� ���� ���� �Ǵ� �˻��� ���� ����
		 int count=adminService.applyGetRowCount(map);
	     //ī�庰 �� ��û ����
		 int xpe2Count=adminService.getCardApplyCount("XPE2");
		 int tbCount=adminService.getCardApplyCount("TB");
		 int tpCount=adminService.getCardApplyCount("TP");
		 int tre2Count=adminService.getCardApplyCount("TRE2");
		 int me2Count=adminService.getCardApplyCount("ME2");
		 int mpe2Count=adminService.getCardApplyCount("MPE2");
		 int m3pe2Count=adminService.getCardApplyCount("M3PE2");
		 int t3pe2Count=adminService.getCardApplyCount("T3PE2");
		 int xe2Count=adminService.getCardApplyCount("XE2");
		 int x3pe2Count=adminService.getCardApplyCount("X3PE2");
		 int zroCount=adminService.getCardApplyCount("ZRO");
		 int cmhCount=adminService.getCardApplyCount("CMH");
		 
		  //����¡ ��ƿ ��ü����
		  PagingUtil page = new PagingUtil(keyfield,keyword,currentPage,count,rowCount,pageCount,"adminMain.do");
		  //����¡��ƿ�� ����ī��Ʈ�� �� ī��Ʈ ���ؼ� �ʿ� ����
		  map.put("start", page.getStartCount());
		  map.put("end", page.getEndCount());
		  
		  List<ApplyCommand> list =null;
		  if(count>0){
			  list= adminService.applyList(map);
		  }else{
			  list= Collections.emptyList();
		  }
		  
		  ModelAndView mav= new ModelAndView();
		  mav.setViewName("adminMain");
		  mav.addObject("count",count);
		  mav.addObject("list",list);
		  mav.addObject("pagingHtml",page.getPagingHtml());
		  //ī�庰 ��û Ƚ�� 
		  mav.addObject("xpe2Count",xpe2Count);
		  mav.addObject("tbCount",tbCount);
		  mav.addObject("tpCount",tpCount);
		  mav.addObject("tre2Count",tre2Count);
		  mav.addObject("me2Count",me2Count);
		  mav.addObject("mpe2Count",mpe2Count);
		  mav.addObject("m3pe2Count",m3pe2Count);
		  mav.addObject("t3pe2Count",t3pe2Count);
		  mav.addObject("xe2Count",xe2Count);
		  mav.addObject("x3pe2Count",x3pe2Count);
		  mav.addObject("zroCount",zroCount);
		  mav.addObject("cmhCount",cmhCount);
		  
		  System.out.println("===================="+zroCount);
		  
		  return mav;
		
	}
	
	
}

