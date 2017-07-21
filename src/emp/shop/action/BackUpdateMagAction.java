package emp.shop.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import emp.shop.form.ManagerForm;
import emp.shop.idao.IManagerDao;
import emp.shop.model.Manager;

public class BackUpdateMagAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ManagerForm mf = (ManagerForm)form;
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		IManagerDao managerDao = (IManagerDao)app.getBean("managerDaoProxy");
		Manager manager = (Manager)app.getBean("manager");
		Manager manager2 = (Manager)app.getBean("manager");
		
		manager = (Manager) request.getSession().getAttribute("back_manager");
		
		System.out.println(manager.getManager_id());
		
		manager2 = managerDao.queryManagerById(manager.getManager_id());
		
		//BeanUtils.copyProperties(manager2, mf);
		//System.out.println(manager2.getManager_id()+manager2.getManager_name()+manager2.getManager_password()+manager2.getManager_type());
		manager2.setManager_name(mf.getManager_name());
		manager2.setManager_password(mf.getManager_password());
		manager2.setManager_type(mf.getManager_type());
		
		managerDao.modifyManager(manager2);
		
		System.out.println(manager2.getManager_id()+manager2.getManager_name()+manager2.getManager_password()+manager2.getManager_type());
		
		return mapping.findForward("success");
	}

}
