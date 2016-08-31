package kr.spring.info.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import kr.spring.info.domain.InfoCommand;

@Repository
public interface InfoMapper {
	public List<InfoCommand> getSList();
	@Select("SELECT * FROM f_info where info_id = #{info_id}")
	public InfoCommand getInfo(String info_id);
}
