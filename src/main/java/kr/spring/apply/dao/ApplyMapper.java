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
/* ������ȣ 		ap_num;		
�ֹι�ȣ 		ap_rrn;		
�̸� 			ap_name;	
�����̸� 		ap_ename;	
��ȭ��ȣ 		ap_cell;	
�̸��� 		ap_email;	
�����ȣ		ap_postnum;
�ּ�1			ap_address1;
�ּ�2			ap_address2;	
������		ap_paydate;	���ù�
����� 		ap_bank;	���ù�
���¹�ȣ 		ap_banknum;	
ī���û��¥	ap_reg;		date����
�����з�		ap_job;		���ù�
������		ap_job2;	�ۼ�
ī���й�ȣ 	ap_pass;	��ȭ��ȣ �� ���ڸ�
ȸ�����̵� 		ap_id;		ī�常�鶩 �Ƿ����
ȸ��ī���ȣ	card_num; 						*/
