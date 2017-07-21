package emp.shop.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import emp.shop.form.UserForm;
import emp.shop.idao.IUserDao;
import emp.shop.model.User;

public class ShowResultAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		UserForm uf = (UserForm)form;
		
		int user_id = uf.getUser_id();
		
		String password_hint = uf.getPassword_hint();
		
		String password_result = uf.getPassword_result();
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		IUserDao userDao = (IUserDao)app.getBean("userDaoProxy");
		User user = (User)app.getBean("user");
		
		user = userDao.queryUserById(user_id);
		
		if(user.getPassword_result().equals(password_result)) {
			
			request.setAttribute("hint_password", user.getPassword());
			
			return mapping.findForward("success");
		}
		
		return mapping.findForward("failure");
	}
}
