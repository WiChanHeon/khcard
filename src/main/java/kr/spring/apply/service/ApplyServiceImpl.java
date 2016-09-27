package kr.spring.apply.service;


import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.apply.dao.ApplyMapper;
import kr.spring.apply.domain.ApplyCommand;
/*import kr.spring.apply.domain.ApplyEvalCommand;*/

@Service("applyService")
public class ApplyServiceImpl implements ApplyService{
	
	@Override
	public List<ApplyCommand> applylist(Map<String, Object> map) {
		return applyMapper.applylist(map);
	}
	@Resource
	private ApplyMapper applyMapper;
	
	@Override
	public void applyinsert(ApplyCommand apply) {
		applyMapper.applyinsert(apply);
	}

	@Override
	public List<ApplyCommand> selectApply(Map<String,Object> map) {
		return applyMapper.selectApply(map);
	}
	/*@Override
	public ApplyEvalCommand selectApplyEval(String ap_name){
		return applyMapper.selectApplyEval(ap_name);
	}*/

	@Override
	public int ApplyCount(String ap_name, String ap_rrnrear) {
		// TODO Auto-generated method stub
		return applyMapper.ApplyCount(ap_name, ap_rrnrear);
	}


	
	
}
