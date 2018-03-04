<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<title>Registration & Logging In Test</title>
	<link href='https://www.hanyi.studio/WebFonts/C3DB971E-443B-4D37-887D-530EE441EB6B/201803/css/C18C7030D9B32022.css' rel='stylesheet' type='text/css'/>
	<style>
		.btns{
			
		}
	</style>
</head>
<body>
	<div class="cssC18C7030D9B32022">
	<center>

	<table width="100%">
		<tr>
			<td height="512" bgcolor="#000" align="center">
				<font size="+6" color="#fff"><p>God's Playground</p></font>
			</td>
		</tr>
	</table>

	<table width="100%">
		<tr>
			<td>
				<form action="login.asp" method="post" name="logform">
				<table>
					<tr>
						<td align="center"><h2>Log In</h2></td>
					</tr>
					<tr>
						<td align="right">
							User Name
						</td>
						<td>
							<input type="text" name="user_name">
						</td>
					</tr>
					<tr>
						<td align="right">
							Password
						</td>
						<td>
							<input type="password" name="user_pw">
						</td>
					</tr>
					<tr>
						<td align="right">
							<input type="submit" name="loginbtn" value="Log In">
						</td>
						<td align="left">
							<input type="reset" name="resetloginbtn" value="Reset">
						</td>
					</tr>
				</table>
				</form>
			</td>
			<td>
				<form action="reg.asp" method="post" name="regform">
				<table>
					<tr>
						<td><h2>Register</h2></td>
					</tr>
					<tr>
						<td align="right">
							User Name
						</td>
						<td>
							<input type="text" name="user_name">
						</td>
					</tr>
					<tr>
						<td align="right">
							Password
						</td>
						<td>
							<input type="password" name="user_pw">
						</td>
					</tr>
					<tr>
						<td align="right">
							By the way, do you wanna be one of the administrators?
						</td>
						<td align="left">
							<input type="text" name="user_admin">
						</td>
					</tr>
					<tr>
						<td>&nbsp;
							
						</td>
						<td>
							<font size="0" color="#424242"><p>(The lowercase "y" means you want to, otherwise you don't.)</p></font>
						</td>
					</tr>
					<tr>
						<td align="right">
							<input type="submit" name="regbtn" value="Sign Up">
						</td>
						<td align="left">
							<input type="reset" name="resetregbtn" value="Reset">
						</td>
					</tr>
				</table>
				</form>
			</td>
		</tr>
	</table>
	</center>
	</div>
</body>
</html>