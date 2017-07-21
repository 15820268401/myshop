package emp.shop.idao;

import java.util.List;

import emp.shop.model.OrderItem;

public interface IOrderItemDao {

	public void addOrderItem(OrderItem orderItem);
	
	public void deleteOrderItem(int order_item_id);
	
	public void modifyOrderItem(int order_item_id);
	
	public List queryOrderItem();
}
