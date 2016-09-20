package kr.spring.apply.service;


import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.spring.apply.domain.ApplyCommand;
/*import kr.spring.apply.domain.ApplyEvalCommand;*/

public interface ApplyService {
	@Transactional(readOnly=true)
	public List<ApplyCommand> applylist(Map<String,Object> map);
	public void applyinsert(ApplyCommand apply);
	public ApplyCommand selectApply(String ap_name);
	/*public ApplyEvalCommand selectApplyEval(String ap_name);//eval 하다가 int String ap_name에서 바뀜
*/}
