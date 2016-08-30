package kr.spring.loss.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.loss.dao.DonanMapper;
import kr.spring.loss.domain.DonanCommand;

@Service("donanService")
public class DonanServiceImpl implements DonanService {
	
	@Resource
	private DonanMapper donanMapper;
	
	@Override
	public List<DonanCommand> list(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return donanMapper.list(map);
	}

	@Override
	public int getRowCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return donanMapper.getRowCount(map);
	}

	@Override
	public void insert(DonanCommand board) {
		donanMapper.insert(board);
		
	}

	@Override
	public DonanCommand selectDonan(Integer seq) {
		// TODO Auto-generated method stub
		return donanMapper.selectDonan(seq);
	}

}
