package kr.spring.admin.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.spring.admin.service.AdminService;
import kr.spring.apply.domain.ApplyCommand;
import kr.spring.card.domain.CardCommand;


@Controller
public class ConfirmCardAjaxController {

	private Logger log= Logger.getLogger(this.getClass());

	@Resource
	private AdminService adminService;

	@RequestMapping("/admin/confirmCardAjax.do")
	@ResponseBody
	public Map<String,String> process(@RequestParam("ap_num") String ap_num,HttpSession session){

		if(log.isDebugEnabled()){
			log.debug("ap_num :"+ ap_num);

		}
		Map<String,String> map = new HashMap<String,String>(); 

		//관리자간 중복발급 방지
		ApplyCommand checkApplyCommand=adminService.selectApplyMember(ap_num);
		if(checkApplyCommand.getAp_pass()==1){ //발급상태일때
			map.put("result", "duplicated");
			return map;
		}else if(checkApplyCommand.getAp_pass()==3){ //거절 상태일때
			map.put("result", "denied");
			return map;
		}
		//실행시 1개 카드번호 생성
		int cardSize=1;
		int cvcSize=1;
		//가능한 랜덤 번호
		final char[] possibleCharacters ={'1','2','3','4','5','6','7','8','9','0'};
		//랜덤번호의 길이
		final int possibleCharacterCount=possibleCharacters.length;

		//정보가 저장될 카드테이블 
		CardCommand cardCommand= new CardCommand();

		try {
			String userId=(String) session.getAttribute("adminId");
			if(userId==null){
				map.put("result", "logout");
				return map;
			}else{
				//로그인이 상태
				//---카드 등록 절차---
				//신청번호를 통해 신청자 정보 가져옴
				ApplyCommand applyCommand=adminService.selectApplyMember(ap_num);
				//카드 신청 상태 발급으로
				applyCommand.setAp_pass(1);
				//카드 상태를 발급으로 
				applyCommand.setAp_status(1);
				//랜덤카드번호 발급 카드번호(16자리),cvc번호(3자리) 
				String[] card_array= new String[cardSize];
				String[] cvc_array= new String[cvcSize];
				Random rnd =new Random();
				int currentIndex=0;
				int i=0;

				StringBuffer card_buf= new StringBuffer(32);
				StringBuffer cvc_buf= new StringBuffer(6);
				//i는 16자리 랜덤값을 의미
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
				//가져온 신청자 정보에 카드번호 발급
				applyCommand.setCard_num(cardNum);
				//카드 테이블에 정보 저장
				cardCommand.setCard_num(cardNum);
				cardCommand.setCard_cvc(cvcNum);

				//개별 카드테이블 sql
				String create_table =" CREATE TABLE f_"+cardNum+"(  pay_num number not null,  pay_reg date not null,  pay_price number not null,  pay_spot varchar2(30) not null,  pay_rate number(3,1) default(0),  pay_point number default(0),  CONSTRAINT f_"+cardNum+"_PK PRIMARY KEY (pay_num)  )";

				Map<String,String> createMap = new HashMap<String,String>();
				createMap.put("create_table", create_table);

				//개별 카드테이블 생성
				adminService.createPersonalCard(createMap);

				
				//유효기간은 5년
				Calendar cal= Calendar.getInstance();
				cal.add(cal.YEAR,5);
				SimpleDateFormat dateFormat= new SimpleDateFormat("yyyyMM");
				String card_year=dateFormat.format(cal.getTime()).substring(0,4);
				String card_month=dateFormat.format(cal.getTime()).substring(4,6);

				cardCommand.setCard_yyyy(card_year);
				cardCommand.setCard_mm(card_month);

				//전화번호 끝 4자리가 비밀번호
				String ap_cell=applyCommand.getAp_cell();
				String card_pw=ap_cell.substring(ap_cell.length()-4,ap_cell.length());

				cardCommand.setCard_pw(card_pw);

				//카드 테이블에 정보추가
				adminService.insertInitCardInfo(cardCommand);
				//신청 테이블에 정보 갱신
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
