package kr.spring.donan.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;

import kr.spring.donan.domain.GageCommand;

public interface GageMapper {
	List<GageCommand> selectBoardList();
	public void insert (GageCommand gagewrite);
}
