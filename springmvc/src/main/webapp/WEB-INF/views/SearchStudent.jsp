<%@page import="com.Daksha.springmvc.DTO.StudentDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
List<StudentDTO> students=(List<StudentDTO>) request.getAttribute("students");
String msg=(String)request.getAttribute("msg"); 
StudentDTO student =(StudentDTO)request.getAttribute("student");
%>
<%!int i; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Student</title>
<style type="text/css">
body {
	background-image:
		url('https://static.vecteezy.com/system/resources/thumbnails/007/494/113/small/futuristic-technology-background-electronic-motherboard-communication-and-engineering-concept-vector.jpg');
	background-size: 100%;
	color:white;
}
fieldset{
	width: 500px;
	margin-top: 100px;
	margin-left:400px;
}
legend{
	margin-left:200px;
	background-color: rgb(137, 222, 250);
	box-shadow: 0px 0px 9px 2px aqua;
}
</style>
</head>
<body>
	<%
	if (student != null) {
	%>
	<fieldset>
		<legend>:::Searched Student Details :::</legend>
		<form method="post" action="./searchStudentData">
			<table>
				<tr>
					<td><label>ID -></label></td>
					<td><%=student.getId()%></td>
				</tr>
				<tr>
					<td><label>Name -></label></td>
					<td><%=student.getName()%></td>
				</tr>
				<tr>
					<td><label>Email -></label></td>
					<td><%=student.getEmail()%></td>
				</tr>
				<tr>
					<td><label>UserName -></label></td>
					<td><%=student.getUserName()%></td>
				</tr>
				<tr>
					<td><label>Password -></label></td>
					<td><%=student.getPassword()%></td>
				</tr>
			</table>

		</form>
	</fieldset>
	<%
	} else {
	%>
	<fieldset>
		<legend>:::Select Student to Search:::</legend>
		<form method="post" action="./searchStudent">
			<table>
				<tr>
					<td><label>Enter Student ID</label></td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Search"></td>
				</tr>
			</table>
		</form>
	</fieldset>
	<%
	if (msg != null) {
	%>
	<h3><%=msg%></h3>
	<%
	}
	%>
	<%
	if (students != null) {
	%>
	<table style="width: 100%;">
		<tr>
			<td><h3>ID</h3></td>
			<td><h3>Name</h3></td>
			<td><h3>Email</h3></td>
			<td><h3>UserName</h3></td>
			<td><h3>Password</h3></td>
		</tr>
		<%
		for (i = 0; i < students.size(); i++) {
		%>
		<tr>
			<td><%=students.get(i).getId()%></td>
			<td><%=students.get(i).getName()%></td>
			<td><%=students.get(i).getEmail()%></td>
			<td><%=students.get(i).getUserName()%></td>
			<td><%=students.get(i).getPassword()%></td>
		</tr>

		<%
		}
		%>

	</table>

	<%
	}
	%>
	<%
	}
	%>
</body>
</html>