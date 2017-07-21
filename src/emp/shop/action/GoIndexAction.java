package emp.shop.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import emp.shop.bean.HitBean;
import emp.shop.idao.IProductDao;
import emp.shop.idao.IProductTypeDao;
import emp.shop.idao.ISiteHitDao;
import emp.shop.idao.IUserDao;
import emp.shop.model.SiteHit;

public class GoIndexAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		
		IProductTypeDao productTypeDao = (IProductTypeDao)app.getBean("productTypeDaoProxy");
		IProductDao productDao = (IProductDao)app.getBean("productDaoProxy");
		IUserDao userDao = (IUserDao)app.getBean("userDaoProxy");
		ISiteHitDao siteHitDao = (ISiteHitDao)app.getBean("siteHitDaoProxy");
		
		SiteHit siteHit = (SiteHit)app.getBean("siteHit");
		
		
		//查询所有商品类型 并添加到request中
		
		List productTypeList = productTypeDao.queryProductType();
		request.setAttribute("productTypeList", productTypeList);
		
		
		//按商品点击率查询所有商品 并添加到request中 
		
		List productList = productDao.queryAllProductLimit();
		request.setAttribute("productList2", productList);
		
		
		//按商品的销售量查询所有商品 并添加到request中 
		
		List saleCountList = productDao.queryProductByProductSaleCount();
		request.setAttribute("saleCountList", saleCountList);
		
		
		//按商品编号查询所有商品 并添加到request中 
		
		List proList = productDao.queryAllProduct();
		request.setAttribute("proList", proList);
		
		
		//按用户的积分查询所有用户 并添加到request中 
		
		List userList = userDao.queryALLUserByMemberScore();
		request.setAttribute("userList", userList);
		
		
		//查询网站点击率
		
		siteHit = siteHitDao.queryHit();
		
		String s_hit = siteHit.getHit() + "";
		char arrHit[] = s_hit.toCharArray();
		
		List hitList = new ArrayList();
		
		for(int i=0; i<arrHit.length; i++) {
			HitBean hitbean = new HitBean();
			
			hitbean.setLength(arrHit.length);
			hitbean.setArrHit(arrHit[i]);
			
			hitList.add(hitbean);
		}
		request.setAttribute("hitList", hitList);
		siteHit.setHit(siteHit.getHit() + 1);
		siteHitDao.modifySiteHit(siteHit);
		
		
		return mapping.findForward("go_success");
	}
}
