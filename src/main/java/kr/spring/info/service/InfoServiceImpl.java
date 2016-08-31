package kr.spring.info.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.info.dao.InfoMapper;
import kr.spring.info.domain.InfoCommand;

@Service("infoService")
public class InfoServiceImpl implements InfoService{
	
	@Resource
	private InfoMapper infoMapper;
	
	@Override
	public List<InfoCommand> getSList() {
		return infoMapper.getSList();
	}

	@Override
	public InfoCommand getInfo(String info_id) {
		return null;
	}



}
