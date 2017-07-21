package emp.shop.idao;

import java.util.List;

import emp.shop.model.PayType;

public interface IPayTypeDao {

	public void addPayType(PayType payType);
	
	public void deletePayType(PayType payType);
	
	public void modifyPayType(PayType payType);
	
	public List<PayType> queryPayType();
	
	public PayType queryPayTypeById(int Pay_type_id);
}
