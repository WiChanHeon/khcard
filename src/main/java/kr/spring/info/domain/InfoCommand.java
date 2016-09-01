package kr.spring.info.domain;

import kr.spring.util.StringUtil;

public class InfoCommand {
	private String info_id;
	private String info_name;
	private String info_img;
	private String info_stitle;
	private String info_scontent;
	private String info_flag;
	private int info_rcm;
	private int info_view;
	private int info_order;
	private String cp_afee;
	private String cp_voucher;
	private String cp_benefit;
	private String cp_service;
	private String cp_advice;
	private int cp_choice;
	
	//줄바꿈용 알리아스 변수
	private String info_scontent_br;
	private String cp_afee_br;
	private String cp_voucher_br;
	private String cp_benefit_br;
	private String cp_service_br;
	private String cp_advice_br;
	
	
	public String getInfo_id() {
		return info_id;
	}
	public void setInfo_id(String info_id) {
		this.info_id = info_id;
	}
	public String getInfo_name() {
		return info_name;
	}
	public void setInfo_name(String info_name) {
		this.info_name = info_name;
	}
	public String getInfo_img() {
		return info_img;
	}
	public void setInfo_img(String info_img) {
		this.info_img = info_img;
	}
	public String getInfo_stitle() {
		return info_stitle;
	}
	public void setInfo_stitle(String info_stitle) {
		this.info_stitle = info_stitle;
	}
	public String getInfo_scontent() {
		return info_scontent;
	}
	public void setInfo_scontent(String info_scontent) {
		this.info_scontent = info_scontent;
	}
	public String getInfo_flag() {
		return info_flag;
	}
	public void setInfo_flag(String info_flag) {
		this.info_flag = info_flag;
	}
	public int getInfo_rcm() {
		return info_rcm;
	}
	public void setInfo_rcm(int info_rcm) {
		this.info_rcm = info_rcm;
	}
	public int getInfo_view() {
		return info_view;
	}
	public void setInfo_view(int info_view) {
		this.info_view = info_view;
	}
	public int getInfo_order() {
		return info_order;
	}
	public void setInfo_order(int info_order) {
		this.info_order = info_order;
	}
	public String getCp_afee() {
		return cp_afee;
	}
	public void setCp_afee(String cp_afee) {
		this.cp_afee = cp_afee;
	}
	public String getCp_voucher() {
		return cp_voucher;
	}
	public void setCp_voucher(String cp_voucher) {
		this.cp_voucher = cp_voucher;
	}
	public String getCp_benefit() {
		return cp_benefit;
	}
	public void setCp_benefit(String cp_benefit) {
		this.cp_benefit = cp_benefit;
	}
	public String getCp_service() {
		return cp_service;
	}
	public void setCp_service(String cp_service) {
		this.cp_service = cp_service;
	}
	public String getCp_advice() {
		return cp_advice;
	}
	public void setCp_advice(String cp_advice) {
		this.cp_advice = cp_advice;
	}
	public int getCp_choice() {
		return cp_choice;
	}
	public void setCp_choice(int cp_choice) {
		this.cp_choice = cp_choice;
	}
	
	//줄바꿈용 알리아스
	public String getInfo_scontent_br() {
		return StringUtil.useBrHtml(info_scontent_br);
	}
	public void setInfo_scontent_br(String info_scontent_br) {
		this.info_scontent_br = info_scontent_br;
	}
	public String getCp_afee_br() {
		return StringUtil.useBrHtml(cp_afee_br);
	}
	public void setCp_afee_br(String cp_afee_br) {
		this.cp_afee_br = cp_afee_br;
	}
	public String getCp_voucher_br() {
		return StringUtil.useBrHtml(cp_voucher_br);
	}
	public void setCp_voucher_br(String cp_voucher_br) {
		this.cp_voucher_br = cp_voucher_br;
	}
	public String getCp_benefit_br() {
		return StringUtil.useBrHtml(cp_benefit_br);
	}
	public void setCp_benefit_br(String cp_benefit_br) {
		this.cp_benefit_br = cp_benefit_br;
	}
	public String getCp_service_br() {
		return StringUtil.useBrHtml(cp_service_br);
	}
	public void setCp_service_br(String cp_service_br) {
		this.cp_service_br = cp_service_br;
	}
	public String getCp_advice_br() {
		return StringUtil.useBrHtml(cp_advice_br);
	}
	public void setCp_advice_br(String cp_advice_br) {
		this.cp_advice_br = cp_advice_br;
	}
	
	@Override
	public String toString() {
		return "InfoCommand [info_id=" + info_id + ", info_name=" + info_name + ", info_img=" + info_img
				+ ", info_stitle=" + info_stitle + ", info_scontent=" + info_scontent + ", info_flag=" + info_flag
				+ ", info_rcm=" + info_rcm + ", info_view=" + info_view + ", info_order=" + info_order + ", cp_afee="
				+ cp_afee + ", cp_voucher=" + cp_voucher + ", cp_benefit=" + cp_benefit + ", cp_service=" + cp_service
				+ ", cp_advice=" + cp_advice + ", cp_choice=" + cp_choice + "]";
	}
	
}
