package emp.shop.form;

import org.apache.struts.action.ActionForm;

public class OrderForm extends ActionForm {

	private int order_id;
	
	private String order_num;
	
	private String send_place;
	
	private String order_time;
	
	private String order_status;
	
	private String send_man;
	
	private String send_zip;
	
	private String send_phone;
	
	private String send_email;
	
	private String bak;
	
	private int user_id;
	
	private int pay_type_id;

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public String getOrder_num() {
		return order_num;
	}

	public void setOrder_num(String order_num) {
		this.order_num = order_num;
	}

	public String getSend_place() {
		return send_place;
	}

	public void setSend_place(String send_place) {
		this.send_place = send_place;
	}

	public String getOrder_time() {
		return order_time;
	}

	public void setOrder_time(String order_time) {
		this.order_time = order_time;
	}

	public String getOrder_status() {
		return order_status;
	}

	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}

	public String getSend_man() {
		return send_man;
	}

	public void setSend_man(String send_man) {
		this.send_man = send_man;
	}

	public String getSend_zip() {
		return send_zip;
	}

	public void setSend_zip(String send_zip) {
		this.send_zip = send_zip;
	}

	public String getSend_phone() {
		return send_phone;
	}

	public void setSend_phone(String send_phone) {
		this.send_phone = send_phone;
	}

	public String getSend_email() {
		return send_email;
	}

	public void setSend_email(String send_email) {
		this.send_email = send_email;
	}

	public String getBak() {
		return bak;
	}

	public void setBak(String bak) {
		this.bak = bak;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getPay_type_id() {
		return pay_type_id;
	}

	public void setPay_type_id(int pay_type_id) {
		this.pay_type_id = pay_type_id;
	}
}
