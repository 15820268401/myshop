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

import emp.shop.form.UserForm;
import emp.shop.idao.IUserDao;
import emp.shop.model.User;

public class UpdateUserAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		UserForm uf = (UserForm)form;
		
		if(uf.getPassword1().equals(uf.getPassword2())) {
			
			ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
			
			IUserDao userDao = (IUserDao)app.getBean("userDaoProxy");
			User userScope = (User)app.getBean("user");
			User userTemp = (User)app.getBean("user");
			
			userScope = (User)request.getSession().getAttribute("user");
			
			userTemp = userDao.queryUserByName(userScope.getUsername());
			
			BeanUtils.copyProperties(userTemp, uf);
			userTemp.setPassword(uf.getPassword1());
			userTemp.setCard_level(userScope.getCard_level());
			userTemp.setMember_score(userScope.getMember_score());
			
			userDao.modifyUser(userTemp);
		}
		
		return mapping.findForward("success");
	}

}
