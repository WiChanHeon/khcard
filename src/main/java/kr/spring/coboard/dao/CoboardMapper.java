package kr.spring.coboard.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import kr.spring.coboard.domain.CoboardCommand;
import kr.spring.coboard.domain.CoboardReplyCommand;

@Repository
public interface CoboardMapper {
	//부모글
	@Insert("INSERT INTO f_coboard (co_num, m_id, m_name, co_title, co_content, co_filename, co_sort) VALUES (co_seq.nextval, #{m_id}, #{m_name}, #{co_title}, #{co_content}, #{co_filename,jdbcType=VARCHAR}, #{co_sort})")
	public void insertCoboard(CoboardCommand coboard);
		//xml에 sql문 작성
	public List<CoboardCommand> getCoboardList(Map<String,Object> map);
		//xml에 sql문 작성
	public int getCoboardCount(Map<String,Object> map);
	@Select("SELECT co_num,m_id,m_name,co_title,co_content,co_filename,to_char(co_reg,'YYYY-MM-DD HH24:MI:SS') co_reg,co_hit,co_sort FROM f_coboard WHERE co_num = #{co_num}")
	public CoboardCommand selectCoboard(Integer co_num);
	@Update("UPDATE f_coboard SET co_hit = co_hit+1 WHERE co_num = #{co_num}")
	public void plusHit(Integer co_num);
	@Update("UPDATE f_coboard SET co_title=#{co_title}, co_content=#{co_content}, co_filename=#{co_filename,jdbcType=VARCHAR}, co_sort=#{co_sort} WHERE co_num = #{co_num}")
	public void updateCoboard(CoboardCommand coboard);
	@Delete("DELETE FROM f_coboard WHERE co_num = #{co_num}")
	public void deleteCoboard(Integer co_num);
	
	//댓글
	@Insert("INSERT INTO f_coboard_re (co_re_num, co_num, m_id, m_name, co_re_content) VALUES (co_re_seq.nextval, #{co_num}, #{m_id}, #{m_name}, #{co_re_content})")
	public void insertCoboardReply(CoboardReplyCommand core);
	@Select("SELECT count(*) FROM f_coboard_re WHERE co_num = #{co_num}")
	public int getCoboardReplyCount(Integer co_num);
	@Select("SELECT * FROM f_coboard_re WHERE co_re_num = #{co_re_num}")
	public CoboardReplyCommand selectCoboardReply(Integer co_re_num);
		//xml에 sql문 작성
	public List<CoboardReplyCommand> getCoboardReplyList(Map<String,Object> map);
	@Update("UPDATE f_coboard_re SET co_re_content=#{co_re_content} WHERE co_re_num = #{co_re_num}")
	public void updateCoboardReply(CoboardReplyCommand core);
	@Delete("DELETE FROM f_coboard_re WHERE co_re_num = #{co_re_num}")
	public void deleteCoboardReply(Integer co_re_num);
}
