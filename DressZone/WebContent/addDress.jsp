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
	}

	function uploadImages() {
		confirm("Hello to confirm");

		setTimeout(resetFlag, 1000);
		document.getElementById('uploadButton').disabled = true;
		return false;
	}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Dress</title>
</head>
<body>

	<form action="#">
		<dz:select label="Pincode " list="pinCodeList" />
		<dz:select label="Select School" list="schoolNames" />
		<dz:select label="Gender" list="['Boys','Girls']" />
		<dz:textfield key="availableSizes" label="Available sizes"
			tooltip="enter all sized seperated by comma" />
		<dz:textarea label="Description " key="description" cols="80" rows="8" />
		<dz:file label="Images " id="imageFiles" value="Select iamges"
			multiple="multiple" key="imageNames"
			onchange="javascript:addImageToList();" accept="image/*" />

		<dz:submit onclick="javascript:uploadImages()" id="uploadButton"
			value="Upload" />
		<dz:reset value="Clear" />

	</form>


</body>
</html>