package emp.shop.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import emp.shop.idao.ISiteHitDao;
import emp.shop.model.SiteHit;

public class SiteHitDaoImpl extends HibernateDaoSupport implements ISiteHitDao {

	public SiteHit queryHit() {

		List siteHitList=this.getHibernateTemplate().find("from SiteHit as siteHit where siteHit.id = 1");
		SiteHit siteHit = null;
		if(siteHitList.size()==1){
			siteHit=(SiteHit) siteHitList.get(0);
		}
		
		return siteHit;
	}

	public void modifySiteHit(SiteHit siteHit) {
		
		this.getHibernateTemplate().update(siteHit);
	}

}
