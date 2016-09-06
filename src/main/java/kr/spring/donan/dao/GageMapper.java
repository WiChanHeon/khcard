package kr.spring.donan.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;

import kr.spring.donan.domain.GageCommand;

public interface GageMapper {
	List<GageCommand> selectBoardList();
	@Insert("INSERT INTO f_ca (ca_reg,ca_spot,ca_price,card_num,ca_sort,ca_category,ca_memo) VALUES (sysdate,#{ca_spot},#{ca_price},#{card_num},#{ca_sort},#{ca_category},#{ca_memo})")
	public void insert (GageCommand gagewrite);
}
