package emp.shop.action;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class LanguageAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String lang = request.getParameter("lang");
		
		Locale locale = Locale.getDefault();
		
		if("zh".equals(lang)){
			locale = new Locale("zh","CN");
		} else if("en".equals(lang)) {
			locale = new Locale("en","US");
		}
		
		this.setLocale(request, locale);
		
		return mapping.findForward("success");
	}

}
