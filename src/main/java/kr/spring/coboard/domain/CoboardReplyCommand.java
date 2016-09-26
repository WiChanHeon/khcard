package kr.spring.coboard.domain;

public class CoboardReplyCommand {
	private int co_re_num;
	private int co_num;
	private String m_id;
	private String m_name;
	private String co_re_content;
	private String co_re_reg;
	
	public int getCo_re_num() {
		return co_re_num;
	}
	public void setCo_re_num(int co_re_num) {
		this.co_re_num = co_re_num;
	}
	public int getCo_num() {
		return co_num;
	}
	public void setCo_num(int co_num) {
		this.co_num = co_num;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getCo_re_content() {
		return co_re_content;
	}
	public void setCo_re_content(String co_re_content) {
		this.co_re_content = co_re_content;
	}
	public String getCo_re_reg() {
		return co_re_reg;
	}
	public void setCo_re_reg(String co_re_reg) {
		this.co_re_reg = co_re_reg;
	}
	
	@Override
	public String toString() {
		return "CoboardReplyCommand [co_re_num=" + co_re_num + ", co_num=" + co_num + ", m_id=" + m_id + ", m_name="
				+ m_name + ", co_re_content=" + co_re_content + ", co_re_reg=" + co_re_reg + "]";
	}
}
