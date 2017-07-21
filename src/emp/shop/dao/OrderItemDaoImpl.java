package emp.shop.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import emp.shop.idao.IOrderItemDao;
import emp.shop.model.OrderItem;

public class OrderItemDaoImpl extends HibernateDaoSupport implements IOrderItemDao {

	public void addOrderItem(OrderItem orderItem) {

		this.getHibernateTemplate().save(orderItem);
	}

	public void deleteOrderItem(int order_item_id) {

	}

	public void modifyOrderItem(int order_item_id) {

	}

	public List queryOrderItem() {
		
		List orderItemList = this.getHibernateTemplate().find("from OrderItem");
		
		return orderItemList;
	}

}
