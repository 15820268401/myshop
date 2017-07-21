package emp.shop.idao;

import java.util.List;

import emp.shop.model.Product;

public interface IProductDao {

	public void addProduct(Product product);
	
	public void deleteProduct(Product product);
	
	public void modifyProduct(Product product);
	
	public List queryAllProduct();
	
	public List queryAllProductLimit();
	
	public List queryProductByProductSaleCount();
	
	public Product queryProductById(int product_id);
	
	public List queryProductByProductType(int product_type_id);
	
	public List queryProductByKey(String key);
}
