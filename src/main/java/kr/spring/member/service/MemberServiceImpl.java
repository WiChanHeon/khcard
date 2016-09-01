package kr.spring.member.service;



import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.member.dao.MemberMapper;
import kr.spring.member.domain.CardsCommand;
import kr.spring.member.domain.MemberCommand;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	
	@Resource
	private MemberMapper memberMapper;
	
	@Override
	public void insert(MemberCommand member) {
		
		memberMapper.insert(member);
	}

	@Override
	public MemberCommand selectMember(String mem_id) {
		return memberMapper.selectMember(mem_id);
	}

	@Override
	public void update(MemberCommand member) {
		memberMapper.update(member);
	}

	@Override
	public void delete(String mem_id) {
		
		memberMapper.delete(mem_id);
	}
	@Override
	public CardsCommand cardsMember(String card_num){
		return memberMapper.cardsMember(card_num);
		
	}

}
