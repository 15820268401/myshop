package emp.shop.form;

import org.apache.struts.action.ActionForm;

public class PayTypeForm extends ActionForm {

	private int pay_type_id;
	
	private String pay_type_name;

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
}
