<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<title>Logged In Successfully!</title>
</head>
<body>
	<%
	set conn=server.createobject("adodb.connection")
	sql="Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&server.mappath("data/users.mdb")
	conn.open sql

	username=request.form("user_name")
	password=request.form("user_pw")
	admin=request.form("user_admin")

	set rs=server.createobject("adodb.recordset")
	sql3="select * from a1 where user_admin='y'"
	rs.open sql3,conn,1,3
	if rs.Eof then
	%>
	<script type="text/javascript">
		{
		document.Write("You have logged in as a normal user.")
		}
	</script>
	<%
	else
	%>
	
	<script type="text/javascript">
		{
		alert("Welcome to you your majesty!")
		document.Write("You have logged in as an administrator.")
		}
	</script>

	<%
	end if

	set recset=server.createobject("adodb.recordset")
	sql2="select * from a1 where user_name='"&username&"' and user_pw='"&password&"'"
	recset.open sql2,conn,1,3
	if recset.Eof then
	%>

	<script type="text/javascript">
		{
			alert("No current user has been found! Or your password is incorrect!")
			window.location.href = "index.asp"
		}
	</script>

	<%
	else
	session("username")=username
	session("index")=recset("index")
	response.write("Welcome, ")
	response.write(session("username"))
	end if
	%>
</body>
</html>