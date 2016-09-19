package kr.spring.admin.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.spring.admin.service.AdminService;
import kr.spring.apply.domain.ApplyCommand;

@Controller
public class DeleteCardAjaxController {

	private Logger log= Logger.getLogger(this.getClass());
	
	@Resource
	private AdminService adminService;
	
	@RequestMapping("/admin/deleteCardAjax.do")
	@ResponseBody
	public Map<String,String> process(@RequestParam("ap_num") String ap_num,HttpSession session){
		
		if(log.isDebugEnabled()){
			log.debug("ap_num :"+ ap_num);

		}
		Map<String,String> map = new HashMap<String,String>();
		
		       //�̹߱޽� �߱���� ��������
				ApplyCommand checkApplyCommand=adminService.selectApplyMember(ap_num);
				if(checkApplyCommand.getAp_pass()==0||checkApplyCommand.getAp_pass()==2){
					map.put("result", "isExist");
					return map;
				}
		
		
		//��ϵ� ī���ȣ
		String card_num;
		
		try {
			String userId=(String) session.getAttribute("adminId");
			if(userId==null){
				map.put("result", "logout");
				
			}else{
				//�α��� �� 
				//ī�� ���� ����
				//��û���̺� ����������
				ApplyCommand applyCommand=adminService.selectApplyMember(ap_num);
				//�߱޵Ǿ��� ī���ȣ
				card_num=applyCommand.getCard_num();
				System.out.println(card_num);
				
				//1.���� ī�����̺� ����
				String drop_table="DROP TABLE f_"+card_num;
				Map<String,String> dropMap = new HashMap<String,String>();
				dropMap.put("drop_table", drop_table);
				
				adminService.dropPersonalCard(dropMap);				

				//2.ī�����̺� ����
				adminService.deleteCardInfo(card_num);
				
				//3.��û���� ����
				applyCommand.setAp_pass(0);
				applyCommand.setCard_num("");
				
				adminService.updatePassStatus(applyCommand);
				
				
				
				
				map.put("result", "success");
			}
		} catch (Exception e) {
			e.printStackTrace();
			map.put("result", "failure");
		}
		return map;
		
	}
}
