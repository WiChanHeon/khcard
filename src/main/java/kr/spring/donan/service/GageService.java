package kr.spring.donan.service;

import java.util.List;
import java.util.Map;

import kr.spring.donan.domain.GageCommand;

public interface GageService {
	List<GageCommand> selectBoardList();
	public int getRowCount(Map<String,Object> map);
	public void insert (GageCommand gagewrite);
	
	//����� ������ ��Ʈ
	public List<GageCommand> dataGage(Map<String,Object> map);
	
}
