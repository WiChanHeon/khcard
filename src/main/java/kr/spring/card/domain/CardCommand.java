package kr.spring.card.domain;

import java.util.Date;

public class CardCommand {
  private String card_num;
  private Date card_reg;
  private String card_yyyy;
  private String card_mm;
  private String card_cvc;
  private String card_pw;
  private int card_limit;
  private int card_status;
public String getCard_num() {
	return card_num;
}
public void setCard_num(String card_num) {
	this.card_num = card_num;
}
public Date getCard_reg() {
	return card_reg;
}
public void setCard_reg(Date card_reg) {
	this.card_reg = card_reg;
}
public String getCard_yyyy() {
	return card_yyyy;
}
public void setCard_yyyy(String card_yyyy) {
	this.card_yyyy = card_yyyy;
}
public String getCard_mm() {
	return card_mm;
}
public void setCard_mm(String card_mm) {
	this.card_mm = card_mm;
}
public String getCard_cvc() {
	return card_cvc;
}
public void setCard_cvc(String card_cvc) {
	this.card_cvc = card_cvc;
}
public String getCard_pw() {
	return card_pw;
}
public void setCard_pw(String card_pw) {
	this.card_pw = card_pw;
}
public int getCard_limit() {
	return card_limit;
}
public void setCard_limit(int card_limit) {
	this.card_limit = card_limit;
}
public int getCard_status() {
	return card_status;
}
public void setCard_status(int card_status) {
	this.card_status = card_status;
}
@Override
public String toString() {
	return "CardCommand [card_num=" + card_num + ", card_reg=" + card_reg + ", card_yyyy=" + card_yyyy + ", card_mm="
			+ card_mm + ", card_cvc=" + card_cvc + ", card_pw=" + card_pw + ", card_limit=" + card_limit
			+ ", card_status=" + card_status + "]";
}
  
  
}
