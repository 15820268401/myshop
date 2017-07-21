package emp.shop.spage;

public class Page {

	private int rowTotal;
	
	private int pageTotal;
	
	private int pageNum;
	
	private int beginResult;
	
	private int pageSize;

	public int getRowTotal() {
		return rowTotal;
	}

	public void setRowTotal(int rowTotal) {
		this.rowTotal = rowTotal;
	}

	public int getPageTotal() {
		return pageTotal;
	}

	public void setPageTotal(int pageTotal) {
		this.pageTotal = pageTotal;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getBeginResult() {
		return beginResult;
	}

	public void setBeginResult(int beginResult) {
		this.beginResult = beginResult;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
}
