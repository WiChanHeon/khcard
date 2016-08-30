package kr.spring.apply.domain;

import java.sql.Date;

public class ApplyCommand {
	
	private int ap_num;
	private String ap_rrn;
	private String ap_name;
	private String ap_ename;
	private String ap_cell;
	private String ap_email;
	private String ap_address;
	private Date ap_paydate;
	private String ap_bank;
	private String ap_banknum;
	private Date ap_reg;
	private String ap_job;
	private int ap_pass;
	private String ap_id;
	private String card_num;
	public int getAp_num() {
		return ap_num;
	}
	public void setAp_num(int ap_num) {
		this.ap_num = ap_num;
	}
	public String getAp_rrn() {
		return ap_rrn;
	}
	public void setAp_rrn(String ap_rrn) {
		this.ap_rrn = ap_rrn;
	}
	public String getAp_name() {
		return ap_name;
	}
	public void setAp_name(String ap_name) {
		this.ap_name = ap_name;
	}
	public String getAp_ename() {
		return ap_ename;
	}
	public void setAp_ename(String ap_ename) {
		this.ap_ename = ap_ename;
	}
	public String getAp_cell() {
		return ap_cell;
	}
	public void setAp_cell(String ap_cell) {
		this.ap_cell = ap_cell;
	}
	public String getAp_email() {
		return ap_email;
	}
	public void setAp_email(String ap_email) {
		this.ap_email = ap_email;
	}
	public String getAp_address() {
		return ap_address;
	}
	public void setAp_address(String ap_address) {
		this.ap_address = ap_address;
	}
	public Date getAp_paydate() {
		return ap_paydate;
	}
	public void setAp_paydate(Date ap_paydate) {
		this.ap_paydate = ap_paydate;
	}
	public String getAp_bank() {
		return ap_bank;
	}
	public void setAp_bank(String ap_bank) {
		this.ap_bank = ap_bank;
	}
	public String getAp_banknum() {
		return ap_banknum;
	}
	public void setAp_banknum(String ap_banknum) {
		this.ap_banknum = ap_banknum;
	}
	public Date getAp_reg() {
		return ap_reg;
	}
	public void setAp_reg(Date ap_reg) {
		this.ap_reg = ap_reg;
	}
	public String getAp_job() {
		return ap_job;
	}
	public void setAp_job(String ap_job) {
		this.ap_job = ap_job;
	}
	public int getAp_pass() {
		return ap_pass;
	}
	public void setAp_pass(int ap_pass) {
		this.ap_pass = ap_pass;
	}
	public String getAp_id() {
		return ap_id;
	}
	public void setAp_id(String ap_id) {
		this.ap_id = ap_id;
	}
	public String getCard_num() {
		return card_num;
	}
	public void setCard_num(String card_num) {
		this.card_num = card_num;
	}
	
	@Override
	public String toString() {
		return "ApplyCommand [ap_num=" + ap_num + ", ap_rrn=" + ap_rrn + ", ap_name=" + ap_name + ", ap_ename="
				+ ap_ename + ", ap_cell=" + ap_cell + ", ap_email=" + ap_email + ", ap_address=" + ap_address
				+ ", ap_paydate=" + ap_paydate + ", ap_bank=" + ap_bank + ", ap_banknum=" + ap_banknum + ", ap_reg="
				+ ap_reg + ", ap_job=" + ap_job + ", ap_pass=" + ap_pass + ", ap_id=" + ap_id + ", card_num=" + card_num
				+ "]";
	}
	
	
	
}
