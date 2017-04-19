package in.dresszone.web.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import in.dresszone.web.beans.School;

public class SchoolAction extends ActionSupport implements ModelDriven<School> {

	private School school = new School();

	public School getSchool() {
		return school;
	}

	public void setSchool(School school) {
		this.school = school;
	}

	public String addSchool() {
		System.out.println(school.getSchoolName());
		System.out.println(school.getPinCode());
		System.out.println(school.getAboutSchool());
		return "added";
	}

	public void validate(){
		System.out.println("value of school object is >> "+school);
	}
	
	@Override
	public School getModel() {
		return school;
	}

}
