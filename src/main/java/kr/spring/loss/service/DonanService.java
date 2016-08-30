package kr.spring.loss.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.spring.loss.domain.DonanCommand;

@Transactional
public interface DonanService {
	@Transactional(readOnly=true)
	public List<DonanCommand> list(Map<String,Object> map);
	@Transactional(readOnly=true)
	public int getRowCount(Map<String,Object> map);
	public void insert (DonanCommand board);
	public DonanCommand selectDonan(Integer seq);
}
