package kr.spring.donan.service;

import java.util.List;

import kr.spring.donan.domain.DonanListCommand;
import kr.spring.donan.domain.DonanWriteCommand;

public interface DonanService {
	List<DonanListCommand> selectBoardList();
	public void insert (DonanWriteCommand donanwrite);
}
