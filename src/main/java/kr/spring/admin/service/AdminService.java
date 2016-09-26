package kr.spring.admin.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Transactional;

import kr.spring.apply.domain.ApplyCommand;
import kr.spring.card.domain.CardCommand;
import kr.spring.donan.domain.DonanCommand;
@Transactional
public interface AdminService {
	@Transactional(readOnly=true)
	public List<ApplyCommand> applyList(Map<String,Object> map);
	@Transactional(readOnly=true)
	public int applyGetRowCount(Map<String,Object> map);
	@Transactional(readOnly=true)
	public List<DonanCommand> missingList(Map<String,Object> map);
	@Transactional(readOnly=true)
	public int missingGetRowCount(Map<String,Object> map);
	public void updatePassStatus(ApplyCommand applymember);
	public ApplyCommand selectApplyMember(String ap_num);
	public void insertInitCardInfo(CardCommand cardCommand);
	public void createPersonalCard(Map<String,String> create_table);
	public void deleteCardInfo(String card_num);
	public void dropPersonalCard(Map<String,String> drop_table);
	public int getCardApplyCount(String info_id);
	public int getCurrentMonthApplyCount(String info_id);
	public int getCardMonthApplyCount(String getCardMonthApplyCount,String info_id );
	public int getCardYearApplyCount(String ap_reg,String info_id);
}
