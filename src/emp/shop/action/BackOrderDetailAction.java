package emp.shop.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import emp.shop.form.OrderForm;
import emp.shop.idao.IOrderDao;
import emp.shop.model.Orders;

public class BackOrderDetailAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		OrderForm of = (OrderForm)form;
		
		int order_id = of.getOrder_id(); 
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		IOrderDao orderDao = (IOrderDao)app.getBean("orderDaoProxy");
		Orders order= (Orders)app.getBean("order");
		
		order = orderDao.queryOrderByOrderId(order_id);
		
		request.setAttribute("back_order", order);
		
		return mapping.findForward("success");
	}

}
