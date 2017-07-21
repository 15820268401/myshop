package emp.shop.idao;

import emp.shop.model.SiteHit;

public interface ISiteHitDao {

	public void modifySiteHit(SiteHit siteHit);
	
	public SiteHit queryHit();
}
