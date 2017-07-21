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

public class BackUpdatePTAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		PayTypeForm ptf = (PayTypeForm)form;
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		IPayTypeDao payTypeDao = (IPayTypeDao)app.getBean("payTypeDaoProxy");
		PayType payType = (PayType)app.getBean("payType");
		PayType payType2 = (PayType)app.getBean("payType");
		
		payType = (PayType) request.getSession().getAttribute("back_payType");
		
		payType2 = payTypeDao.queryPayTypeById(payType.getPay_type_id());
		
		payType2.setPay_type_name(ptf.getPay_type_name());
		
		payTypeDao.modifyPayType(payType2);
		
		return mapping.findForward("success");
	}

}
