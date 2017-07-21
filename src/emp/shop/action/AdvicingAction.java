package emp.shop.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import emp.shop.form.AdviceForm;
import emp.shop.idao.IAdviceDao;
import emp.shop.model.Advice;
import emp.shop.model.User;

public class AdvicingAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		AdviceForm af = (AdviceForm)form;
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		IAdviceDao adviceDao = (IAdviceDao)app.getBean("adviceDaoProxy");
		Advice advice = (Advice)app.getBean("advice");
		User user = (User)app.getBean("user");
		
		user = (User) request.getSession().getAttribute("user");
		
		advice.setTitle(af.getTitle());
		advice.setContent(af.getContent());
		advice.setUser(user);
		
		adviceDao.addAdvice(advice);
		
		return mapping.findForward("success");
	}

}
