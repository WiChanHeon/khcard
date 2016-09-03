package kr.spring.info.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import kr.spring.info.domain.InfoCommand;

@Repository
public interface InfoMapper {
	public List<InfoCommand> getAllList();
	public List<InfoCommand> getSList(Map<String,Object> map);
	@Select("SELECT * FROM f_info where info_id=#{id1} or info_id=#{id2} or info_id=#{id3}")
	public List<InfoCommand> getInfo(Map<String,Object> map);
}
