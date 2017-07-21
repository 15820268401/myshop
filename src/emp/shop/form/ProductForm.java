package emp.shop.form;

import org.apache.struts.action.ActionForm;

public class ProductForm extends ActionForm {

	//商品主键
	private int product_id;
	
	//商品名称
	private String product_name;
	
	//商品市场价
	private String product_price;
	
	//商品会员价
	private String product_vip_price;
	
	//商品概要信息
	private String product_command_info;
	
	//商品详细信息
	private String product_detail_info;
	
	//商品库存
	private int product_count;
	
	//商品销售量
	private String product_sale_count;
	
	//商品点击率
	private int product_hit;
	
	//商品图片路径
	private String product_image_path;

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

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

	public String getProduct_detail_info() {
		return product_detail_info;
	}

	public void setProduct_detail_info(String product_detail_info) {
		this.product_detail_info = product_detail_info;
	}

	public int getProduct_count() {
		return product_count;
	}

	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}

	public String getProduct_sale_count() {
		return product_sale_count;
	}

	public void setProduct_sale_count(String product_sale_count) {
		this.product_sale_count = product_sale_count;
	}

	public int getProduct_hit() {
		return product_hit;
	}

	public void setProduct_hit(int product_hit) {
		this.product_hit = product_hit;
	}

	public String getProduct_image_path() {
		return product_image_path;
	}

	public void setProduct_image_path(String product_image_path) {
		this.product_image_path = product_image_path;
	}
	
	
}
