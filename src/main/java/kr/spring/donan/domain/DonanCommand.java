package kr.spring.donan.domain;

import java.sql.Date;

import org.hibernate.validator.constraints.NotEmpty;

public class DonanCommand {
	private int loss_num;
	private String card_num;
	private Date loss_reg;
	@NotEmpty
	private String loss_memo;
	
	public int getLoss_num() {
		return loss_num;
	}
	public void setLoss_num(int loss_num) {
		this.loss_num = loss_num;
	}
	public String getCard_num() {
		return card_num;
	}
	public void setCard_num(String card_num) {
		this.card_num = card_num;
	}
	public Date getLoss_reg() {
		return loss_reg;
	}
	public void setLoss_reg(Date loss_reg) {
		this.loss_reg = loss_reg;
	}
	public String getLoss_memo() {
		return loss_memo;
	}
	public void setLoss_memo(String loss_memo) {
		this.loss_memo = loss_memo;
	}
	@Override
	public String toString() {
		return "DonanCommand [loss_num=" + loss_num + ", card_num=" + card_num + ", loss_reg=" + loss_reg
				+ ", loss_memo=" + loss_memo + "]";
	}
}
