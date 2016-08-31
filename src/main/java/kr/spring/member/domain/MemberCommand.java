package kr.spring.member.domain;

import java.sql.Date;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class MemberCommand {
	@NotEmpty
	private String mem_id;
	//메시지 설정은 리소스 번들의 메시지가 우선
	@Size(min=6,max=15,message="비밀번호는 필수입니다.")
	private String mem_pw;
	@NotEmpty
	private String mem_name;
	private String mem_cell;
	@Email
	@NotEmpty
	private String mem_email;
	private Date mem_reg;
	
	//비밀번호 일치 여부 체크
	public boolean isCheckedPasswd(String userPasswd){
		if(mem_pw.equals(userPasswd)){
			return true;
		}
		return false;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_cell() {
		return mem_cell;
	}

	public void setMem_cell(String mem_cell) {
		this.mem_cell = mem_cell;
	}

	public String getMem_email() {
		return mem_email;
	}

	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public Date getMem_reg() {
		return mem_reg;
	}

	public void setMem_reg(Date mem_reg) {
		this.mem_reg = mem_reg;
	}

	@Override
	public String toString() {
		return "MemberCommand [ mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_name="
				+ mem_name + ", mem_cell=" + mem_cell + ", mem_email=" + mem_email + ", mem_reg=" + mem_reg + "]";
	}
	
	
}
