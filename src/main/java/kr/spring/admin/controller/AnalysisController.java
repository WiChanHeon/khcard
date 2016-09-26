package kr.spring.admin.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.admin.service.AdminService;

@Controller
public class AnalysisController {

	//���񽺸� ����ϱ����� ���ҽ� ������
	@Resource
	private AdminService adminService;
	
	@RequestMapping("/admin/analysis.do")
	public ModelAndView process(){
		
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
		 
		 //�� �� ī�� ��ûȽ��
		 int xpe2CurrentMonthCount=adminService.getCurrentMonthApplyCount("XPE2");
		 int tbCurrentMonthCount=adminService.getCurrentMonthApplyCount("TB");
		 int tpCurrentMonthCount=adminService.getCurrentMonthApplyCount("TP");
		 int tre2CurrentMonthCount=adminService.getCurrentMonthApplyCount("TRE2");
		 int me2CurrentMonthCount=adminService.getCurrentMonthApplyCount("ME2");
		 int mpe2CurrentMonthCount=adminService.getCurrentMonthApplyCount("MPE2");
		 int m3pe2CurrentMonthCount=adminService.getCurrentMonthApplyCount("M3PE2");
		 int t3pe2CurrentMonthCount=adminService.getCurrentMonthApplyCount("T3PE2");
		 int xe2CurrentMonthCount=adminService.getCurrentMonthApplyCount("XE2");
		 int x3pe2CurrentMonthCount=adminService.getCurrentMonthApplyCount("X3PE2");
		 int zroCurrentMonthCount=adminService.getCurrentMonthApplyCount("ZRO");
		 int cmhCurrentMonthCount=adminService.getCurrentMonthApplyCount("CMH");
		 
		 
		 //�� ����
		
		 ModelAndView mav= new ModelAndView();
		 mav.setViewName("analysis");
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
		  
		  //�� �� 
		  mav.addObject("xpe2CurrentMonthCount",xpe2CurrentMonthCount);
		  mav.addObject("tbCurrentMonthCount",tbCurrentMonthCount);
		  mav.addObject("tpCurrentMonthCount",tpCurrentMonthCount);
		  mav.addObject("tre2CurrentMonthCount",tre2CurrentMonthCount);
		  mav.addObject("me2CurrentMonthCount",me2CurrentMonthCount);
		  mav.addObject("mpe2CurrentMonthCount",mpe2CurrentMonthCount);
		  mav.addObject("m3pe2CurrentMonthCount",m3pe2CurrentMonthCount);
		  mav.addObject("t3pe2CurrentMonthCount",t3pe2CurrentMonthCount);
		  mav.addObject("xe2CurrentMonthCount",xe2CurrentMonthCount);
		  mav.addObject("x3pe2CurrentMonthCount",x3pe2CurrentMonthCount);
		  mav.addObject("zroCurrentMonthCount",zroCurrentMonthCount);
		  mav.addObject("cmhCurrentMonthCount",cmhCurrentMonthCount);
		  
		 
		  
		return mav;
		
		
	}
	
	
}