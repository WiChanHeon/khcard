package kr.spring.donan.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;

import kr.spring.donan.domain.DonanListCommand;
import kr.spring.donan.domain.DonanWriteCommand;

public interface DonanMapper {
	List<DonanListCommand> selectBoardList();
	@Insert("INSERT INTO f_loss (loss_num,loss_reg,loss_memo,loss_phone) VALUES (loss_seq.nextval,sysdate,#{loss_memo, jdbcType=VARCHAR},#{loss_phone, jdbcType=VARCHAR})")
	public void insert (DonanWriteCommand donanwrite);
}
