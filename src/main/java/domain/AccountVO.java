package domain;

public class AccountVO {
	private int uid;
	private String account;
	private String pwd;
	private String email;
	private String name;
	private int grade;
	private String grade_name;

	public AccountVO() {}

	// login
	public AccountVO(String account, String pwd) {
		this.account = account;
		this.pwd = pwd;
	}

	// insert
	public AccountVO(String account, String pwd, int grade) {
		this.account = account;
		this.pwd = pwd;
		this.grade = grade;
	}

	// list
	public AccountVO(int uid, String account, int grade) {
		this.uid = uid;
		this.account = account;
		this.grade = grade;
	}
	
	public AccountVO(int uid, String name) {
		this.uid = uid;
		this.name = name;
	}

	// select
	public AccountVO(int uid, int grade, String account, String pwd, String email, String name, String grade_name) {
		this.uid = uid;
		this.account = account;
		this.pwd = pwd;
		this.email = email;
		this.name = name;
		this.grade = grade;
		this.grade_name = grade_name;
	}

	// update
	public AccountVO(int uid, String account, String pwd, String email, String name, int grade) {
		this.uid = uid;
		this.account = account;
		this.pwd = pwd;
		this.email = email;
		this.name = name;
		this.grade = grade;
	}

	// delete
	public AccountVO(int uid) {
		this.uid = uid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getGrade_name() {
		return grade_name;
	}

	public void setGrade_name(String grade_name) {
		this.grade_name = grade_name;
	}


}
