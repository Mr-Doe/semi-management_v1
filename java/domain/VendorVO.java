package domain;

public class VendorVO {
	private int vendor;
	private String vendor_name;
	private int classifi;
	private int cnt;

	public VendorVO() {}

	public VendorVO(int vendor, String vendor_name, int classifi, int cnt) {
		this.vendor = vendor;
		this.vendor_name = vendor_name;
		this.classifi = classifi;
		this.cnt = cnt;
	}

	

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
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
