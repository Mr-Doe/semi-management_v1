package domain;

public class InventoryVO {
	private int iid;
	private String serial;
	private int classifi;
	private int vendor;
	private String model;
	private String naming;
	private String reg_at;
	private String availd;
	private String writer;
	private int pid;
	private String mod_at;
	private String reason;
	private String pnr_name;
	private String addr;
	private String e_name;
	private String k_name;
	private String vendor_name;

	public InventoryVO() {}

	// insert
	public InventoryVO(String serial, int classifi, int vendor, String model, String naming, String writer, int pid) {
		this.serial = serial;
		this.classifi = classifi;
		this.vendor = vendor;
		this.model = model;
		this.naming = naming;
		this.writer = writer;
		this.pid = pid;
	}

	// list
	public InventoryVO(int iid, String serial, int classifi, int vendor, String naming, int pid, String mod_at,
			String reason, String pnr_name, String addr, String writer, String k_name) {
		this.iid = iid;
		this.serial = serial;
		this.classifi = classifi;
		this.vendor = vendor;
		this.naming = naming;
		this.pid = pid;
		this.mod_at = mod_at;
		this.reason = reason;
		this.pnr_name = pnr_name;
		this.addr = addr;
		this.writer = writer;
		this.k_name = k_name;
	}

	// select
	public InventoryVO(int iid, String serial, int classifi, int vendor, String model, String naming, String reg_at,
			String writer, int pid, String e_name, String k_name, String vendor_name, String pnr_name) {
		this.iid = iid;
		this.serial = serial;
		this.classifi = classifi;
		this.vendor = vendor;
		this.model = model;
		this.naming = naming;
		this.reg_at = reg_at;
		this.writer = writer;
		this.pid = pid;
		this.e_name = e_name;
		this.k_name = k_name;
		this.vendor_name = vendor_name;
		this.pnr_name = pnr_name;
	}

	// update
	public InventoryVO(int iid, String serial, int classifi, int vendor, String model, String naming, int pid) {
		this.iid = iid;
		this.serial = serial;
		this.classifi = classifi;
		this.vendor = vendor;
		this.model = model;
		this.naming = naming;
		this.pid = pid;
	}


	// update (delete)
	public InventoryVO(int iid, String reason, String writer) {
		this.iid = iid;
		this.reason = reason;
		this.writer = writer;
	}
	
	public int getIid() {
		return iid;
	}

	public void setIid(int iid) {
		this.iid = iid;
	}

	public String getSerial() {
		return serial;
	}

	public void setSerial(String serial) {
		this.serial = serial;
	}

	public int getClassifi() {
		return classifi;
	}

	public void setClassifi(int classifi) {
		this.classifi = classifi;
	}

	public int getVendor() {
		return vendor;
	}

	public void setVendor(int vendor) {
		this.vendor = vendor;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getNaming() {
		return naming;
	}

	public void setNaming(String naming) {
		this.naming = naming;
	}

	public String getReg_at() {
		return reg_at;
	}

	public void setReg_at(String reg_at) {
		this.reg_at = reg_at;
	}

	public String getAvaild() {
		return availd;
	}

	public void setAvaild(String availd) {
		this.availd = availd;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getMod_at() {
		return mod_at;
	}

	public void setMod_at(String mod_at) {
		this.mod_at = mod_at;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getpnr_name() {
		return pnr_name;
	}

	public void setpnr_name(String pnr_name) {
		this.pnr_name = pnr_name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getPnr_name() {
		return pnr_name;
	}

	public void setPnr_name(String pnr_name) {
		this.pnr_name = pnr_name;
	}

	public String getE_name() {
		return e_name;
	}

	public void setE_name(String e_name) {
		this.e_name = e_name;
	}

	public String getVendor_name() {
		return vendor_name;
	}

	public void setVendor_name(String vendor_name) {
		this.vendor_name = vendor_name;
	}

	public String getK_name() {
		return k_name;
	}

	public void setK_name(String k_name) {
		this.k_name = k_name;
	}





}
