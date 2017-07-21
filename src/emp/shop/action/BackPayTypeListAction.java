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

import emp.shop.idao.IPayTypeDao;

public class BackPayTypeListAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		IPayTypeDao payTypeDao = (IPayTypeDao)app.getBean("payTypeDaoProxy");
		
		List payTypeList = payTypeDao.queryPayType();
		
		request.setAttribute("back_payTypeList", payTypeList);
		
		return mapping.findForward("success");
	}

}
