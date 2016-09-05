package kr.spring.member.domain;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class CardsCommand {
	@NotEmpty
	@Size(min=16,max=16,message="카드번호는 필수입니다.")
	private String card_num;
	@NotEmpty
	@Size(min=4,max=4,message="비밀번호는 필수입니다.")
	private String card_pw;
	@NotEmpty
	@Size(min=3,max=3,message="cvc번호는 필수입니다.")
	private String card_cvc;
	private String mem_id1;
	public String getMem_id1() {
		return mem_id1;
	}
	public void setMem_id1(String mem_id1) {
		this.mem_id1 = mem_id1;
	}
	public String getCard_num() {
		return card_num;
	}
	public void setCard_num(String card_num) {
		this.card_num = card_num;
	}
	public String getCard_pw() {
		return card_pw;
	}
	public void setCard_pw(String card_pw) {
		this.card_pw = card_pw;
	}
	public String getCard_cvc() {
		return card_cvc;
	}
	public void setCard_cvc(String card_cvc) {
		this.card_cvc = card_cvc;
	}
	@Override
	public String toString() {
		return "CardsCommand [card_num=" + card_num + ", card_pw=" + card_pw + ", card_cvc=" + card_cvc + ", mem_id1="
				+ mem_id1 + "]";
	}
	
	
	
	
}
