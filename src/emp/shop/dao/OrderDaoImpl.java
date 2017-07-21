package emp.shop.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import emp.shop.idao.IOrderDao;
import emp.shop.model.Orders;

public class OrderDaoImpl extends HibernateDaoSupport implements IOrderDao {

	public void addOrder(Orders orders) {

		this.getHibernateTemplate().save(orders);
	}

	public void deleteOrder(int order_id) {

	}

	public void modifyOrder(int order_id) {

	}

	public Orders queryOrderByUserId(int user_id) {
		
		List orderList = this.getHibernateTemplate().find("from Orders where user.user_id='"+user_id+"'");
		Orders orders = null;
		if(orderList.size() == 1){
			orders = (Orders) orderList.get(0);
		}
		return orders;
	}
	
	public List<Orders> queryOrderByList(int user_id) {
		
		List<Orders> orderList = this.getHibernateTemplate().find("from Orders where user.user_id="+user_id);
		
		return orderList;
	}

	public Orders queryOrderByOrderId(int order_id) {
		
		Orders orders = (Orders) this.getHibernateTemplate().find("from Orders where order_id =" +order_id);
		
		return orders;
	}

}
