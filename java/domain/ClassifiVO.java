package domain;


public class ClassifiVO {
	private int classifi;
	private String e_name;
	private String k_name;

	public ClassifiVO() {}

	public ClassifiVO(int classifi, String e_name, String k_name) {
		this.classifi = classifi;
		this.e_name = e_name;
		this.k_name = k_name;
	}

	public int getClassifi() {
		return classifi;
	}

	public void setClassifi(int classifi) {
		this.classifi = classifi;
	}

	public String getE_name() {
		return e_name;
	}

	public void setE_name(String e_name) {
		this.e_name = e_name;
	}

	public String getK_name() {
		return k_name;
	}

	public void setK_name(String k_name) {
		this.k_name = k_name;
	}


}
