<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import = "abc.Question" %>
<%@page import = "abc.ConDao" %>



<%

	
	




	HttpSession section = request.getSession(false);
	String insertedby = (String)section.getAttribute("insertedby"); 
	
	String subjectcode = request.getParameter("subjectcode");
	String subjectname = request.getParameter("subjectname");
	String q1 = request.getParameter("q1");
	String o1 = request.getParameter("a");
	String o2 = request.getParameter("b");
	String o3 = request.getParameter("c");
	String o4 = request.getParameter("d");
	String answer = request.getParameter("answer");
	
	

	Question e = new Question();
	e.setSubjectcode(subjectcode);
	e.setSubjectname(subjectname);
	e.setQ1(q1);
	e.setA(o1);
	e.setB(o2);
	e.setC(o3);
	e.setD(o4);
	e.setAnswer(answer);
	e.setInsertby(insertedby);
	
		int i = ConDao.AddQue1(e);


				if(i>0)
				{


		%>
					<script>
					
					  alert("Question Added Sucessfully");
					
						</script>
		<%

				response.setHeader("Refresh", "0; URL=teacherlogin.jsp");
					
				}
				else 
				{
		%>
					<script>
					
					  alert("Error While Adding Question Try Again");
					
						</script>
			<%
			response.setHeader("Refresh", "0; URL=teacherlogin.jsp");
				}
				
				%>
%>
</body>
</html>