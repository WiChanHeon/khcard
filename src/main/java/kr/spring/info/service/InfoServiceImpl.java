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
	public List<InfoCommand> getAllList() {
		return infoMapper.getAllList();
	}
	
	@Override
	public List<InfoCommand> getSList(Map<String, Object> map) {
		return infoMapper.getSList(map);
	}
	
	@Override
	public List<InfoCommand> getInfo(Map<String, Object> map) {
		return infoMapper.getInfo(map);
	}







}
