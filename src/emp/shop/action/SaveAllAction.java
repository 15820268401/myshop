package emp.shop.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import emp.shop.bean.ShoppingCartBean;
import emp.shop.form.BakForm;
import emp.shop.form.PayTypeForm;
import emp.shop.idao.IOrderDao;
import emp.shop.idao.IOrderItemDao;
import emp.shop.idao.IProductDao;
import emp.shop.idao.IUserDao;
import emp.shop.model.OrderItem;
import emp.shop.model.Orders;
import emp.shop.model.PayType;
import emp.shop.model.Product;
import emp.shop.model.User;

public class SaveAllAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		//得到form中的付款方式form
		PayTypeForm ptf = (PayTypeForm)form;
		
		//得到session中的用户信息
		User user = (User)request.getSession().getAttribute("user");
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		
		IOrderDao orderDao = (IOrderDao)app.getBean("orderDaoProxy");
		IOrderItemDao orderItemDao = (IOrderItemDao)app.getBean("orderItemDaoProxy");
		IProductDao productDao = (IProductDao)app.getBean("productDaoProxy");
		IUserDao userDao = (IUserDao)app.getBean("userDaoProxy");
		
		Orders orders = (Orders)app.getBean("order");
		PayType payType = (PayType)app.getBean("payType");
		OrderItem orderItem = (OrderItem)app.getBean("orderItem");
		Product product = (Product)app.getBean("product");
		User user1 = (User)app.getBean("user");
		
		//设置orders中的与用户相关联的信息
		orders.setSend_place(user.getAddress());
		orders.setSend_man(user.getTruename());
		orders.setSend_zip(user.getZip());
		orders.setSend_email(user.getEmail());
		orders.setSend_phone(user.getTel());
		
		//得到session中的备注信息 并设置到orders中
		BakForm bf = (BakForm)request.getSession().getAttribute("bakForm");
		
		orders.setBak(bf.getBak());
		
		//设置orders中的用户外键
		orders.setUser(user);
		
		//设置orders中的付款方式外键
		payType.setPay_type_id(ptf.getPay_type_id());
		payType.setPay_type_name(ptf.getPay_type_name());
		
		orders.setPayType(payType);
		
		//设置订单的自动生成项
		orders.setOrder_num("435jd834uh23kh523");
		
		//订单日期格式化
		Date time = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyy-mm-dd hh:mm:ss");
		String s = sdf.format(time);
		
		orders.setOrder_time(s);
		orders.setOrder_status("未处理");
		
		//保存orders
		orderDao.addOrder(orders);
		
		request.setAttribute("orders", orders);
		
		//处理订单项
		List cartList = (List) request.getSession().getAttribute("cartList"); 

		for(int i=0; i<cartList.size(); i++) {
			ShoppingCartBean scb = (ShoppingCartBean) cartList.get(i);
			int product_id = scb.getProduct_id();
			String sale_count = scb.getSale_count();
			
			product = productDao.queryProductById(product_id);
			
			//设置产品销售量
			product.setProduct_sale_count(product.getProduct_sale_count()+sale_count);
			product.setProduct_count((product.getProduct_count())- Integer.parseInt(sale_count));
			productDao.modifyProduct(product);
			
			orderItem.setSale_count(sale_count);
			orderItem.setProduct(product);
			orderItem.setOrders(orders);
			
			orderItemDao.addOrderItem(orderItem);
			
			//修改用户积分和等级
			String score = product.getProduct_price();
			char[] sc = score.toCharArray();
			
			score = "";
			
			for(int j=0; j<sc.length; i++){
				
				if(sc[i] !=  '.'){
					score = score + sc[i];
				}else {
					break;
				}
			}
			
			int member_score = Integer.parseInt(score);
			
			user1 = userDao.queryUserByName(user.getUsername());
			user1.setMember_score(member_score + user.getMember_score());
			
			if(user1.getMember_score() >= 10000 & user1.getMember_score() < 30000){
				user1.setCard_level("一级魔法师");
			}else if(user1.getMember_score() >= 30000 & user1.getMember_score()< 50000 ) {
				user1.setCard_level("二级魔法师");
			}else if(user1.getMember_score() >= 50000 & user1.getMember_score() < 70000) {
				user1.setCard_level("三级魔法师");
			}else if(user1.getMember_score() >= 70000 & user1.getMember_score() < 100000) {
				user1.setCard_level("四级魔法师");
			}else if(user1.getMember_score() >= 100000 & user1.getMember_score() < 120000) {
				user1.setCard_level("五级魔法师");
			}else if(user1.getMember_score() >= 120000) {
				user1.setCard_level("超级魔法师");
			}
			
			userDao.modifyUser(user1);
			
		}
		
		return mapping.findForward("success");
	}

}
