package emp.shop.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import emp.shop.idao.IManagerDao;
import emp.shop.model.Manager;

public class ManagerDaoImpl extends HibernateDaoSupport implements IManagerDao {

	public void addManager(Manager manager) {

		this.getHibernateTemplate().save(manager);
	}

	public void deleteManager(Manager manager) {

		this.getHibernateTemplate().delete(manager);
	}

	public void modifyManager(Manager manager) {
		
		this.getHibernateTemplate().update(manager);
	}

	public List queryAllManager() {
		
		List managerList = this.getHibernateTemplate().find("from Manager");
		
		return managerList;
	}

	public boolean queryManagerByNPT(String manager_name, String manager_password,
			String manager_type) {
		
		List managerList=this.getHibernateTemplate()
				.find("from Manager where manager_name='"+manager_name+"' and manager_password='"+manager_password+"' and manager_type='"+manager_type+"'");
		
		if(managerList.size() == 1) {
			return true;
		}else {
			return false;
		}
	}

	public Manager queryManagerById(int manager_id) {
		
		List managerList = this.getHibernateTemplate().find("from Manager where manager_id=" +manager_id);
		
		Manager manager = null;
		if(managerList.size() == 1) {
			manager = (Manager)managerList.get(0);
		}
		return manager;
	}

}
