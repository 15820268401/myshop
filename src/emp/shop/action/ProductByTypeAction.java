package emp.shop.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import emp.shop.form.ProductTypeForm;
import emp.shop.idao.IProductDao;
import emp.shop.idao.IProductTypeDao;

public class ProductByTypeAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ProductTypeForm ptf = (ProductTypeForm)form;
		
		int product_type_id = ptf.getProduct_type_id();
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		
		IProductDao productDao = (IProductDao)app.getBean("productDaoProxy");
		
		List product_list = productDao.queryProductByProductType(product_type_id);
		
		request.setAttribute("product_list", product_list);
		
		return mapping.findForward("success");
	}

}
