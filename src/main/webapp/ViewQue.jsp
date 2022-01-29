<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Question details</title>

<style>
.welcome
{  padding: .2cm;
    background: #000;
    top: 2.3cm;
    right: 1cm;
    position: absolute;
    float: right;
    color: white;
    font-size:medium;
    font-weight: bold;
    font-style: italic;
    font-family: Arial, Helvetica, sans-serif;
}

.welcomeemail
{
	color:red;
	display:inline;
}
</style>
</head>
<body>
	<jsp:include page="header.html"></jsp:include>
	<%@page import = "abc.Question"%>
	<%@page import = "abc.ConDao"%>
	
	<%@page import = "java.util.List"%>
	<%@page import = "java.util.ArrayList"%>
	

<%
// sending email to view only those que inserted by particular login id
	String email = request.getParameter("email");
	
	Question i = new Question();
	i.setViewmail(email);
	 
	//out.print("welcome " + email);
	out.print("<div class='welcome'> Showing question Inserted By "+"<div class='welcomeemail'>" + email+ "</div></div>");
	
	
	//List <Question> list1 = new ArrayList<Question>();
	//list1.add(i);
	
	
	
	
	
	
out.print("<h1><center><u>Questions<center><u></h1>");
	
	List <Question> list = ConDao.Viewquebymail(i);
	
	out.print("<table border = '1' width = '100%'>");
	out.print("<tr>"
			+ "<th>Subid</th>"
			+ "<th>SubName</th>"
			+ "<th>Question</th>"
			+ "<th>option 1</th>"
			+ "<th>option 2</th>"
			+ "<th>option 3</th>"
			+ "<th>option 4</th>"
			+ "<th>Answer</th>"
			);
	
	for(Question e:list)
		
	{
		out.print("<tr>"
				+ "<td>"+e.getSubjectcode()+"</td>"
				+ "<td>"+e.getSubjectname()+"</td>"
				+ "<td>"+e.getQ1()+"</td>"
				+ "<td>"+e.getA()+"</td>"
				+ "<td>"+e.getB()+"</td>"
				+ "<td>"+e.getC()+"</td>"
				+ "<td>"+e.getD()+"</td>"
				+ "<td>"+e.getAnswer()+"</td>"
				);
		
		
	}
	out.print("</table>");
	
	out.print("<a href='index.html'>Back</a>");
	
	
	

	
	
	
%>


</body>
</html>