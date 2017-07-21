package emp.shop.idao;

import java.util.List;

import emp.shop.model.User;

public interface IUserDao {

	//用户添加
	public void addUser(User user);
	
	//用户删除
	public void deleteUser(User user);
	
	//用户修改
	public void modifyUser(User user);
	
	//查询全部用户
	public List queryUser();
	
	//通过用户名查询
	public User queryUserByName(String username);
	
	//通过用户名和密码查询
	public boolean queryUserByNameAndPass(String username, String password);
	
	public List queryALLUserByMemberScore();
	
	public User queryUserById(int user_id);
	
}
