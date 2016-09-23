package kr.spring.coboard.controller;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.spring.coboard.domain.CoboardCommand;
import kr.spring.coboard.service.CoboardService;
import kr.spring.util.FileUtil;

@Controller
public class CoboardModifyController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private CoboardService coboardService;
	
	@RequestMapping(value="/admin/coboardModify.do")
	public String submit(CoboardCommand coboard, @RequestParam(value="filedel",defaultValue="")String filedel, HttpSession session) throws Exception{
		
		if(log.isDebugEnabled()){
			log.debug("coboard : " + coboard);
			log.debug("filedel : " + filedel);
		}
		
		//���� ���� ���� ����Ǿ��� ���
		String adminId = (String)session.getAttribute("adminId");
		if(adminId == null){
			return "coboardLogout";
		}
		
		
		String newName = "";
		boolean delFile = false;
		int co_num = coboard.getCo_num();
		
		//���� ���� ���� ��� ���ϸ� ����
		CoboardCommand oldCoboard = coboardService.selectCoboard(coboard.getCo_num());
		String oldFileName = oldCoboard.getCo_filename();
		coboard.setCo_filename(oldFileName);

		//���ϸ� ���� üũ
		if(filedel.equals("����")){
			delFile = true;
			coboard.setCo_filename("");
		}
		
		//���ε� ���� ���� ��� ���� �̸� ����
		if(!coboard.getUpload().isEmpty()){
			newName = FileUtil.rename(coboard.getUpload().getOriginalFilename());
			coboard.setCo_filename(newName);
		}
		
		System.out.println("oldFileName, co_filename, delFile : " + oldFileName + ", " + coboard.getCo_filename() + ", " + delFile);
		
		
		//�� ����
		coboardService.updateCoboard(coboard);
		
		
		//���� ���� üũ �� ���� ���� ����
		if(delFile){
			if(oldFileName!=null){
				FileUtil.removeFile(oldFileName);
			}
		}
		
		//���ε� ���� ���� ��� ���� ���
		if(!coboard.getUpload().isEmpty()){
			File file = new File(FileUtil.UPLOAD_PATH+"/"+newName);
			coboard.getUpload().transferTo(file);
		}
				
		
		return "redirect:/admin/coboardDetail.do?co_num="+co_num;
	}
}
