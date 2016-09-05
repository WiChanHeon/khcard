package kr.spring.apply.domain;

import org.hibernate.validator.constraints.NotEmpty;

public class ApplyEvalCommand {
	
	@NotEmpty
	private String ap_name;
	@NotEmpty
	private String ap_rrnfront;
	@NotEmpty
	private String ap_rrnrear;
	
	public String getAp_name() {
		return ap_name;
	}
	public void setAp_name(String ap_name) {
		this.ap_name = ap_name;
	}
	public String getAp_rrnfront() {
		return ap_rrnfront;
	}
	public void setAp_rrnfront(String ap_rrnfront) {
		this.ap_rrnfront = ap_rrnfront;
	}
	public String getAp_rrnrear() {
		return ap_rrnrear;
	}
	public void setAp_rrnrear(String ap_rrnrear) {
		this.ap_rrnrear = ap_rrnrear;
	}
	
	@Override
	public String toString() {
		return "ApplyEvalCommand [ap_name=" + ap_name + ", ap_rrnfront=" + ap_rrnfront + ", ap_rrnrear=" + ap_rrnrear
				+ "]";
	}
}
