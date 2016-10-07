package kr.spring.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import kr.spring.apply.domain.ApplyCommand;
import kr.spring.card.domain.CardCommand;
import kr.spring.donan.domain.DonanCommand;
import kr.spring.simpleapply.domain.SimpleApplyCommand;

@Repository
public interface AdminMapper {
   public List<ApplyCommand> applyList(Map<String,Object> map);
   public List<SimpleApplyCommand> simpleApplyList(Map<String,Object> map);
   public int applyGetRowCount(Map<String,Object> map);
   public int simpleApplyGetRowCount(Map<String,Object> map);
   public List<DonanCommand> missingList(Map<String,Object> map);
   public int missingGetRowCount(Map<String,Object> map);
   @Update("UPDATE f_apply SET ap_pass=#{ap_pass}, card_num=#{card_num},ap_status=#{ap_status} WHERE ap_num=#{ap_num}")
   public void updatePassStatus(ApplyCommand applymember);
   @Select("SELECT * FROM f_apply WHERE ap_num = #{ap_num}")
   public ApplyCommand selectApplyMember(String ap_num);
   @Insert("INSERT INTO f_card(card_num,card_reg,card_yyyy,card_mm,card_cvc,card_pw) VALUES(#{card_num},sysdate,#{card_yyyy},#{card_mm},#{card_cvc},#{card_pw})")
   public void insertInitCardInfo(CardCommand cardCommand);
   @Select("${create_table}")
   public void createPersonalCard(Map<String,String> create_table);
   @Delete("DELETE FROM f_card WHERE card_num=#{card_num}")
   public void deleteCardInfo(String card_num);
   @Select("${drop_table}")
   public void dropPersonalCard(Map<String,String> drop_table);
   @Select("SELECT COUNT(*) FROM f_apply WHERE info_id = #{info_id}")
   public int getCardApplyCount(String info_id);
   @Select("SELECT COUNT(*) FROM f_apply WHERE ap_reg LIKE TO_CHAR(ADD_MONTHS(sysdate, 0),'YY/MM') || '%' AND info_id = #{info_id}")
   public int getCurrentMonthApplyCount(String info_id);
   @Select("SELECT COUNT(*) FROM f_apply WHERE ap_reg LIKE #{ap_reg} and info_id=#{info_id}")
   public int getCardMonthApplyCount(@Param(value = "ap_reg") String ap_reg, @Param(value = "info_id") String info_id );
   @Select("SELECT COUNT(*) FROM f_apply WHERE ap_reg LIKE #{ap_reg} and info_id=#{info_id}")
   public int getCardYearApplyCount(@Param(value="ap_reg") String ap_reg, @Param(value="info_id") String info_id);
   @Insert("INSERT INTO f_log(log_num,m_id,log_reg,log_content) VALUES(log_seq.nextval,#{m_id},sysdate,#{log_content})")
   public void insertLog(@Param(value="m_id") String m_id,@Param(value="log_content") String log_content);
   @Update("UPDATE f_apply SET ap_status=#{ap_status} WHERE card_num=#{card_num}")
   public void updateReturnStatus(@Param(value="ap_status") String ap_status,@Param(value="card_num") String card_num);
   @Select("SELECT * FROM f_apply WHERE card_num = #{card_num}")
   public ApplyCommand selectCardApplyMember(String card_num);
   @Insert("INSERT INTO f_apply (ap_num,ap_rrnfront,ap_rrnrear,ap_name,ap_ename,ap_cell,ap_email,ap_postnum,ap_address1,ap_address2,ap_paydate,ap_bank,ap_banknum,ap_reg,ap_job,ap_job2,ap_pass,ap_id,card_num,info_id,ap_status) VALUES(ap_seq.nextval,#{ap_rrnfront},#{ap_rrnrear},#{ap_name,jdbcType=VARCHAR},#{ap_ename,jdbcType=VARCHAR},#{ap_cell,jdbcType=VARCHAR},#{ap_email,jdbcType=VARCHAR},#{ap_postnum,jdbcType=VARCHAR},#{ap_address1},#{ap_address2,jdbcType=VARCHAR},#{ap_paydate},#{ap_bank,jdbcType=VARCHAR},#{ap_banknum,jdbcType=VARCHAR},sysdate,#{ap_job,jdbcType=VARCHAR},#{ap_job2,jdbcType=VARCHAR},1,#{ap_id,jdbcType=VARCHAR},#{card_num,jdbcType=VARCHAR},#{info_id,jdbcType=VARCHAR},#{ap_status})")
   public void insertReissueCard(ApplyCommand applyCommand);
}