<%@page import="com.Daksha.springmvc.DTO.StudentDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="NavBar.jsp"></jsp:include>
 <%
 StudentDTO student=(StudentDTO)request.getAttribute("student");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
form {
	margin-top: 10px;
}
form table {
	margin: auto;
	width: 100%;
}
tr {
	text-align: center;
}
fieldset table {
	margin: auto;
	text-align: left;
}
fieldset {
	margin: 15px 520px;
	text-align: center;
}
legend {
	color: white;
	background-color: #333;
}
body {
	background-image:
		url('https://static.vecteezy.com/system/resources/thumbnails/007/494/113/small/futuristic-technology-background-electronic-motherboard-communication-and-engineering-concept-vector.jpg');
	background-size: 100%;
}
h2{
	margin-left:550px;
	color:white;
}
</style>
</head>
<body>
	<%
	if(student!=null){
	%>
	<h2>
			Welcome ,
			<%=student.getName() %></h2>
	<%
	}
	%>
</body>
</html>