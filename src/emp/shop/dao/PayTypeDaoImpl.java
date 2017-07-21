package emp.shop.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import emp.shop.idao.IPayTypeDao;
import emp.shop.model.PayType;

public class PayTypeDaoImpl extends HibernateDaoSupport implements IPayTypeDao {

	public void addPayType(PayType payType) {
		
		this.getHibernateTemplate().save(payType);
	}

	public void deletePayType(PayType payType) {

		this.getHibernateTemplate().delete(payType);
	}

	public void modifyPayType(PayType payType) {

		this.getHibernateTemplate().update(payType);
	}

	public List<PayType> queryPayType() {
		
		List payTypeList = this.getHibernateTemplate().find("from PayType");
		
		return payTypeList;
	}

	public PayType queryPayTypeById(int Pay_type_id) {
		
		List payTypeList = this.getHibernateTemplate().find("from PayType where pay_type_id="+Pay_type_id);
		
		PayType payType = null;
		if(payTypeList.size() == 1) {
			payType = (PayType) payTypeList.get(0);
		}		
		return payType;
	}

}
