package kr.spring.donan.dao;

import java.util.List;
import java.util.Map;

import kr.spring.donan.domain.DonanCommand;

public interface DonanMapper {
	List<DonanCommand> selectBoardList();
}
