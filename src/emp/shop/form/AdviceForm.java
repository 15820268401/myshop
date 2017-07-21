package emp.shop.form;

import org.apache.struts.action.ActionForm;

public class AdviceForm  extends ActionForm{

	private int advice_id;
	
	private String title;
	
	private String content;

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
