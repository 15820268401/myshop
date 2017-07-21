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

import emp.shop.form.SearchForm;
import emp.shop.idao.IProductDao;

public class SearchAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		SearchForm sf = (SearchForm)form;
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		IProductDao productDao = (IProductDao)app.getBean("productDaoProxy");
		
		String field = sf.getField();
		
		String key = new String(field.getBytes("ISO8859-1"),"GB18030");
		
		List productList = productDao.queryProductByKey(key);
		
		request.setAttribute("productList3", productList);
		
		return mapping.findForward("success");
	}

}
