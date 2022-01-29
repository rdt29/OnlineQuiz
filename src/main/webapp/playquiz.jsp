<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Play Quiz</title>
		<style>
			body {
				margin: 0cm;
				border: 0cm;
				//height: 20cm;
				background-image: url("bgquiz.jpg");
				background-repeat: no-repeat;
				
			}

			.welcome {
				padding: .2cm;
				background: #000;
				top: 2.1cm;
				right: 1cm;
				position: absolute;
				float: right;
				color: white;
				font-size: medium;
				font-weight: bold;
				font-style: italic;
				font-family: Arial, Helvetica, sans-serif;
			}

			.box {
				position: relative;
				padding-left: 10%;
				color: white;

				text-transform:capitalize
				


			}

			input[type="submit"] {
				width: 200px;
				    top: -1cm;
  			  position: absolute;
			}
		</style>
	</head>

	<body>
		<jsp:include page="header.html"></jsp:include>
		<% String name=request.getParameter("name"); 
		out.print("<div class='welcome'> Welcome " + name+ "</div>");
		
		
			%>
	


			<%@ page import="java.sql.*" %>

				<% Connection c=null; String subid=request.getParameter("subid"); try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					c=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_exam", "root" , "R@jdeep9981" );
					PreparedStatement p=c.prepareStatement("select * from question where subid=?"); p.setString(1,
					subid); ResultSet r=p.executeQuery(); int i=1; %>
					<div class="box">

						<form action="PlayQuiz1.jsp">
							<% while (r.next()) { out.print("Q" + i); %>
								<%=r.getString(3)%><br><br><br>
								
								<input type="radio" name="op<%=i%>" value="<%=r.getString(4)%>" id="u" required>
								<%=r.getString(4)%><br>
									
									<input type="radio" name="op<%=i%>" value="<%=r.getString(5)%>" id="u" required>
									<%=r.getString(5)%><br>
										
										<input type="radio" name="op<%=i%>" value="<%=r.getString(6)%>" id="u" required>
										<%=r.getString(6)%><br>
										
											<input type="radio" name="op<%=i%>" value="<%=r.getString(7)%>" id="u" required>
											<%=r.getString(7)%><br>

												<input type="hidden" name="a<%=i%>" value="<%=r.getString(8)%>">

												<% i++; %>
					</div>
					<hr><br><br>
					<div class="box">

						<% } %>
							<input type="hidden" name="count" value="<%=i%>">
							<input type="submit" value="submit">
								<input type="hidden" name="name" value="<%=name%>">
							</form>
					</div>

					<% } catch (Exception e) { System.out.println(e.getMessage()); } %>
	</body>

	</html>