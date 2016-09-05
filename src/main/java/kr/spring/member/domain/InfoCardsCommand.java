package kr.spring.member.domain;

import java.sql.Date;

public class InfoCardsCommand {
	public Date pay_reg;
	public int pay_price;
	public String pay_spot;
	public float pay_rate;
	public int pay_point;
	public Date getPay_reg() {
		return pay_reg;
	}
	public void setPay_reg(Date pay_reg) {
		this.pay_reg = pay_reg;
	}
	public int getPay_price() {
		return pay_price;
	}
	public void setPay_price(int pay_price) {
		this.pay_price = pay_price;
	}
	public String getPay_spot() {
		return pay_spot;
	}
	public void setPay_spot(String pay_spot) {
		this.pay_spot = pay_spot;
	}
	public float getPay_rate() {
		return pay_rate;
	}
	public void setPay_rate(float pay_rate) {
		this.pay_rate = pay_rate;
	}
	public int getPay_point() {
		return pay_point;
	}
	public void setPay_point(int pay_point) {
		this.pay_point = pay_point;
	}
	@Override
	public String toString() {
		return "InfoCardsCommand [pay_reg=" + pay_reg + ", pay_price=" + pay_price + ", pay_spot=" + pay_spot
				+ ", pay_rate=" + pay_rate + ", pay_point=" + pay_point + "]";
	}
	
	
}
