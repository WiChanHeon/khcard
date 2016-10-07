package kr.spring.donan.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import kr.spring.apply.domain.ApplyCommand;
import kr.spring.donan.domain.DonanCommand;
import kr.spring.donan.domain.DonanListCommand;
import kr.spring.donan.domain.DonanWriteCommand;

public interface DonanService {
	List<DonanListCommand> selectBoardList();
	public void insert (DonanWriteCommand donanwrite);
	public List<ApplyCommand> selectLossList(Map<String,Object> map);
	public void insertLossApply(int loss_memo,String card_num);
	public void updateLossStatus(String card_num);
	public int isCheckedLossCount(String card_num);
	public void updateLossMemo(int loss_memo,String card_num);
}
