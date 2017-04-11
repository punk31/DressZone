<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dress Zone : Registration</title>
</head>
<body bgcolor="#33FFCA">
	<table width="90%" bgcolor="#BEFF33" align="center">
		<tr>
			<td><jsp:include page="header.jsp"></jsp:include></td>
		</tr>
		<tr>
			<td height="450" valign="top">
			<div id="registrationProcess">
				<table bgcolor="#000000" width="99%" align="center">
					<tr>
						<td width="70%"
							style="border-right: thick; background-color: orange; text-align: center;">&nbsp;here
							images can be placed..!</td>
						<td width="30%">


							<p style="font-family: Tahoma; font-size: 14px; color: #0000FF; text-align: right; margin-right: 20pt;">
								We need to know you to serve you better. <br />This will take a
								few seconds..!
							</p>
							<div id="regForm">
								<form action="registration.action" method="post">
									<input name="lavel" value="0" type="hidden" />
									<table bgcolor="#FFFFFF" align="right"
										style="font-family: Verdana; font-size: 13px; margin-right: 5px; margin-bottom: 10px;">
										<tr>
											<td width="40%"></td>
											<td width="60%"></td>
										</tr>
										<tr>
											<td colspan="2" align="center"
												style="font-family: Verdana; font-size: 24px;">Registration
												Form</td>
										</tr>
										<tr>
											<td width="40%">First Name :</td>
											<td width="60%"><input name="f_name" /></td>
										</tr>
										<tr>
											<td width="40%">Last Name :</td>
											<td width="60%"><input name="l_name" /></td>
										</tr>
										<tr>
											<td width="40%">e Mail :</td>
											<td width="60%"><input name="e_mail" /></td>
										</tr>
										<tr>
											<td width="40%">Mobile :</td>
											<td width="60%"><input name="mobile_num" /></td>
										</tr>
										<tr>
											<td width="40%">Date of birth :</td>
											<td width="60%"><input name="date_of_birth" /></td>
										</tr>
										<tr>
											<td width="40%">Password :</td>
											<td width="60%"><input name="secret" type="password" /></td>
										</tr>
										<tr>
											<td width="40%">Confirm password :</td>
											<td width="60%"><input name="second_secret"
												type="password" /></td>
										</tr>
										<tr>
											<td colspan="2" style="text-align: center;"><input
												type="submit" value="Register Now" /> <input type="reset"
												value="Clear" />
									</table>

								</form>
							</div>
							<div id="verify" style="font-family: Tahoma; font-size: 12px; color: #0000FF; text-align: left; margin-left: 10pt; margin-bottom: 20pt">
								<p >We have just sent you OTP to your email address. Please
									enter the OTP below.
								<form action="registration.action" method="post">
									<input name="lavel" value="1" type="hidden" /> <input
										name="third_secret" type="text" /> <input type="submit"
										value="Verify" />
								</form>
							</div>
						</td>
					</tr>
				</table>
				<h4>More text / msgs can be placed here...!!</h4>
			</div>
			<div id="registrationCompleted">
			<p style="text-align: center; font-size: 20px; "> Registration has been completed successfully. Please <a href="/DZ" style="color: red;"> click to Continue..!!!</a></p>
			</div>
			</td>
		</tr>
		<tr>
			<td><jsp:include page="footer.jsp"></jsp:include></td>
		</tr>
	</table>
</body>
</html>