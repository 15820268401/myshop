package emp.shop.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import emp.shop.idao.IAdviceDao;
import emp.shop.model.Advice;

public class AdviceDaoImpl extends HibernateDaoSupport implements IAdviceDao {

	public void addAdvice(Advice advice) {

		this.getHibernateTemplate().save(advice);
	}

	public void deleteAdvice(Advice advice) {

	}

	public void modifyAdvice(Advice advice) {

	}

	public List queryAdviceByUserId(int user_id) {
		return null;
	}

}
