package kr.spring.donan.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;

import kr.spring.donan.domain.DonanCommand;

public interface DonanMapper {
	List<DonanCommand> selectBoardList();
	@Insert("INSERT INTO f_loss (loss_num,card_num,loss_reg,loss_memo) VALUES (loss_seq.nextval,#{card_num},sysdate,#{loss_memo})")
	public void insert (DonanCommand donan);
}
