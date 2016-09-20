package kr.spring.coboard.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.coboard.dao.CoboardMapper;
import kr.spring.coboard.domain.CoboardCommand;

@Service("coboardService")
public class CoboardServiceImpl implements CoboardService{
	@Resource
	private CoboardMapper coboardMapper;
	
	@Override
	public void insertCoboard(CoboardCommand coboard) {
		coboardMapper.insertCoboard(coboard);
	}

	@Override
	public List<CoboardCommand> getCoboardList(Map<String, Object> map) {
		return coboardMapper.getCoboardList(map);
	}
	
	@Override
	public int getCoboardCount(Map<String, Object> map) {
		return coboardMapper.getCoboardCount(map);
	}

	@Override
	public CoboardCommand selectCoboard(Integer co_num) {
		return coboardMapper.selectCoboard(co_num);
	}

	@Override
	public void plusHit(Integer co_num) {
		coboardMapper.plusHit(co_num);
	}

	@Override
	public void updateCoboard(CoboardCommand coboard) {
		coboardMapper.updateCoboard(coboard);
	}

	@Override
	public void deleteCoboard(Integer co_num) {
		coboardMapper.deleteCoboard(co_num);
	}

	


}
