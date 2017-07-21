package emp.shop.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import emp.shop.form.ProductTypeForm;
import emp.shop.idao.IProductTypeDao;
import emp.shop.model.ProductType;

public class AddProductTypeAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ProductTypeForm ptf = (ProductTypeForm)form;
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		IProductTypeDao productTypeDao = (IProductTypeDao)app.getBean("productTypeDaoProxy");
		ProductType productType = (ProductType)app.getBean("productType");
		
		productType.setProduct_type_name(ptf.getProduct_type_name());
		
	    productTypeDao.addProductType(productType);
	    
		return mapping.findForward("success");
	}

}
