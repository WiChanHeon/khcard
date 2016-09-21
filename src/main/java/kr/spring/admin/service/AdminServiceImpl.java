package kr.spring.admin.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.admin.dao.AdminMapper;
import kr.spring.apply.domain.ApplyCommand;
import kr.spring.card.domain.CardCommand;
import kr.spring.donan.domain.DonanCommand;

@Service("adminService")
public class AdminServiceImpl implements AdminService{
	
	@Resource
	private AdminMapper adminMapper;

	@Override
	public List<ApplyCommand> applyList(Map<String, Object> map) {
		
		return adminMapper.applyList(map);
	}

	@Override
	public int applyGetRowCount(Map<String, Object> map) {
		
		return adminMapper.applyGetRowCount(map);
	}

	@Override
	public List<DonanCommand> missingList(Map<String, Object> map) {
		
		return adminMapper.missingList(map);
	}

	@Override
	public int missingGetRowCount(Map<String, Object> map) {
		
		return adminMapper.missingGetRowCount(map);
	}

	@Override
	public void updatePassStatus(ApplyCommand applymember) {
		adminMapper.updatePassStatus(applymember);
		
	}

	@Override
	public ApplyCommand selectApplyMember(String ap_num) {
		
		return adminMapper.selectApplyMember(ap_num);
	}

	@Override
	public void insertInitCardInfo(CardCommand cardCommand) {
		adminMapper.insertInitCardInfo(cardCommand);
		
	}

	@Override
	public void createPersonalCard(Map<String,String> create_table) {
		adminMapper.createPersonalCard(create_table);
		
	}

	@Override
	public void deleteCardInfo(String card_num) {
		adminMapper.deleteCardInfo(card_num);
		
	}

	@Override
	public void dropPersonalCard(Map<String, String> drop_table) {
		adminMapper.dropPersonalCard(drop_table);
		
	}

	@Override
	public int getCardApplyCount(String info_id) {
		
		return adminMapper.getCardApplyCount(info_id);
	}

	@Override
	public int getCurrentMonthApplyCount(String info_id) {
		
		return adminMapper.getCurrentMonthApplyCount(info_id);
	}

	@Override
	public int getCardMonthApplyCount(String ap_reg, String info_id) {
		// TODO Auto-generated method stub
		return adminMapper.getCardMonthApplyCount(ap_reg, info_id);
	}


	



}
