package kr.spring.donan.service;

import java.util.List;

import kr.spring.donan.domain.GageCommand;

public interface GageService {
	List<GageCommand> selectBoardList();
	public void insert (GageCommand gagewrite);
}
