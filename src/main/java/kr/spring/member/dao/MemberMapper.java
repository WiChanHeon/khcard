package kr.spring.member.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import kr.spring.member.domain.MemberCommand;

@Repository
public interface MemberMapper {
	@Insert("INSERT INTO f_member(mem_id,mem_pw,mem_name,mem_email,mem_reg) VALUES (#{mem_id},#{mem_pw},#{mem_name},#{mem_email},sysdate)")
	public void insert(MemberCommand member);
	@Select("SELECT * FROM f_member WHERE mem_id = #{mem_id}")
	public MemberCommand selectMember(String id);
	@Update("UPDATE f_member SET mem_pw=#{mem_pw},mem_name=#{mem_name},mem_email=#{mem_email} WHERE mem_id = #{mem_id}")
	public void update(MemberCommand member);
	@Delete("DELETE FROM f_member WHERE mem_id = #{mem_id}")
	public void delete(String id);
	@Select("SELECT COUNT(*) cnt FROM ALL_TABLES WHERE TABLE_NAME = '#{cardNo}'")
	public boolean cardCheck(String cardNo);
}






