package emp.shop.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import emp.shop.idao.IProductDao;
import emp.shop.model.Product;

public class ProductDaoImpl extends HibernateDaoSupport implements IProductDao {

	public void addProduct(Product product) {
		
		this.getHibernateTemplate().save(product);
	}

	public void deleteProduct(Product product) {
		
		this.getHibernateTemplate().delete(product);
	}

	public void modifyProduct(Product product) {
		
		this.getHibernateTemplate().update(product);
	}

	public List queryAllProduct() {
		
		List productList = this.getHibernateTemplate().find("from Product");
		
		return productList;
	}

	public Product queryProductById(int product_id) {
		
		List productList = this.getHibernateTemplate().find("from Product where product_id=" + product_id);
		
		Product product = null;
		if(productList.size() == 1) {
			product = (Product)productList.get(0);
		}
		
		return product;
	}

	public List queryAllProductLimit() {
		
		List productList = this.getHibernateTemplate().find("from Product order by product_hit desc");
		
		return productList;
	}

	public List queryProductByProductSaleCount() {
		
		List productSaleCountList = this.getHibernateTemplate().find("from Product order by product_sale_count desc");
		
		return productSaleCountList;
	}

	public List queryProductByProductType(int product_type_id) {
		
		List productList = this.getHibernateTemplate()
				.find("from Product as product where product.productType.product_type_id=" +product_type_id);
		
		return productList;
	}

	public List queryProductByKey(String key) {
		
		List productList = this.getHibernateTemplate().find("from Product where product_name like '%" + key +"%'");
		
		return productList;
	}

}
