package kr.spring.apply.service;


import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.spring.apply.domain.ApplyCommand;

public interface ApplyService {
	@Transactional(readOnly=true)
	public List<ApplyCommand> applylist(Map<String,Object> map);
	public void applyinsert(ApplyCommand apply);
	public List<ApplyCommand> selectApply(Map<String,Object> map);
	public int ApplyCount(String ap_name,String ap_rrnrear);
}
