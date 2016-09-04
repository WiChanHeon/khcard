package kr.spring.donan.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import kr.spring.donan.dao.GageMapper;
import kr.spring.donan.domain.GageCommand;

@Service("gageService")
public class GageServiceImple implements GageService{
Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="gageMapper")
    private GageMapper gageMapper;

	@Override
	public List<GageCommand> selectBoardList() {
		
		return gageMapper.selectBoardList();
	}

	@Override
	public void insert(GageCommand gagewrite) {
		gageMapper.insert(gagewrite);
	}

}
