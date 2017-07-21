package emp.shop.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import emp.shop.bean.ShoppingCartBean;
import emp.shop.form.ShoppingCartFormMulti;

public class SureCartAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ShoppingCartFormMulti sf = (ShoppingCartFormMulti)form;
		
		int [] pro_id = (int[])sf.getProduct_id();
		/*
		for(int i=0; i<pro_id.length; i++) {
			
			System.out.println(pro_id[i]);
		}
		*/
		String [] pro_name = (String[])sf.getProduct_name();
		String [] pro_price = (String[])sf.getProduct_price();
		String [] sale_count = (String[])sf.getSale_count(); 
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		ShoppingCartBean scb =null;
	
		List<ShoppingCartBean> cartList = new ArrayList<ShoppingCartBean>();
		
		for(int i=0; i<pro_id.length; i++) {
			
			scb =  (ShoppingCartBean)app.getBean("shoppingCartBean");
			
			scb.setProduct_id(pro_id[i]);
			scb.setProduct_name(pro_name[i]);
			scb.setProduct_price(pro_price[i]);
			scb.setSale_count(sale_count[i]);
			
			//System.out.println(scb.getProduct_id()+"	"+scb.getProduct_name()+"	"+scb.getProduct_price()+"	"+scb.getSale_count());
			
			cartList.add(scb);
		}
		/*
		for(Iterator i = cartList.iterator();i.hasNext();) {
			ShoppingCartBean scb2 = (ShoppingCartBean)app.getBean("shoppingCartBean");
			
			scb2 = (ShoppingCartBean) i.next();
			
			System.out.println(scb2.getProduct_id()+"	"+scb2.getProduct_name()+"	"+scb2.getProduct_price()+"	"+scb2.getSale_count());
		}
		*/
		request.getSession().setAttribute("cartList", cartList);
		
		return mapping.findForward("success");
	}

}
