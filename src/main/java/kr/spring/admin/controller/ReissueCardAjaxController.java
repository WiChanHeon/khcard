package kr.spring.admin.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.spring.admin.service.AdminService;
import kr.spring.apply.domain.ApplyCommand;
import kr.spring.card.domain.CardCommand;

@Controller
public class ReissueCardAjaxController {

	

	private Logger log=Logger.getLogger(this.getClass());
	
	@Resource
	private AdminService adminService;
	
	@RequestMapping("/admin/reissueCardAjax.do")
	@ResponseBody
	public Map<String,String> process(@RequestParam("card_num") String card_num,@RequestParam("loss_num") String loss_num){
		
		if(log.isDebugEnabled()){
			log.debug("card_num :"+ card_num);

		}
		
		Map<String,String> map = new HashMap<String,String>(); 
		//����� 1�� ī���ȣ ����
		int cardSize=1;
		int cvcSize=1;
		//������ ���� ��ȣ
		final char[] possibleCharacters ={'1','2','3','4','5','6','7','8','9','0'};
	    //������ȣ�� ����
		final int possibleCharacterCount=possibleCharacters.length;
		
		//������ ����� ī�����̺� 
	    CardCommand cardCommand= new CardCommand();
		
		try {
			
			//ī�� �ı�ó��
			adminService.updateReturnStatus("8", card_num);
			
			//---ī�� ��߱� ��� ����---
			//ī���ȣ�� ���� ��û�� ���� ������
			ApplyCommand applyCommand=adminService.selectCardApplyMember(card_num);
			//ī�� ��û ���� �߱�����
			applyCommand.setAp_pass(1);
			//ī�� ���¸� �߱����� 
			applyCommand.setAp_status(1);
			
			//����ī���ȣ �߱� ī���ȣ(16�ڸ�),cvc��ȣ(3�ڸ�) 
			String[] card_array= new String[cardSize];
			String[] cvc_array= new String[cvcSize];
			Random rnd =new Random();
			int currentIndex=0;
			int i=0;

			StringBuffer card_buf= new StringBuffer(32);
			StringBuffer cvc_buf= new StringBuffer(6);
			//i�� 16�ڸ� �������� �ǹ�
			for(i=16; i>0; i--){
				card_buf.append(possibleCharacters[rnd.nextInt(possibleCharacterCount)]);
			}

			for(i=3; i>0; i--){
				cvc_buf.append(possibleCharacters[rnd.nextInt(possibleCharacterCount)]);
			}

			String cardNum=card_buf.toString();
			card_array[currentIndex]=cardNum;
			String cvcNum=cvc_buf.toString();
			cvc_array[currentIndex]=cvcNum;
			currentIndex++;
			//������ ��û�� ������ ī���ȣ �߱�
			applyCommand.setCard_num(cardNum);
			
			
			//ī�� ���̺��� ���� ����
			cardCommand.setCard_num(cardNum);
			cardCommand.setCard_cvc(cvcNum);

			//���� ī�����̺� sql
			String create_table =" CREATE TABLE f_"+cardNum+"(  pay_num number not null,  pay_reg date not null,  pay_price number not null,  pay_spot varchar2(30) not null,  pay_rate number(3,1) default(0),  pay_point number default(0),  CONSTRAINT f_"+cardNum+"_PK PRIMARY KEY (pay_num)  )";

			Map<String,String> createMap = new HashMap<String,String>();
			createMap.put("create_table", create_table);

			//���� ī�����̺� ����
			adminService.createPersonalCard(createMap);

			
			//��ȿ�Ⱓ�� 5��
			Calendar cal= Calendar.getInstance();
			cal.add(cal.YEAR,5);
			SimpleDateFormat dateFormat= new SimpleDateFormat("yyyyMM");
			String card_year=dateFormat.format(cal.getTime()).substring(0,4);
			String card_month=dateFormat.format(cal.getTime()).substring(4,6);

			cardCommand.setCard_yyyy(card_year);
			cardCommand.setCard_mm(card_month);

			//��ȭ��ȣ �� 4�ڸ��� ��й�ȣ
			String ap_cell=applyCommand.getAp_cell();
			String card_pw=ap_cell.substring(ap_cell.length()-4,ap_cell.length());

			cardCommand.setCard_pw(card_pw);

			//ī�� ���̺��� �����߰�
			adminService.insertInitCardInfo(cardCommand);
			
			System.out.println("ddddddddddddddddddddddddddddddddddddddd"+applyCommand);
			
			//���ο� ī�� �߱޽�û
			adminService.insertReissueCard(applyCommand);
			
			
			 map.put("result", "success");
			 //���ο� �߱� ī�� ��ȣ
			 map.put("cardNum", cardNum);
			 map.put("loss_num", loss_num);
			
		} catch (Exception e) {
			e.printStackTrace();
			map.put("result", "failure");
		}
		
		return map;
		
		
	}
}