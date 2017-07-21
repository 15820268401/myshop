package emp.shop.idao;

import java.util.List;

import emp.shop.model.Orders;

public interface IOrderDao {

	public void addOrder(Orders orders);
	
	public void deleteOrder(int order_id);
	
	public void modifyOrder(int order_id);
	
	public Orders queryOrderByUserId(int user_id);

	public List queryOrderByList(int user_id);
	
	public Orders queryOrderByOrderId(int order_id);
}
