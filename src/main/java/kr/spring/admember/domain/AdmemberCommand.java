package kr.spring.admember.domain;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class AdmemberCommand {
	@NotEmpty
	private String m_id;
	private String m_name;
	@Size(min=4,max=10,message="비밀번호는 필수입니다.")
	private String m_pw;
	private String m_cell;	
	private String m_email;	
	private String m_position;	
	private String m_dept;
	
	//비밀번호 일치 여부 체크
		public boolean isCheckedPasswd(String userPasswd){
			if(m_pw.equals(userPasswd)){
				return true;
			}
			return false;
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
	public String getM_pw() {
		return m_pw;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}
	public String getM_cell() {
		return m_cell;
	}
	public void setM_cell(String m_cell) {
		this.m_cell = m_cell;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public String getM_position() {
		return m_position;
	}
	public void setM_position(String m_position) {
		this.m_position = m_position;
	}
	public String getM_dept() {
		return m_dept;
	}
	public void setM_dept(String m_dept) {
		this.m_dept = m_dept;
	}
	@Override
	public String toString() {
		return "AdmemberCommand [m_id=" + m_id + ", m_name=" + m_name + ", m_pw=" + m_pw + ", m_cell=" + m_cell
				+ ", m_email=" + m_email + ", m_position=" + m_position + ", m_dept=" + m_dept + "]";
	}
	
	
}
