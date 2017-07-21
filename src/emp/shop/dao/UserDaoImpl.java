package emp.shop.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import emp.shop.idao.IUserDao;
import emp.shop.model.User;

public class UserDaoImpl extends HibernateDaoSupport implements IUserDao {

	public void addUser(User user) {

		this.getHibernateTemplate().save(user);
	}

	public void deleteUser(User user) {
		
		this.getHibernateTemplate().delete(user);
	}

	public void modifyUser(User user) {

		this.getHibernateTemplate().update(user);
	}

	public List queryUser() {
		
		List userList=this.getHibernateTemplate().find("from User");
		
		return userList;
	}

	public User queryUserByName(String username) {
		
		List userList=this.getHibernateTemplate().find("from User where username='"+username+"'");
		User u=null;
		if(userList.size()==1){
		 u=(User) userList.get(0);
		}
		return u;
		
	}

	public boolean queryUserByNameAndPass(String username, String password) {
		
		List userList=this.getHibernateTemplate().find("from User where password='"+password+"' and username='"+username+"'");
		
		if(userList.size() == 1) {
			return true;
		}else {
			return false;
		}
	}

	public List queryALLUserByMemberScore() {
		
		List userList=this.getHibernateTemplate().find("from User order by member_score desc");
		
		return userList;
	}

	public User queryUserById(int user_id) {
		
		List userList=this.getHibernateTemplate().find("from User where user_id="+user_id);
		User u=null;
		if(userList.size()==1){
		 u=(User) userList.get(0);
		}
		return u;
		
	}

}
