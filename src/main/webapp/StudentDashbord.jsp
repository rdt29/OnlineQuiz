<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet" href="studentDashbord.css">
	</head>

	<body>
		<jsp:include page="header.html"></jsp:include>

		<% String name=request.getParameter("name"); 
		out.print("<div class='welcome'> Welcome " + name+ "</div>");
				
			
					
				
		%>


			<section class="box">
				<div class="box1">
					<form action="playquiz.jsp">
						<label for="subcode">Enter Subject Code</label>
						<input type="text" name="subid" id="subcode" required> <br><br>
						<input type="submit" value="Play Quiz">
						<input type="hidden" name="name" value="<%=name%>"> 
						
					</form>
				</div>
			</section>

	</body>

	</html>