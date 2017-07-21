package emp.shop.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import emp.shop.idao.IProductTypeDao;
import emp.shop.model.ProductType;

public class ProductTypeDaoImpl extends HibernateDaoSupport implements IProductTypeDao {

	public void addProductType(ProductType productType) {
		
		this.getHibernateTemplate().save(productType);
	}

	public void deleteProductType(ProductType productType) {

		this.getHibernateTemplate().delete(productType);
	}

	public void modifyProductType(ProductType productType) {

		this.getHibernateTemplate().update(productType);
	}

	public List<ProductType> queryProductType() {
		
		List productTypeList=this.getHibernateTemplate().find("from ProductType");
		
		return productTypeList;
	}

	public ProductType queryProductTypeById(int product_type_id) {
		
		List productTypeList = this.getHibernateTemplate().find("from ProductType where product_type_id=" +product_type_id);
		ProductType productType = null;

		if(productTypeList.size() == 1) {
			productType = (ProductType)productTypeList.get(0);
		}
		return productType;
	}

}
