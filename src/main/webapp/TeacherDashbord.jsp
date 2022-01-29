<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet" href="Teacherdashbord.css">
	</head>

	<body>

		<jsp:include page="header.html"></jsp:include>
		<% 
		
		String name=request.getParameter("name"); 
		out.print("<div class='welcome'> Welcome " + name+ "</div>");

			String email = request.getParameter("email");
			
			Cookie ck[] = request.getCookies();

			//String Cookieemail = ck[0].getValue();
			
			//out.print("welcome cookie " + ck[0].getValue());
			
			
			
			
	 
			
			
			%>

			<section class="box">
				<div class="que">
					<form action="Addque.jsp">


						<h1>
							Add Questions
						</h1>

						<div class="head">
							Subject code/Name:
						</div>
						<br>
						<input type="text" name="subjectcode" placeholder="Subject Code" required>
						<input type="text" name="subjectname" placeholder="Subject Name" required>
						<br><br>

						<div class="head">
							Question:
						</div>

						<br>
						<!-- <input type="text" name="q1" placeholder="Enter Question"> -->
						<textarea name="q1" id="" cols="30" rows="5" placeholder="Enter Question" required></textarea>

						<div class="head">
							Options
						</div>
						<br>
						<div class="options">
							Option A <input type="text" name="a" placeholder="Option 1" required> &nbsp; &nbsp; &nbsp; &nbsp;
							Option B <input type="text" name="b" placeholder="Option 2" required> &nbsp; &nbsp; &nbsp; &nbsp;
							<br><br>

							Option C <input type="text" name="c" placeholder="Option 3" required> &nbsp; &nbsp; &nbsp; &nbsp;
							Option D <input type="text" name="d" placeholder="Option 4" required> &nbsp; &nbsp; &nbsp;
							&nbsp;<br><br>

						</div>

						<div class="ans">
							Answer
						</div> <br>
						<div class="ans1">
							Answer <input type="text" name="answer" placeholder="Enter Answer" required> <br> <br>

						</div>

						<input type="Submit" value="Add Question" id="">
						<input type="reset" value="Reset Form">

					</form>

				</div>
				
				
			</section>





			<%
out.print("<section class='box1'><button class='view'><a href='ViewQue.jsp?email="+email+"'>View Questions</a></button></section");

			
		
			
			HttpSession section = request.getSession();
			section.setAttribute("insertedby" , email);
			

			%>


	</body>

	</html>