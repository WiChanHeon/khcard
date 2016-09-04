package kr.spring.donan.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;

import kr.spring.donan.domain.GageCommand;

public interface GageMapper {
	List<GageCommand> selectBoardList();
	@Insert("INSERT INTO f_loss (loss_num,loss_reg,loss_memo,loss_phone) VALUES (loss_seq.nextval,sysdate,#{loss_memo, jdbcType=VARCHAR},#{loss_phone, jdbcType=VARCHAR})")
	public void insert (GageCommand gagewrite);
}
