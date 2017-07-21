package emp.shop.spage;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class SPage extends HibernateDaoSupport{

	 public List findObjs(final String hql, final Page page){   
		 List ret = null;   
		 if (hql == null || hql.equals("") || page == null) {   
		    System.out.println("findObjs方法错误！hql语句不允许为空！");   
		 } else {   
		     try {   
		         ret = getHibernateTemplate().executeFind(   
                 new HibernateCallback() {   

                     public Object doInHibernate(Session session)   
                             throws HibernateException {   
                         Query query = session.createQuery(hql);   
                         page.setRowTotal(query.list().size());   
                         page.setPageTotal((page.getRowTotal() - 1)   
                                 / page.getPageSize() + 1);   
                         if (page.getPageNum() <= 0) {   
                             page.setPageNum(1);   
                         }   
                         if (page.getPageNum() > page.getPageTotal()) {   
                             page.setPageNum(page.getPageTotal());   
                         }   
                         if (page.getBeginResult() != -1) {   
                             query.setFirstResult(page.getPageSize()   
                                     * (page.getPageNum() - 1));   
                             query.setMaxResults(page.getPageSize());   
                         }   
                         List list = query.list();   
                         return list;   
                     }   
                 });   
		     } catch (Exception ex) {   
		    	 ex.printStackTrace();
		     }   
		 }   
		 return ret;   
		}  

}
