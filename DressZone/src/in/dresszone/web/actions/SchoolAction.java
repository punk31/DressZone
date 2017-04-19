package in.dresszone.web.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import in.dresszone.web.beans.School;

public class SchoolAction extends ActionSupport implements ModelDriven<School> {

	private static final long serialVersionUID = -7385456601463884132L;
	private School school = new School();

	public School getSchool() {
		return school;
	}

	public void setSchool(School school) {
		this.school = school;
	}

	@Override
	public void validate() {
		System.out.println("School Object >> " + school);
	}

	public String addSchool() {
		System.out.println("School Object >> " + school);
		System.out.println(school.getSchoolName());
		System.out.println(school.getPinCode());
		System.out.println(school.getAboutSchool());
		// System.out.println(school.getImageFilesFileName().get(0));
		return "added";
	}

	@Override
	public School getModel() {
		return school;
	}

}
