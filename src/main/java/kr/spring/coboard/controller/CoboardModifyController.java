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
		
		
		//업로드 파일 있을 경우 파일 이름 변경
		String newName = "";
		if(!coboard.getUpload().isEmpty()){
			newName = FileUtil.rename(coboard.getUpload().getOriginalFilename());
			coboard.setCo_filename(newName);
		}
		
		//기존 파일 있을 경우 기존 파일명 구함
		CoboardCommand oldCoboard = coboardService.selectCoboard(coboard.getCo_num());
		String oldFileName = oldCoboard.getCo_filename();
		
		
		//글 수정
		coboardService.updateCoboard(coboard);
		
		
		//업로드 파일 있을 경우 파일 등록
		if(!coboard.getUpload().isEmpty()){
			File file = new File(FileUtil.UPLOAD_PATH+"/"+newName);
			coboard.getUpload().transferTo(file);
		}
		
		//파일 삭제
		if(!coboard.getCo_filename().isEmpty() && coboard.getCo_filename().equals("삭제")){
			if(oldFileName!=null){
				//이전 파일 삭제
				FileUtil.removeFile(oldFileName);
			}
		}
		
		return "redirect:/admin/coboardList.do"; //detail페이지로 인자 넘겨서 갈 수 있으면 별도 수정
	}
}
