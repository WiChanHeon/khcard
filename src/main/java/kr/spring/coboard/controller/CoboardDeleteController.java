package kr.spring.coboard.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.spring.coboard.domain.CoboardCommand;
import kr.spring.coboard.service.CoboardService;
import kr.spring.util.FileUtil;

@Controller
public class CoboardDeleteController {
	@Resource
	private CoboardService coboardService;
	
	@RequestMapping("/admin/coboardDelete.do")
	public String process(@RequestParam("co_num")int co_num, HttpSession session){
		
		//���� ���� ���� ����Ǿ��� ���
		String adminId = (String)session.getAttribute("adminId");
		if(adminId == null){
			return "coboardLogout";
		}
		
		
		//���� üũ
		CoboardCommand coboard = coboardService.selectCoboard(co_num);
		String fileName = coboard.getCo_filename();
		
		//����ID�� �ۼ�ID�� ��ġ���� ���� ���
		String writer = coboard.getM_id();
		if(!adminId.equals(writer)){
			return "coboardMismatch";
		}
		
		//�Խù� ����
		coboardService.deleteCoboard(co_num);
		
		//���� �ִ� ��� ����
		if(fileName!=null){ FileUtil.removeFile(fileName); }
		
		return "redirect:/admin/coboardList.do";
	}
}
