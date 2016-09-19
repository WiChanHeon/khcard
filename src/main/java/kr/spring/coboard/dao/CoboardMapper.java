package kr.spring.coboard.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import kr.spring.coboard.domain.CoboardCommand;

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
	
	//댓글
}
