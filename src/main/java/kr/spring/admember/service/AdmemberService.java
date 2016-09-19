package kr.spring.admember.service;

import org.springframework.transaction.annotation.Transactional;

import kr.spring.admember.domain.AdmemberCommand;

@Transactional
public interface AdmemberService {
	
	@Transactional(readOnly=true)
	public AdmemberCommand selectAdMember(String m_id);
}
