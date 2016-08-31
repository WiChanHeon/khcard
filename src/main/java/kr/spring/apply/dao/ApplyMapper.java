package kr.spring.apply.dao;


import org.apache.ibatis.annotations.Insert;

import kr.spring.apply.domain.ApplyCommand;

public interface ApplyMapper {
	@Insert("INSERT INTO smember(ap_num,ap_rrn,ap_ename,ap_cell,ap_email,ap_address,ap_paydate,ap_bank,ap_banknum,ap_reg,ap_job) "
			+ "VALUES(#{ap_num},#{ap_rrn},#{ap_ename},#{ap_cell},#{ap_email},#{ap_address},#{ap_paydate},#{ap_bank},#{ap_banknum},sysdate,#{ap_job})")
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
�ּ�			ap_address;	
������		ap_paydate;	���ù�
����� 		ap_bank;	���ù�
���¹�ȣ 		ap_banknum;	
ī���û��¥	ap_reg;		date����
����			ap_job;		���ù�
ī���й�ȣ 	ap_pass;	��ȭ��ȣ �� ���ڸ�
ȸ�����̵� 		ap_id;		ī�常�鶩 �Ƿ����
ȸ��ī���ȣ	card_num; 						*/
