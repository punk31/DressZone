package in.dresszone.web.actions;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;

import com.opensymphony.xwork2.ActionSupport;

public class FileUploadAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -3412307664767529685L;
	private List<File> myFile = new ArrayList<>();
	private List<String> myFileContentType = new ArrayList<>();
	private List<String> myFileFileName = new ArrayList<>();
	private String destPath;
	private String labels;

	public String getLabels() {
		return labels;
	}

	public void setLabels(String labels) {
		this.labels = labels;
	}

	public String execute() {
		/* Copy file to a safe location */
		destPath = "E:/Java/tmp/";
		System.out.println("tag is ::: " + getLabels());
		try {
			for (int i = 0; i < myFile.size(); i++) {
				System.out.println("Src File name: " + myFile.get(i));
				System.out.println("Dst File name: " + myFileFileName.get(i));

				File destFile = new File(destPath, myFileFileName.get(i));
				FileUtils.copyFile(myFile.get(i), destFile);
			}
		} catch (IOException e) {
			e.printStackTrace();
			return ERROR;
		}

		return SUCCESS;
	}

	public List<File> getMyFile() {
		return myFile;
	}

	public void setMyFile(List<File> myFile) {
		this.myFile = myFile;
	}

	public List<String> getMyFileContentType() {
		return myFileContentType;
	}

	public void setMyFileContentType(List<String> myFileContentType) {
		this.myFileContentType = myFileContentType;
	}

	public List<String> getMyFileFileName() {
		return myFileFileName;
	}

	public void setMyFileFileName(List<String> myFileFileName) {
		this.myFileFileName = myFileFileName;
	}

}