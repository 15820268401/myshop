package emp.shop.idao;

import java.util.List;

import emp.shop.model.Manager;

public interface IManagerDao {

	public void addManager(Manager manager);
	
	public void deleteManager(Manager manager);
	
	public void modifyManager(Manager manager);
	
	public List queryAllManager();
	
	public boolean queryManagerByNPT(String manager_name,String manager_password,String manager_type);
	
	public Manager queryManagerById(int manager_id);
}
