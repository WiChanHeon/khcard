package kr.spring.donan.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import kr.spring.donan.dao.DonanMapper;
import kr.spring.donan.domain.DonanListCommand;
import kr.spring.donan.domain.DonanWriteCommand;

@Service("donanService")
public class DonanServiceImpl implements DonanService {
	Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="donanMapper")
    private DonanMapper donanMapper;

	@Override
	public List<DonanListCommand> selectBoardList() {
		
		return donanMapper.selectBoardList();
	}

	@Override
	public void insert(DonanWriteCommand donanwrite) {
		donanMapper.insert(donanwrite);
		
	}

}
