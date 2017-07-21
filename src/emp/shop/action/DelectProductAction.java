package emp.shop.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import emp.shop.form.ProductForm;
import emp.shop.idao.IProductDao;
import emp.shop.model.Product;

public class DelectProductAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ProductForm pf = (ProductForm)form;
		
		int product_id = pf.getProduct_id();
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		IProductDao productDao = (IProductDao)app.getBean("productDaoProxy");
		Product product = (Product)app.getBean("product");
		
		product = productDao.queryProductById(product_id);
		
		productDao.deleteProduct(product);
		
		return mapping.findForward("success");
	}

}
