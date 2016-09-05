package kr.spring.member.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.spring.member.domain.CardsCommand;
import kr.spring.member.domain.MemberCommand;

public interface MemberService {
	public void insert(MemberCommand member);
	@Transactional(readOnly=true)
	public MemberCommand selectMember(String id);
	public void update(MemberCommand member);
	public void delete(String id);
	public CardsCommand cardsMember(String card_num);
	public void updateCards(String mem_id1,String card_num);
}
