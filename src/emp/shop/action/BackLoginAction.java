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

import emp.shop.form.ManagerForm;
import emp.shop.idao.IManagerDao;
import emp.shop.idao.IProductDao;
import emp.shop.idao.IProductTypeDao;

public class BackLoginAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ManagerForm mf = (ManagerForm)form;
		
		String manager_name = mf.getManager_name();
		String manager_password= mf.getManager_password();
		String manager_type = mf.getManager_type();
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		IManagerDao managerDao = (IManagerDao)app.getBean("managerDaoProxy");
		IProductTypeDao productTypeDao = (IProductTypeDao)app.getBean("productTypeDaoProxy");
		IProductDao productDao = (IProductDao)app.getBean("productDaoProxy");
		
		boolean flag = managerDao.queryManagerByNPT(manager_name, manager_password, manager_type);
		
		if(flag == true) {
			
			//查询所有的商品类型 为添加商品做准备
			List productTypeList = productTypeDao.queryProductType();
			request.getSession().setAttribute("back_productTypeList",productTypeList);
			
			//查询所有商品
			List productList = productDao.queryAllProduct();
			request.getSession().setAttribute("back_allProduct", productList);
			
			if(manager_type.equals("super_admin")) {
				
				return mapping.findForward("success");
			}else if(manager_type.equals("order_admin")) {
				
				return mapping.findForward("order_admin");
			}else if(manager_type.equals("product_admin")) {
				
				return mapping.findForward("product_admin");
			}else if(manager_type.equals("user_admin")) {
				
				return mapping.findForward("user_admin");
			}else if(manager_type.equals("pay_type_admin")) {
				
				return mapping.findForward("pay_type_admin");
			}else if(manager_type.equals("product_type_admin")) {
				
				return mapping.findForward("product_type_admin");
			}
			
		}
			
		return mapping.findForward("failure");

	}
}
