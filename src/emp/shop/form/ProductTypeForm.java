package emp.shop.form;

import org.apache.struts.action.ActionForm;

public class ProductTypeForm extends ActionForm {

	private int product_type_id;
	
	private String product_type_name;

	public int getProduct_type_id() {
		return product_type_id;
	}

	public void setProduct_type_id(int product_type_id) {
		this.product_type_id = product_type_id;
	}

	public String getProduct_type_name() {
		return product_type_name;
	}

	public void setProduct_type_name(String product_type_name) {
		this.product_type_name = product_type_name;
	}
}
