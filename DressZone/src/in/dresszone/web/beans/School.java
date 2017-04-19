package in.dresszone.web.beans;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class School {

	private String schoolName;
	private String pinCode;
	private String location;
	private String aboutSchool;
	private List<File> imageFiles = new ArrayList<File>();
	private List<String> imageFilesFileName = new ArrayList<String>();
	private List<String> imageFilesContentType = new ArrayList<String>();

	public String getSchoolName() {
		return schoolName;
	}

	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}

	public String getPinCode() {
		return pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		System.out.println("Setter >> location >"+location);
		this.location = location;
	}

	public String getAboutSchool() {
		return aboutSchool;
	}

	public void setAboutSchool(String aboutSchool) {
		this.aboutSchool = aboutSchool;
	}

	public List<File> getImageFiles() {
		return imageFiles;
	}

	public void setImageFiles(List<File> imageFiles) {
		this.imageFiles = imageFiles;
	}

	public List<String> getImageFilesFileName() {
		return imageFilesFileName;
	}

	public void setImageFilesFileName(List<String> imageFilesFileName) {
		this.imageFilesFileName = imageFilesFileName;
	}

	public List<String> getImageFilesContentType() {
		return imageFilesContentType;
	}

	public void setImageFilesContentType(List<String> imageFilesContentType) {
		this.imageFilesContentType = imageFilesContentType;
	}

}
