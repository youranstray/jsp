<%@ page import="hello.NameHandler"%>
<jsp:useBean id='mybean' scope='page' class='hello.NameHandler'>
<jsp:setProperty name='mybean' property='*'>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Hello, User</title>
	<link rel="stylesheet" href="">
</head>
<body>
	<%@ include file='dukebanner.html'%>
		<table border="0" width="700"> 

			<tr>
				<td width="150"> &nbsp; </td>
				<td width="550">
					<h1>My name is Duke. What's yours?</h1>
				</td>
			</tr> 
			<tr>
				<td width="150"> &nbsp; </td>
				<td width="550"> 
					<form method="get"> 
						<input type="text" name="username" size="25"> 
						<br>
						<input type="submit" value="Submit">
						<input type="reset" value="Reset">
					</form> 
				</td>
			</tr> 
		</table>
		<%
			if(request.getParameter('username') != null)
			{
		%>
		<%@ include file='request.jsp%' %>
		<%
			}
		%>
</body>
</html>