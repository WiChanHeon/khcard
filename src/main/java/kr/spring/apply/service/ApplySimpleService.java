package kr.spring.apply.service;

import kr.spring.apply.domain.ApplySimpleCommand;

public interface ApplySimpleService {
	public void applySimpleinsert(ApplySimpleCommand applySimple);
	public ApplySimpleCommand selectApplySimple(int sap_num);
}
