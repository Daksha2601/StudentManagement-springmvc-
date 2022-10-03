<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%String msg=(String)request.getAttribute("msg"); %>
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
	margin-top: 100px;
	margin-left:400px;
}
legend{
	margin-left:200px;
	background-color: rgb(137, 222, 250 );
	color:black ;
	box-shadow: 0px 0px 9px 2px aqua;
}
p{
	color: red;
}
</style>
</head>
<body>
	<fieldset>
	<p><%if(msg!=null){ %>
	<%=msg %>
	<%} %></p>
		<legend>:::LOGIN:::</legend>
		<form method="post" action="./home">
		<table>
		<tr>
			<td><label>Name:</label></td>
			<td><input type="text" name="userName"> </td>
		</tr>
		<tr>
			<td><label>Password:</label></td>
			<td><input type="text" name="password"> </td>
		</tr>
		<tr>
			<td><input type="submit" value="lOGIN"></td>
		</tr>
		</table>
		</form>
	</fieldset>

</body>
</html>