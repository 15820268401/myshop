package emp.shop.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import emp.shop.form.AddProductForm;
import emp.shop.idao.IProductDao;
import emp.shop.idao.IProductTypeDao;
import emp.shop.model.Product;
import emp.shop.model.ProductType;

public class BackUpdateProductAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		AddProductForm pf = (AddProductForm)form;
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		IProductDao productDao = (IProductDao)app.getBean("productDaoProxy");
		IProductTypeDao productTypeDao = (IProductTypeDao)app.getBean("productTypeDaoProxy");
		Product product = (Product)app.getBean("product");
		Product product2 = (Product)app.getBean("product");
		ProductType productType = (ProductType)app.getBean("productType");
		
		product = (Product) request.getSession().getAttribute("back_modifyList");
		
		product2 = productDao.queryProductById(product.getProduct_id());
		
		BeanUtils.copyProperties(product2, pf);
		
		productType = productTypeDao.queryProductTypeById(pf.getProduct_type_id());
		
		product2.setProductType(productType);
		
		productDao.modifyProduct(product2);
		
		return mapping.findForward("success");
	}

}
