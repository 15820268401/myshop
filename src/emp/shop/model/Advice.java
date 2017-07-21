package emp.shop.model;

import java.util.Set;

public class Advice {

	private int advice_id;
	
	private String title;
	
	private String content;
	
	private User user;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getAdvice_id() {
		return advice_id;
	}

	public void setAdvice_id(int advice_id) {
		this.advice_id = advice_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}
