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
import kr.spring.simpleapply.domain.SimpleApplyCommand;
import kr.spring.util.PagingUtil;

@Controller
public class ManageSimpleApplyController {

	//�α�
	private Logger log=Logger.getLogger(this.getClass());

	//�� �ۿ� ������ �� ������, ������ ī��Ʈ
	private int rowCount=10;
	private int pageCount=10;

	//���񽺸� ����ϱ����� ���ҽ� ������
	@Resource
	private AdminService adminService;

	@RequestMapping("/admin/manageSimpleApplyList.do")
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
		int count=adminService.simpleApplyGetRowCount(map);
		
		 //����¡��ƿ ��ü����
		 PagingUtil page = new PagingUtil(keyfield,keyword,currentPage,count,rowCount,pageCount,"manageSimpleApplyList.do");
         
		//����¡��ƿ�� ����ī��Ʈ�� �� ī��Ʈ ���ؼ� �ʿ� ����
		  map.put("start", page.getStartCount());
		  map.put("end", page.getEndCount());
		  
		  List<SimpleApplyCommand> list =null;
			
		  if(count>0){
			  list= adminService.simpleApplyList(map);
			  
		  }else{
			  list= Collections.emptyList();
			 
		  }
		
		  ModelAndView mav= new ModelAndView();
		  mav.setViewName("manageSimpleApply");
		  //��û
		  mav.addObject("count",count);
		  mav.addObject("list",list);
		  mav.addObject("pagingHtml",page.getPagingHtml());
		  	  
		  
		  
		  return mav;

	}
}
