package kr.spring.apply.domain;

public class ApplySimpleCommand {
	
	private int sap_num;
	private String sap_name;
	private String sap_cell;
	
	public int getSap_num() {
		return sap_num;
	}
	public void setSap_num(int sap_num) {
		this.sap_num = sap_num;
	}
	public String getSap_name() {
		return sap_name;
	}
	public void setSap_name(String sap_name) {
		this.sap_name = sap_name;
	}
	public String getSap_cell() {
		return sap_cell;
	}
	public void setSap_cell(String sap_cell) {
		this.sap_cell = sap_cell;
	}
	@Override
	public String toString() {
		return "ApplySimpleCommand [sap_num=" + sap_num + ", sap_name=" + sap_name + ", sap_cell=" + sap_cell + "]";
	}
}
