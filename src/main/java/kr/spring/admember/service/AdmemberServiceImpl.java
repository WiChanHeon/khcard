package kr.spring.admember.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.admember.dao.AdmemberMapper;
import kr.spring.admember.domain.AdmemberCommand;

@Service("admemberService")
public class AdmemberServiceImpl implements AdmemberService {

	@Resource
	private AdmemberMapper admemberMapper;
	
	@Override
	public AdmemberCommand selectAdMember(String m_id) {
		
		return admemberMapper.selectAdMember(m_id) ;
	}

}
