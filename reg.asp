<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<title>Register</title>
</head>
<body>
	<%
	set conn=server.createObject ("adodb.connection")
	sql="Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&server.mappath("data/users.mdb")
	conn.open sql

	username=request.form("user_name")
	password=request.form("user_pw")
	admin=request.form("user_admin")

	set recset=server.createObject("adodb.recordset")
	sql2="select * from a1"
	recset.open sql2,conn,1,3

	recset.addnew
	recset("user_name")=username
	recset("user_pw")=password
	recset("user_admin")=admin
	recset.update

	recset.close
	set recset=nothing
	%>

	<script type="text/javascript">
		{
		alert("Registration Completed Successfully!")
		window.location.href="index.asp"
		}
	</script>
</body>
</html>