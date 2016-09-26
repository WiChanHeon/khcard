package kr.spring.donan.domain;

import java.sql.Date;

public class DonanWriteCommand {
		private int loss_num;
		private Date loss_reg;
		private String loss_memo;
		private String loss_phone;
		public int getLoss_num() {
			return loss_num;
		}
		public void setLoss_num(int loss_num) {
			this.loss_num = loss_num;
		}
		public Date getLoss_reg() {
			return loss_reg;
		}
		public void setLoss_reg(Date loss_reg) {
			this.loss_reg = loss_reg;
		}
		public String getLoss_memo() {
			return loss_memo;
		}
		public void setLoss_memo(String loss_memo) {
			this.loss_memo = loss_memo;
		}
		public String getLoss_phone() {
			return loss_phone;
		}
		public void setLoss_phone(String loss_phone) {
			this.loss_phone = loss_phone;
		}
		@Override
		public String toString() {
			return "DonanWriteCommand [loss_num=" + loss_num + ", loss_reg=" + loss_reg + ", loss_memo=" + loss_memo
					+ ", loss_phone=" + loss_phone + "]";
		}
	}
