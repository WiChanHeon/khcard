package kr.spring.coboard.controller;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.spring.coboard.domain.CoboardCommand;
import kr.spring.coboard.service.CoboardService;
import kr.spring.util.FileUtil;

@Controller
public class CoboardWriteController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private CoboardService coboardService;
	
	@RequestMapping(value="/admin/coboardWrite.do", method=RequestMethod.POST)
	public String submit(@ModelAttribute("command")CoboardCommand coboardCommand, HttpSession session) throws Exception{
		
		coboardCommand.setM_id((String)session.getAttribute("adminId"));
		coboardCommand.setM_name((String)session.getAttribute("adminName"));
		
		if(log.isDebugEnabled()){
			log.debug("coboardCommand : " + coboardCommand);
		}
		
		//수정 도중 세션 만료되었을 경우
		String adminId = (String)session.getAttribute("adminId");
		if(adminId == null){
			return "redirect:/admin/login.do";
		}
		
		//파일 이름 변경
		String newName = "";
		if(!coboardCommand.getUpload().isEmpty()){
			newName = FileUtil.rename(coboardCommand.getUpload().getOriginalFilename());
			coboardCommand.setCo_filename(newName);
		}
		
		//글등록
		coboardService.insertCoboard(coboardCommand);
		
		//파일 등록
		if(!coboardCommand.getUpload().isEmpty()){
			File file = new File(FileUtil.UPLOAD_PATH+"/"+newName);
			coboardCommand.getUpload().transferTo(file);
		}
		
		return "redirect:/admin/coboardList.do";
	}
}
