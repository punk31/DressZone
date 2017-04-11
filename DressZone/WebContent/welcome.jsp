<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dress Zone : Welcome</title>
</head>
<body bgcolor="#33FFCA">
	<table width="90%" bgcolor="#BEFF33" align="center">
		<tr>
			<td><jsp:include page="header.jsp"></jsp:include></td>
		</tr>
		<tr height="15px">
			<td>
				<form action="./login.action" method="post">
					<table align="right" style="margin-top: 5px; margin-right: 5px;"
						width="25%">
						<tr>
							<td valign="top"><input type="text" name="login" size="12" /></td>
							<td valign="top"><input type="password" name="secret" size="12" /></td>
							<td > <input type="submit" value="Login" /><br /> <a 
								href="./registration.jsp" style="font-size: 75%" >New User</a></td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
		<tr>
			<td height="450">

				<h2>all contents of the page .!!</h2>
			</td>
		</tr>
		<tr>
			<td><jsp:include page="footer.jsp"></jsp:include></td>
		</tr>
	</table>
</body>
</html>