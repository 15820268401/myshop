package emp.shop.form;

import org.apache.struts.action.ActionForm;

public class ManagerForm extends ActionForm{
	
	private int manager_id;
	
	private String manager_name;
	
	private String manager_password;
	
	private String manager_type;

	public String getManager_name() {
		return manager_name;
	}

	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}

	public String getManager_password() {
		return manager_password;
	}

	public void setManager_password(String manager_password) {
		this.manager_password = manager_password;
	}

	public String getManager_type() {
		return manager_type;
	}

	public void setManager_type(String manager_type) {
		this.manager_type = manager_type;
	}

	public int getManager_id() {
		return manager_id;
	}

	public void setManager_id(int manager_id) {
		this.manager_id = manager_id;
	}
}
