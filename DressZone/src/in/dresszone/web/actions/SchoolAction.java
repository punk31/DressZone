package in.dresszone.web.actions;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;

import com.opensymphony.xwork2.ModelDriven;

import in.dresszone.web.beans.School;

public class SchoolAction extends ParentAction implements ModelDriven<School> {

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
		// System.out.println("validate method :: School Object >> " +
		// school.getImageFilesFileName().get(0));
	}

	public String addSchool() {
		System.out.println("property file name >>> " + servletContext.getInitParameter("propertyStore"));
		if (servletContext.getAttribute("sessionSerialNo") == null)
			i = 1;
		else
			i = (int) servletContext.getAttribute("sessionSerialNo");
		System.out.println("session tracker count >>> " + i);
		servletContext.setAttribute("sessionSerialNo", ++i);

		/*
		 * System.out.println("School Object >> " + school);
		 * System.out.println(school.getSchoolName());
		 * System.out.println(school.getPinCode());
		 * System.out.println(school.getAboutSchool());
		 * System.out.println(school.getImageFilesFileName().get(0));
		 */
		try {
			for (int i = 0; i < school.getImageFiles().size(); i++) {
				File destFile = new File("./images/school/new school/", school.getSchoolName().replaceAll(" ", "_")
						+ "_" + i + "." + school.getImageFilesContentType().get(i).split("/")[1]);
				System.out.println(school.getImageFilesContentType().get(i).split("/")[1]);
				System.out.println(destFile.getAbsolutePath());

				FileUtils.copyFile(school.getImageFiles().get(i), destFile);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

		return "added";
	}

	@Override
	public School getModel() {
		return school;
	}

}
