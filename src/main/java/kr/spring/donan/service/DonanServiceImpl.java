package kr.spring.donan.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import kr.spring.apply.domain.ApplyCommand;
import kr.spring.donan.dao.DonanMapper;
import kr.spring.donan.domain.DonanCommand;
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

	@Override
	public List<ApplyCommand> selectLossList(Map<String, Object> map) {
		
		return donanMapper.selectLossList(map);
	}

	@Override
	public void insertLossApply(int loss_memo, String card_num) {
		donanMapper.insertLossApply(loss_memo, card_num);
		
	}

	@Override
	public void updateLossStatus(String card_num) {
		donanMapper.updateLossStatus(card_num);
		
	}

	@Override
	public int isCheckedLossCount(String card_num) {
		
		return donanMapper.isCheckedLossCount(card_num);
	}

	@Override
	public void updateLossMemo(int loss_memo, String card_num) {
		donanMapper.updateLossMemo(loss_memo, card_num);
		
	}



	
}
