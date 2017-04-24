<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="dz"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">
	var flag = false;
	function addImageToList() {

		var names = "";
		var files = document.getElementById('imageFiles').files;

		for (i = 0; i < files.length; i++) {
			names += (i + 1) + ". " + files[i].name + "\n";
		}
		confirm("Following files has been selected to upload for this school-\n"
				+ names);
		document.getElementById('uploadButton').disabled = false;
	}

	function uploadImages() {
		document.getElementById('uploadButton').disabled = true;
		return false;
	}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New School</title>
</head>
<body >
	<dz:form namespace="/admin" action="addSchool" method="post" enctype="multipart/form-data">
		<dz:textfield label="School Name " key="schoolName" size="50" />
		<dz:textfield label="Pin code " key="pinCode" size="50" />
		<dz:textfield label="Location/Area " key="location" size="50" />
		<dz:textarea label="About school " key="aboutSchool" cols="80"
			rows="8" />

		<dz:file label="Images " id="imageFiles" value="Select iamges" multiple="multiple" key="imageFiles" onchange="javascript:addImageToList();" accept="image/*" />

		<dz:submit onclick="javascript:uploadImages()" id="uploadButton" value="Upload" />
		<dz:reset value="Clear" onclick="document.getElementById('uploadButton').disabled = true;" />
	</dz:form>

</body>
</html>