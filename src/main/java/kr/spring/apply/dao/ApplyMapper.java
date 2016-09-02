package kr.spring.apply.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

import kr.spring.apply.domain.ApplyCommand;

@Repository
public interface ApplyMapper {
	public List<ApplyCommand> getApplyList(Map<String,Object> map); 
	@Insert("INSERT INTO f_apply (ap_num,ap_rrnfront,ap_rrnrear,ap_name,ap_ename,ap_cell,ap_email,ap_postnum,ap_address1,ap_address2,ap_paydate,ap_bank,ap_banknum,ap_reg,ap_job,ap_job2) "
			+ "VALUES (ap_seq.nextval,#{ap_rrnfront},#{ap_rrnrear},#{ap_name},#{ap_ename},#{ap_cell},#{ap_email},#{ap_postnum},#{ap_address1},#{ap_address2},#{ap_paydate},#{ap_bank},#{ap_banknum},sysdate,#{ap_job},#{ap_job2})")
	public void applyinsert(ApplyCommand apply);
	public ApplyCommand selectApply(String ap_num);
	public void applyupdate(ApplyCommand apply);
	public void applydelete(String ap_num);
	
}
/* 고유번호 		ap_num;		
주민번호 		ap_rrn;		
이름 			ap_name;	
영문이름 		ap_ename;	
전화번호 		ap_cell;	
이메일 		ap_email;	
우편번호		ap_postnum;
주소1			ap_address1;
주소2			ap_address2;	
결제일		ap_paydate;	선택문
은행명 		ap_bank;	선택문
계좌번호 		ap_banknum;	
카드신청날짜	ap_reg;		date생성
직업분류		ap_job;		선택문
직업명		ap_job2;	작성
카드비밀번호 	ap_pass;	전화번호 뒤 네자리
회원아이디 		ap_id;		카드만들땐 피료없고
회원카드번호	card_num; 						*/
