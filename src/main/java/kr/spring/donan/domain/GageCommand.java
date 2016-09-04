package kr.spring.donan.domain;

import java.sql.Date;

public class GageCommand {
	private String card_num;
	private Date ca_reg;
	private int ca_price;
	private String ca_spot;
	private int ca_sort;
	private int ca_category;
	private String ca_memo;
	private int ca_income;
	
	public String getCard_num() {
		return card_num;
	}
	public void setCard_num(String card_num) {
		this.card_num = card_num;
	}
	public Date getCa_reg() {
		return ca_reg;
	}
	public void setCa_reg(Date ca_reg) {
		this.ca_reg = ca_reg;
	}
	public int getCa_price() {
		return ca_price;
	}
	public void setCa_price(int ca_price) {
		this.ca_price = ca_price;
	}
	public String getCa_spot() {
		return ca_spot;
	}
	public void setCa_spot(String ca_spot) {
		this.ca_spot = ca_spot;
	}
	public int getCa_sort() {
		return ca_sort;
	}
	public void setCa_sort(int ca_sort) {
		this.ca_sort = ca_sort;
	}
	public int getCa_category() {
		return ca_category;
	}
	public void setCa_category(int ca_category) {
		this.ca_category = ca_category;
	}
	public String getCa_memo() {
		return ca_memo;
	}
	public void setCa_memo(String ca_memo) {
		this.ca_memo = ca_memo;
	}
	public int getCa_income() {
		return ca_income;
	}
	public void setCa_income(int ca_income) {
		this.ca_income = ca_income;
	}
	
	@Override
	public String toString() {
		return "GageCommand [card_num=" + card_num + ", ca_reg=" + ca_reg + ", ca_price=" + ca_price + ", ca_spot="
				+ ca_spot + ", ca_sort=" + ca_sort + ", ca_category=" + ca_category + ", ca_memo=" + ca_memo
				+ ", ca_income=" + ca_income + "]";
	}
}
