package kr.spring.coboard.controller;

import java.io.File;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.spring.coboard.domain.CoboardCommand;
import kr.spring.coboard.service.CoboardService;
import kr.spring.util.FileUtil;

@Controller
public class CoboardModifyController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private CoboardService coboardService;
	
	
	@RequestMapping(value="/admin/coboardModify.do")
	public String submit(CoboardCommand coboard) throws Exception{
		
		if(log.isDebugEnabled()){
			log.debug("coboard : " + coboard);
		}
		
		
		//���ε� ���� ���� ��� ���� �̸� ����
		String newName = "";
		if(!coboard.getUpload().isEmpty()){
			newName = FileUtil.rename(coboard.getUpload().getOriginalFilename());
			coboard.setCo_filename(newName);
		}
		
		//���� ���� ���� ��� ���� ���ϸ� ����
		CoboardCommand oldCoboard = coboardService.selectCoboard(coboard.getCo_num());
		String oldFileName = oldCoboard.getCo_filename();
		
		
		//�� ����
		coboardService.updateCoboard(coboard);
		
		
		//���ε� ���� ���� ��� ���� ���
		if(!coboard.getUpload().isEmpty()){
			File file = new File(FileUtil.UPLOAD_PATH+"/"+newName);
			coboard.getUpload().transferTo(file);
		}
		
		//���� ����
		if(!coboard.getCo_filename().isEmpty() && coboard.getCo_filename().equals("����")){
			if(oldFileName!=null){
				//���� ���� ����
				FileUtil.removeFile(oldFileName);
			}
		}
		
		return "redirect:/admin/coboardList.do"; //detail�������� ���� �Ѱܼ� �� �� ������ ���� ����
	}
}
