package kr.spring.apply.service;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.apply.dao.ApplyMapper;
import kr.spring.apply.domain.ApplySimpleCommand;

@Service("applySimpleService")
public class ApplySimpleServiceImpl implements ApplySimpleService{

	@Resource
	private ApplyMapper applyMapper;
	
	@Override
	public void applySimpleinsert(ApplySimpleCommand applySimple) {
		applyMapper.applySimpleinsert(applySimple);
	}
	@Override
	public ApplySimpleCommand selectApplySimple(int sap_num) {
		return applyMapper.selectApplySimple(sap_num);
	}
}

/*
SELECT
   count(*)
   FROM f_apply where ap_name = #{ap_name} and ap_rrnrear = #{ap_rrnrear};
*/
