package kr.spring.admember.dao;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import kr.spring.admember.domain.AdmemberCommand;

@Repository
public interface AdmemberMapper {

	@Select("SELECT * FROM f_admin WHERE m_id = #{m_id}")
	public AdmemberCommand selectAdMember(String m_id);
}
