package kr.spring.info.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import kr.spring.info.domain.InfoCommand;

@Repository
public interface InfoMapper {
	public List<InfoCommand> getSList(Map<String,Object> map);
	public InfoCommand getInfo(String info_id);
}
