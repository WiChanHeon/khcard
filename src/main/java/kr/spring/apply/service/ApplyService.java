package kr.spring.apply.service;

import kr.spring.apply.domain.ApplyCommand;

public interface ApplyService {
	public void applyinsert(ApplyCommand apply);
	public ApplyCommand selectApply(String ap_num);
	public void applyupdate(ApplyCommand apply);
	public void applydelete(String ap_num);
}