package kr.spring.info.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.spring.info.domain.InfoCommand;

@Transactional
public interface InfoService {
	public List<InfoCommand> getSList();
	public InfoCommand getInfo(String info_id);
}
