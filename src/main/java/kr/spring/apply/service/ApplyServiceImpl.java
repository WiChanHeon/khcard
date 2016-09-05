package kr.spring.apply.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.apply.dao.ApplyMapper;
import kr.spring.apply.domain.ApplyCommand;
import kr.spring.apply.domain.ApplyEvalCommand;

@Service("applyService")
public class ApplyServiceImpl implements ApplyService{
	
	@Resource
	private ApplyMapper applyMapper;
	
	@Override
	public void applyinsert(ApplyCommand apply) {
		applyMapper.applyinsert(apply);
	}

	@Override
	public ApplyCommand selectApply(String ap_num) {
		return applyMapper.selectApply(ap_num);
	}
	@Override
	public ApplyEvalCommand selectApplyEval(String ap_name){
		return applyMapper.selectApplyEval(ap_name);
	}

	@Override
	public void applyupdate(ApplyCommand apply) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void applydelete(String ap_num) {
		// TODO Auto-generated method stub
		
	}

}
