<%@page import="com.Daksha.springmvc.DTO.StudentDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% List<StudentDTO> students=(List<StudentDTO>) request.getAttribute("students"); %>
    <%String msg=(String)request.getAttribute("msg"); %>
    <%!int i; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Remove Student</title>
<style type="text/css">
fieldset {
	margin: 15px 520px;
	text-align: center;
}
legend {
	color: black;
	background-color: rgb(137, 222, 250);
	box-shadow: 0px 0px 9px 2px aqua;
}
body {
	background-image:
		url('https://static.vecteezy.com/system/resources/thumbnails/007/494/113/small/futuristic-technology-background-electronic-motherboard-communication-and-engineering-concept-vector.jpg');
	background-size: 100%;
	color:white;
}
</style>
</head>
<body>
	<fieldset>
		<legend>:::Remove Student:::</legend>
		<form method="post" action="./removeStudent">
		<table>
		<tr>
			<td><label>Enter Student Id</label></td>
			<td><input type="text" name="id"> </td>
		</tr>
		<tr>
			<td><input type="submit" value="Remove"> </td>
		</tr>
		</table>
		</form>
	</fieldset>
	
<%if(msg!=null){ %>
	<h3><%=msg %></h3>
<%} %>
<%
if(students!=null){ 
%>
<table>
	<tr>
		<td>ID &nbsp; </td>
		<td>NAME &nbsp;</td>
		<td>EMAIL</td>
	</tr>
	<%
		for(i=0;i<students.size();i++){
	%>
	<tr>
		<td><%=students.get(i).getId() %></td>
		<td><%=students.get(i).getName() %></td>
		<td><%=students.get(i).getEmail() %></td>>
	</tr>
	<%} %>
</table>
<%} %>
</body>
</html>