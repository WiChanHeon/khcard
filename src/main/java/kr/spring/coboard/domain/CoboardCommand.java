package kr.spring.coboard.domain;

import org.springframework.web.multipart.MultipartFile;

import kr.spring.util.StringUtil;

public class CoboardCommand {
	private int co_num;
	private String m_id;
	private String m_name;
	private String co_title;
	private String co_content;
	private MultipartFile upload;
	private String co_filename;
	private String co_reg;
	private int co_hit;
	private int co_sort;
	private int co_re_count;
	
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
	public String getCo_title() {
		return StringUtil.useNoHtml(co_title);
	}
	public void setCo_title(String co_title) {
		this.co_title = co_title;
	}
	public String getCo_content() {
		return co_content;
	}
	public void setCo_content(String co_content) {
		this.co_content = co_content;
	}
	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}
	public String getCo_filename() {
		return co_filename;
	}
	public void setCo_filename(String co_filename) {
		this.co_filename = co_filename;
	}
	public String getCo_reg() {
		return co_reg;
	}
	public void setCo_reg(String co_reg) {
		this.co_reg = co_reg;
	}
	public int getCo_hit() {
		return co_hit;
	}
	public void setCo_hit(int co_hit) {
		this.co_hit = co_hit;
	}
	public int getCo_sort() {
		return co_sort;
	}
	public void setCo_sort(int co_sort) {
		this.co_sort = co_sort;
	}
	public int getCo_re_count() {
		return co_re_count;
	}
	public void setCo_re_count(int co_re_count) {
		this.co_re_count = co_re_count;
	}
	
	@Override
	public String toString() {
		return "CoboardCommand [co_num=" + co_num + ", m_id=" + m_id + ", m_name=" + m_name + ", co_title=" + co_title
				+ ", co_content=" + co_content + ", upload=" + upload + ", co_filename=" + co_filename + ", co_reg="
				+ co_reg + ", co_hit=" + co_hit + ", co_sort=" + co_sort + ", co_re_count=" + co_re_count + "]";
	}
}
