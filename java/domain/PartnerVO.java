package domain;

public class PartnerVO {
	private int pid;
	private String pnr_name;
	private String addr;
	private String pnr_tel;
	private String c_mgr;
	private String c_tel;
	private int sales_mgr;
	private String reg_at;
	private String writer;
	private String name;
	
	public PartnerVO() {}

	// list
	public PartnerVO(int pid, String pnr_name, String pnr_tel, String addr, int sales_mgr, String name) {
		this.pid = pid;
		this.pnr_name = pnr_name;
		this.pnr_tel = pnr_tel;
		this.addr = addr;
		this.sales_mgr = sales_mgr;
		this.name = name;
	}
	
	// detail
	public PartnerVO(int pid, String pnr_name, String addr, String pnr_tel, String c_mgr, String c_tel,
			int sales_mgr, String reg_at, String writer, String name) {
		this.pid = pid;
		this.pnr_name = pnr_name;
		this.addr = addr;
		this.pnr_tel = pnr_tel;
		this.c_mgr = c_mgr;
		this.c_tel = c_tel;
		this.sales_mgr = sales_mgr;
		this.reg_at = reg_at;
		this.writer = writer;
		this.name = name;
	}
	
	// modify
	public PartnerVO(int pid, String pnr_name, String addr, String pnr_tel, String c_mgr, String c_tel, int sales_mgr) {
		this.pid = pid;
		this.pnr_name = pnr_name;
		this.addr = addr;
		this.pnr_tel = pnr_tel;
		this.c_mgr = c_mgr;
		this.c_tel = c_tel;
		this.sales_mgr = sales_mgr;
	}
	
	// create
	public PartnerVO(String pnr_name, String addr, String pnr_tel, String c_mgr, String c_tel, int sales_mgr) {
		this.pnr_name = pnr_name;
		this.addr = addr;
		this.pnr_tel = pnr_tel;
		this.c_mgr = c_mgr;
		this.c_tel = c_tel;
		this.sales_mgr = sales_mgr;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPnr_name() {
		return pnr_name;
	}

	public void setPnr_name(String pnr_name) {
		this.pnr_name = pnr_name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getPnr_tel() {
		return pnr_tel;
	}

	public void setPnr_tel(String pnr_tel) {
		this.pnr_tel = pnr_tel;
	}

	public String getC_mgr() {
		return c_mgr;
	}

	public void setC_mgr(String c_mgr) {
		this.c_mgr = c_mgr;
	}

	public String getC_tel() {
		return c_tel;
	}

	public void setC_tel(String c_tel) {
		this.c_tel = c_tel;
	}

	public int getSales_mgr() {
		return sales_mgr;
	}

	public void setSales_mgr(int sales_mgr) {
		this.sales_mgr = sales_mgr;
	}

	public String getReg_at() {
		return reg_at;
	}

	public void setReg_at(String reg_at) {
		this.reg_at = reg_at;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
