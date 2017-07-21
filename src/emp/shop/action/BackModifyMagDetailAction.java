package emp.shop.action;

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
import emp.shop.model.Manager;

public class BackModifyMagDetailAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ManagerForm mf = (ManagerForm)form;
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		IManagerDao managerDao = (IManagerDao)app.getBean("managerDaoProxy");
		Manager manager = (Manager)app.getBean("manager");
		
		manager = managerDao.queryManagerById(mf.getManager_id());
		
		request.getSession().setAttribute("back_manager",manager);
		
		return mapping.findForward("success");
	}

}
