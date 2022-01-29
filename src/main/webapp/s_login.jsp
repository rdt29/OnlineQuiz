<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Login</title>
</head>
<body>
	
	<%@ page import = "abc.beanclass"%>
	<%@page import = "abc.ConDao"%>
	
	  <jsp:useBean id = "u" class = "abc.beanclass"/>
		<jsp:setProperty property="*" name="u"/>
		
		<%
			int status= ConDao.Student_login(u);
		String name = ConDao.Student_login_name(u);
		
		if(status>0)
		{

								
%>
			<jsp:forward page="StudentDashbord.jsp">
			
			<jsp:param name = "name" value = "<%=name%>"/>
			</jsp:forward>  
				
<%

			
		}
		else 
		{
%>
			<script>
			
			  alert("Wrong Id password");
			
				</script>
	<%
				response.setHeader("Refresh", "0; URL=studentlogin.jsp");
		}
		
		%>
        
		%>
		

</body>
</html>