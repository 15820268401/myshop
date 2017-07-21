package emp.shop.model;

import java.util.Set;

public class ProductType {

	//商品类别主键
	private int product_type_id;
	
	//商品类别名称
	private String product_type_name;
	
	//商品
	private Set product; 

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

	public Set getProduct() {
		return product;
	}

	public void setProduct(Set product) {
		this.product = product;
	}
	
}
