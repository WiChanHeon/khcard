package kr.spring.info.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.info.dao.InfoMapper;
import kr.spring.info.domain.InfoCommand;

@Service("infoService")
public class InfoServiceImpl implements InfoService{
	
	@Resource
	private InfoMapper infoMapper;
	
	@Override
	public List<InfoCommand> getSList(Map<String, Object> map) {
		return null;
	}

	@Override
	public InfoCommand getInfo(String info_id) {
		return null;
	}

}
