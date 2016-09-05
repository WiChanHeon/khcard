package kr.spring.info.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.spring.info.domain.InfoCommand;

@Transactional
public interface InfoService {
	public List<InfoCommand> getAllList();
	public List<InfoCommand> getSList(Map<String,Object> map);
	public List<InfoCommand> getInfo(Map<String,String> map);
}
