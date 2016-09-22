package kr.spring.member.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.member.domain.InfoCardsCommand;
import kr.spring.member.domain.MemberCommand;
import kr.spring.member.service.MemberService;

@Controller
public class UserUsageController {
	private Logger log = Logger.getLogger(this.getClass());
	   
	@Resource
	private MemberService memberService;
	
	//Ŀ�ǵ� ��ü(�ʱ�ȭ)
		@ModelAttribute("hcommand")
		public InfoCardsCommand initCommand(){
			return new InfoCardsCommand();
		}
	
	@RequestMapping("/member/userUsage.do")
	public ModelAndView proccess(HttpSession session) {
		String mem_id = (String)session.getAttribute("userId");
		if(log.isDebugEnabled()){
			log.debug("mem_id : " + mem_id);
		}
		ModelAndView mav=new ModelAndView();
		List<String> list = memberService.usageCard(mem_id); //ī���ȣ����Ʈ
		
		List<InfoCardsCommand> list2 = new ArrayList<InfoCardsCommand>(); 
		
		List<Integer> list3 = new ArrayList<Integer>();
		
		List<Integer> list4 = new ArrayList<Integer>(); 
		
		List<Integer> numlist= new ArrayList<Integer>();
		
		String sql= "SELECT * FROM F_";
		/*Map<String,String> map= new HashMap<String, String>();*/
		String sql2= "SELECT sum(pay_price) FROM F_";
		
		String sql3 ="SELECT count(*) FROM F_";
		
		
		for(int i =0;i<list.size();i++){//��볻������
			Map<String, String> map4 = new HashMap<String, String>();
			sql3+=list.get(i);
			map4.put("usageNumber",sql3);
			numlist.add(memberService.usageNumber(map4));
			System.out.println("numlist : "+numlist.get(i));
			sql3 ="SELECT count(*) FROM F_";
		}
		if (list.size()==2) {//��볻������ ����
			numlist.set(0, numlist.get(0)+numlist.get(1));
			mav.addObject("cusenumber", numlist.get(0));
		}else if (list.size()==3) {
			numlist.set(2, numlist.get(0)+numlist.get(1)+numlist.get(2));
			numlist.set(0, numlist.get(0)+numlist.get(1));
			mav.addObject("cusenumber", numlist.get(0));
			mav.addObject("cusenumber1", numlist.get(2));
		}
		
		System.out.println("ī�峻�밳�� : "+numlist.get(0));
		SimpleDateFormat formatter = new SimpleDateFormat ( "yyyyMM", Locale.KOREA );
		Date currentTime = new Date ( );
		String dTime = formatter.format (currentTime);
		dTime += "%";
		System.out.println(dTime);
		for(int i=0;i<list.size();i++){//����ī�����հ�
			Map<String, String> map2 = new HashMap<String, String>();
			sql2 += list.get(i);
			sql2 += " where to_char(pay_reg,'YYYYMM') like '"+dTime+"'";
			map2.put("monthPrice", sql2);
			list3.add(memberService.monthPrice(map2));
			System.out.println(sql2);
			System.out.println("list3 : "+list3.get(i));
			sql2= "SELECT sum(pay_price) FROM F_";
		}
		System.out.println("list3 : "+list3);
		
		
		
		for(int i=0;i<list.size();i++){//ī���ѵ�
			list4.add(memberService.limitCard(list.get(i)));
			System.out.println("list4 : "+list.get(i));
		}
		System.out.println("list4 : "+list4);
		
		System.out.println(list);
		
		List<Integer> sump = new ArrayList<Integer>();
		String sql5 = "SELECT sum(pay_point) from F_";
		for(int i=0; i<list.size();i++){
			Map<String,String> map = new HashMap<String, String>();
			map.put("sumPoint", sql5+list.get(i));
			sump.add(i, memberService.sumPoint(map));
		}
		
		mav.setViewName("userUsage");
		for(int i=0; i<list.size();i++){ //ī���ȣ����Ʈ�� 
			Map<String,String> map = new HashMap<String, String>();
			map.put("cardUseTable", sql+list.get(i));//�� ī�����̺� SQL�� ��� 
			list2.addAll(memberService.infoCard(map)); //��ü select�� ��� ����Ʈ
			
			
			System.out.println("loof"+list2);
			
			for(int j=0;j<list2.size();j++){
				if (list2.get(j).getCard_bunho()==null) {
					list2.get(j).setCard_bunho(list.get(i));
					list2.get(j).setLimit(list4.get(i)-list3.get(i));
					list2.get(j).setMonth(list3.get(i));
					list2.get(j).setPay_point(sump.get(i));;
				}
			}
			mav.addObject("eyongs"+i, list2.size()+1);
			System.out.println(list2.size());
			mav.addObject("cards",list2);
			
		}
		
		
		
		mav.addObject("num",list);
		mav.addObject("gaesoo",list.size());
		
		mav.addObject("id", mem_id);
		System.out.println(mav.toString());
		
		return mav;
	}
}
