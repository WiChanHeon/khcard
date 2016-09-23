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
		
		//수정 도중 세션 만료되었을 경우
		String adminId = (String)session.getAttribute("adminId");
		if(adminId == null){
			return "coboardLogout";
		}
		
		
		String newName = "";
		boolean delFile = false;
		int co_num = coboard.getCo_num();
		
		//기존 파일 있을 경우 파일명 저장
		CoboardCommand oldCoboard = coboardService.selectCoboard(coboard.getCo_num());
		String oldFileName = oldCoboard.getCo_filename();
		coboard.setCo_filename(oldFileName);

		//파일만 삭제 체크
		if(filedel.equals("삭제")){
			delFile = true;
			coboard.setCo_filename("");
		}
		
		//업로드 파일 있을 경우 파일 이름 변경
		if(!coboard.getUpload().isEmpty()){
			newName = FileUtil.rename(coboard.getUpload().getOriginalFilename());
			coboard.setCo_filename(newName);
		}
		
		System.out.println("oldFileName, co_filename, delFile : " + oldFileName + ", " + coboard.getCo_filename() + ", " + delFile);
		
		
		//글 수정
		coboardService.updateCoboard(coboard);
		
		
		//파일 삭제 체크 시 이전 파일 삭제
		if(delFile){
			if(oldFileName!=null){
				FileUtil.removeFile(oldFileName);
			}
		}
		
		//업로드 파일 있을 경우 파일 등록
		if(!coboard.getUpload().isEmpty()){
			File file = new File(FileUtil.UPLOAD_PATH+"/"+newName);
			coboard.getUpload().transferTo(file);
		}
				
		
		return "redirect:/admin/coboardDetail.do?co_num="+co_num;
	}
}
