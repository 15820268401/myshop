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

public class UpdateProductType extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ProductTypeForm ptf = (ProductTypeForm)form;
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		IProductTypeDao productTypeDao = (IProductTypeDao)app.getBean("productTypeDaoImpl");
		ProductType productType = (ProductType)app.getBean("productType");
		ProductType productType2 = (ProductType)app.getBean("productType");
		
		productType = (ProductType) request.getSession().getAttribute("back_productType");
		
		productType2 = productTypeDao.queryProductTypeById(productType.getProduct_type_id());
		
		productType2.setProduct_type_name(ptf.getProduct_type_name());
		
		productTypeDao.modifyProductType(productType2);
		
		return mapping.findForward("success");
	}

}
