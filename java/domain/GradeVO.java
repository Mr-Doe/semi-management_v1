package domain;

public class GradeVO {
	private int grade;
	private String grade_name;

	public GradeVO() {}

	public GradeVO(int grade, String grade_name) {
		this.grade = grade;
		this.grade_name = grade_name;
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
