package kr.spring.member.service;

import javax.annotation.Resource;

import kr.spring.member.dao.MemberMapper;
import kr.spring.member.domain.MemberCommand;

public class MemberServiceImpl implements MemberService{
	
	@Resource
	private MemberMapper memberMapper;
	
	@Override
	public void insert(MemberCommand member) {
		
		memberMapper.insert(member);
	}

	@Override
	public MemberCommand selectMember(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(MemberCommand member) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}

}
