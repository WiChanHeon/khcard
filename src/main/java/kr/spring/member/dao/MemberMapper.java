package kr.spring.member.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;


import kr.spring.member.domain.CardsCommand;
import kr.spring.member.domain.InfoCardsCommand;
import kr.spring.member.domain.MemberCommand;

@Repository
public interface MemberMapper {
	@Insert("INSERT INTO f_member(mem_id,mem_pw,mem_name,mem_email,mem_cell,mem_reg) VALUES (#{mem_id},#{mem_pw},#{mem_name},#{mem_email},#{mem_cell},sysdate)")
	public void insert(MemberCommand member);
	@Select("SELECT * FROM f_member WHERE mem_id = #{mem_id}")
	public MemberCommand selectMember(String mem_id);
	@Update("UPDATE f_member SET mem_pw=#{mem_pw},mem_name=#{mem_name},mem_email=#{mem_email} WHERE mem_id = #{mem_id}")
	public void update(MemberCommand member);
	@Delete("DELETE FROM f_member WHERE mem_id = #{mem_id}")
	public void delete(String mem_id);
	@Select("SELECT card_num,card_cvc,card_pw FROM f_card WHERE card_num=#{card_num}")
	public CardsCommand cardsMember(String card_num);
	@Update("UPDATE f_apply SET ap_id=#{mem_id} WHERE card_num = #{card_num}")
	public void updateCards(@Param("mem_id")String mem_id, @Param("card_num")String card_num);
	@Select("SELECT card_num FROM f_apply WHERE ap_id=#{user_id}")
	public List<String> usageCard(String user_id);
	@Select("SELECT * from f_#{cardnum}")
	public InfoCardsCommand infoCard(String cardnum);
}






