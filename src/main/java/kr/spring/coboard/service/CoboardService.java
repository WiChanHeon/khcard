package kr.spring.coboard.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.spring.coboard.domain.CoboardCommand;

@Transactional
public interface CoboardService {
	//ºÎ¸ð±Û
	public void insertCoboard(CoboardCommand coboard);
	@Transactional(readOnly=true)
	public List<CoboardCommand> getCoboardList(Map<String,Object> map);
	@Transactional(readOnly=true)
	public int getCoboardCount(Map<String,Object> map);
	@Transactional(readOnly=true)
	public CoboardCommand selectCoboard(Integer co_num);
	public void plusHit(Integer co_num);
	public void updateCoboard(CoboardCommand coboard);
	public void deleteCoboard(Integer co_num);
	
	//´ñ±Û
}
