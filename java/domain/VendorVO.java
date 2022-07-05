package domain;

public class VendorVO {
	private int vendor;
	private String vendor_name;
	private int classifi;
	private int aCnt;
	private int sCnt;
	private int lCnt;
	private int cnt;

	public VendorVO() {}

	public VendorVO(int vendor, String vendor_name, int classifi, int cnt) {
		this.vendor = vendor;
		this.vendor_name = vendor_name;
		this.classifi = classifi;
		this.cnt = cnt;
//		this.aCnt = aCnt;
//		this.sCnt = sCnt;
//		this.lCnt = lCnt;
	}

	

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public int getaCnt() {
		return aCnt;
	}

	public void setaCnt(int aCnt) {
		this.aCnt = aCnt;
	}

	public int getsCnt() {
		return sCnt;
	}

	public void setsCnt(int sCnt) {
		this.sCnt = sCnt;
	}

	public int getlCnt() {
		return lCnt;
	}

	public void setlCnt(int lCnt) {
		this.lCnt = lCnt;
	}

	public int getVendor() {
		return vendor;
	}

	public void setVendor(int vendor) {
		this.vendor = vendor;
	}

	public String getVendor_name() {
		return vendor_name;
	}

	public void setVendor_name(String vendor_name) {
		this.vendor_name = vendor_name;
	}

	public int getClassifi() {
		return classifi;
	}

	public void setClassifi(int classifi) {
		this.classifi = classifi;
	}


}
