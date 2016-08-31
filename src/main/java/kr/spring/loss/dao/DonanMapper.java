package kr.spring.loss.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.spring.loss.domain.DonanCommand;

public interface DonanMapper {

	public List<DonanCommand> list(Map<String,Object> map);
	public int getRowCount(Map<String,Object> map);
	public void insert (DonanCommand board);
	public DonanCommand selectDonan(Integer seq);
}
