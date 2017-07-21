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

import emp.shop.idao.IOrderDao;
import emp.shop.model.Orders;
import emp.shop.model.User;

public class ShowOrderAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		
		IOrderDao orderDao = (IOrderDao)app.getBean("orderDaoProxy");
		
		User user = (User) request.getSession().getAttribute("user");
		
		List orderList = orderDao.queryOrderByList(user.getUser_id());
		
		request.setAttribute("orderList", orderList);
		
		return mapping.findForward("success");
	}

}
