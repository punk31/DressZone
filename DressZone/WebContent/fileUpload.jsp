<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>File Upload</title>
</head>
<body>
   <form action="upload" method="post" enctype="multipart/form-data">
      <label for="myFile">Upload your file</label>
      <input type="text" name="labels" label="file tags : " />
      <input type="file" name="myFile" multiple="multiple"/>
      <input type="submit" value="Upload"/>
   </form>
</body>
</html>