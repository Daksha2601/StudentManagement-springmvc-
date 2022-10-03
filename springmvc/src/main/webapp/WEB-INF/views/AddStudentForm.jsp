<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
String name=request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	background-image:
		url('https://static.vecteezy.com/system/resources/thumbnails/007/494/113/small/futuristic-technology-background-electronic-motherboard-communication-and-engineering-concept-vector.jpg');
	background-size: 100%;
}
fieldset{
	width: 500px;
	margin: 0px;
	margin-left:390px;
	margin-top: 100px;
}
legend{
	margin-left:180px;
	background-color: rgb(137, 222, 250 );
	box-shadow: 0px 0px 9px 2px aqua;
}

</style>
</head>
<body>
	<fieldset>
		<legend>:::Insert Student Details:::</legend>
		<form method="post" action="./addStudent">
		<table>
		<tr>
			<td><label>ID</label></td>
			<td><input type="text" name="id"> </td>
		</tr>
		<tr>
			<td><label>Name</label></td>
			<td><input type="text" name="name"> </td>
		</tr>
		<tr>
			<td><label>Email</label></td>
			<td><input type="text" name="email"> </td>
		</tr>
		<tr>
			<td><label>UserName</label></td>
			<td><input type="text" name="userName"> </td>
		</tr>
		<tr>
			<td><label>Password</label></td>
			<td><input type="text" name="password"> </td>
		</tr>
		<tr>
			<td><input type="submit" value="Add Student"> </td>
		</tr>
		</table>
		</form>
	</fieldset>
<%if(name!=null){ %>
<h3>Successfully added <%= name %>  in the Database.</h3>
<%} %>
</body>
</html>