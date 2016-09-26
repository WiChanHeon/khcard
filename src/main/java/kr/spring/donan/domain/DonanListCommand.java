package kr.spring.donan.domain;

public class DonanListCommand {
		private String ap_name;
		private String card_num;
		private String info_id;
		private String ap_bank;
		
		public String getAp_name() {
			return ap_name;
		}
		public void setAp_name(String ap_name) {
			this.ap_name = ap_name;
		}
		public String getCard_num() {
			return card_num;
		}
		public void setCard_num(String card_num) {
			this.card_num = card_num;
		}
		public String getInfo_id() {
			return info_id;
		}
		public void setInfo_id(String info_id) {
			this.info_id = info_id;
		}
		public String getAp_bank() {
			return ap_bank;
		}
		public void setAp_bank(String ap_bank) {
			this.ap_bank = ap_bank;
		}
		
		@Override
		public String toString() {
			return "DonanListCommand [ap_name=" + ap_name + ", card_num=" + card_num + ", info_id=" + info_id
					+ ", ap_bank=" + ap_bank + "]";
		}
	}
