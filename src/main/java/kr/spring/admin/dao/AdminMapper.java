package kr.spring.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import kr.spring.apply.domain.ApplyCommand;
import kr.spring.card.domain.CardCommand;
import kr.spring.donan.domain.DonanCommand;

@Repository
public interface AdminMapper {
   public List<ApplyCommand> applyList(Map<String,Object> map);
   public int applyGetRowCount(Map<String,Object> map);
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
}
