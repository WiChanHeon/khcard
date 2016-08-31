package kr.spring.donan.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import kr.spring.donan.dao.DonanMapper;
import kr.spring.donan.domain.DonanCommand;

@Service("donanService")
public class DonanServiceImpl implements DonanService {
	Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="donanMapper")
    private DonanMapper donanMapper;

	@Override
	public List<DonanCommand> selectBoardList() {
		
		return donanMapper.selectBoardList();
	}

	@Override
	public void insert(DonanCommand donan) {
		donanMapper.insert(donan);
		
	}

}
