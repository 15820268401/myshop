package emp.shop.idao;

import java.util.List;

import emp.shop.model.ProductType;

public interface IProductTypeDao {

	public void addProductType(ProductType productType);
	
	public void deleteProductType(ProductType productType);
	
	public void modifyProductType(ProductType productType);
	
	public List<ProductType> queryProductType();
	
	public ProductType queryProductTypeById(int product_type_id);
}
