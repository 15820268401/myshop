package emp.shop.form;

import org.apache.struts.action.ActionForm;

public class AddProductForm extends ActionForm {

	private String  product_name;
	
	private String product_price;
	
	private String product_vip_price;
	
	private String product_command_info;
	
	private int product_count;
	
	private String product_image_path;
	
	private int product_type_id;
	
	private String product_detail_info;

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_price() {
		return product_price;
	}

	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}

	public String getProduct_vip_price() {
		return product_vip_price;
	}

	public void setProduct_vip_price(String product_vip_price) {
		this.product_vip_price = product_vip_price;
	}

	public String getProduct_command_info() {
		return product_command_info;
	}

	public void setProduct_command_info(String product_command_info) {
		this.product_command_info = product_command_info;
	}

	public int getProduct_count() {
		return product_count;
	}

	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}

	public String getProduct_image_path() {
		return product_image_path;
	}

	public void setProduct_image_path(String product_image_path) {
		this.product_image_path = product_image_path;
	}

	public int getProduct_type_id() {
		return product_type_id;
	}

	public void setProduct_type_id(int product_type_id) {
		this.product_type_id = product_type_id;
	}

	public String getProduct_detail_info() {
		return product_detail_info;
	}

	public void setProduct_detail_info(String product_detail_info) {
		this.product_detail_info = product_detail_info;
	}
	
	
}
