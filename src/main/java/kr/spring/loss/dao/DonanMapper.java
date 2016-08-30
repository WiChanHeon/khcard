package kr.spring.loss.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.spring.loss.domain.DonanCommand;

public interface DonanMapper {

	public List<DonanCommand> list(Map<String,Object> map);
	public int getRowCount(Map<String,Object> map);
	@Insert("INSERT INTO f_loss (loss_num,card_num,loss_reg,loss_memo) VALUES (loss_seq.nextval,#{card_num},sysdate,#{memo})")
	public void insert (DonanCommand board);
	@Select("SELECT * FROM f_loss WHERE seq = #{card_num}")
	public DonanCommand selectDonan(Integer seq);
}
