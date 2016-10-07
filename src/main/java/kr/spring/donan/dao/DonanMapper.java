package kr.spring.donan.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.spring.apply.domain.ApplyCommand;
import kr.spring.donan.domain.DonanCommand;
import kr.spring.donan.domain.DonanListCommand;
import kr.spring.donan.domain.DonanWriteCommand;

public interface DonanMapper {
	List<DonanListCommand> selectBoardList();
	@Insert("INSERT INTO f_loss (loss_num,loss_reg,loss_memo,loss_phone) VALUES (loss_seq.nextval,sysdate,#{loss_memo, jdbcType=VARCHAR},#{loss_phone, jdbcType=VARCHAR})")
	public void insert (DonanWriteCommand donanwrite);
	@Select("SELECT * FROM f_apply WHERE ap_rrnfront = #{ap_rrnfront} AND ap_rrnrear = #{ap_rrnrear} AND ap_name = #{ap_name} AND ap_pass=1")
	public List<ApplyCommand> selectLossList(Map<String,Object> map);
	@Insert("INSERT INTO f_loss (loss_num,loss_reg,loss_memo,card_num) VALUES (loss_seq.nextval,sysdate,#{loss_memo},#{card_num})")
	public void insertLossApply(@Param(value="loss_memo") int loss_memo, @Param(value="card_num") String card_num);
	@Update("UPDATE f_apply SET ap_status=2 WHERE card_num=#{card_num}")
	public void updateLossStatus(String card_num);
	@Select("SELECT count(*) FROM f_loss WHERE card_num=#{card_num}")
	public int isCheckedLossCount(String card_num);
	@Update("UPDATE f_loss SET loss_memo=#{loss_memo} WHERE card_num=#{card_num}")
	public void updateLossMemo(@Param(value="loss_memo") int loss_memo,@Param(value="card_num") String card_num);
	
}
