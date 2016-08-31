package kr.spring.donan.service;

import java.util.List;

import kr.spring.donan.domain.DonanCommand;

public interface DonanService {
	
	List<DonanCommand> selectBoardList();
}
