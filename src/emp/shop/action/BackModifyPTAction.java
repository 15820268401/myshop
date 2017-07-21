package emp.shop.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import emp.shop.form.PayTypeForm;
import emp.shop.idao.IPayTypeDao;
import emp.shop.model.PayType;

public class BackModifyPTAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		PayTypeForm ptf = (PayTypeForm)form;
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		IPayTypeDao payTypeDao = (IPayTypeDao)app.getBean("payTypeDaoProxy");
		PayType payType = (PayType)app.getBean("payType");
		
		payType = (PayType) payTypeDao.queryPayTypeById(ptf.getPay_type_id());
		
		request.getSession().setAttribute("back_payType", payType);
		
		return mapping.findForward("success");
	}

}
