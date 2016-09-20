package kr.spring.apply.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import kr.spring.apply.domain.ApplyCommand;
/*import kr.spring.apply.domain.ApplyEvalCommand;*/
import kr.spring.apply.domain.ApplySimpleCommand;

@Repository
public interface ApplyMapper {
	//ī���û
	public List<ApplyCommand> applylist(Map<String,Object> map); 
	@Insert("INSERT INTO f_apply (ap_num,ap_rrnfront,ap_rrnrear,ap_name,ap_ename,ap_cell,ap_email,ap_postnum,ap_address1,ap_address2,ap_paydate,ap_bank,ap_banknum,ap_reg,ap_job,ap_job2) "
			+ "VALUES (ap_seq.nextval,#{ap_rrnfront},#{ap_rrnrear},#{ap_name},#{ap_ename},#{ap_cell},#{ap_email},#{ap_postnum},#{ap_address1},#{ap_address2},#{ap_paydate},#{ap_bank},#{ap_banknum},sysdate,#{ap_job},#{ap_job2})")
	public void applyinsert(ApplyCommand apply);
	@Select("SELECT * FROM f_apply WHERE ap_name = #{ap_name}")
	public ApplyCommand selectApply(String ap_name);
	
	//����ī���û
	public List<ApplySimpleCommand> getApplySimpleList(Map<String,Object> map);
	@Insert("INSERT INTO f_sapply (sap_num,sap_name,sap_cell) VALUES (sap_seq.nextval,#{sap_name},#{sap_cell})")
	public void applySimpleinsert(ApplySimpleCommand applySimple);
	@Select("SELECT * FROM f_sapply WHERE ap_num = #{ap_num}")
	public ApplySimpleCommand selectApplySimple(int sap_num);
	
	/*//�ɻ���
	public List<ApplyEvalCommand> applyEvalList(Map<String,Object> map);
	
	public void ApplyEvaluation(ApplyCommand apply);
	@Select("SELECT ap_name,ap_pass,info_id,ap_reg FROM f_apply WHERE ap_name = #{ap_name}")
	public ApplyEvalCommand selectApplyEval(String ap_name);*/
	
	
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
