package emp.shop.model;

import java.util.Set;

public class PayType {

	//付款方式主键
	private int pay_type_id;
	
	//付款方式名称
	private String pay_type_name;

	//订单
	private Set order;
	
	public int getPay_type_id() {
		return pay_type_id;
	}

	public void setPay_type_id(int pay_type_id) {
		this.pay_type_id = pay_type_id;
	}

	public String getPay_type_name() {
		return pay_type_name;
	}

	public void setPay_type_name(String pay_type_name) {
		this.pay_type_name = pay_type_name;
	}

	public Set getOrder() {
		return order;
	}

	public void setOrder(Set order) {
		this.order = order;
	}
}
