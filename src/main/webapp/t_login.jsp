<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%@ page import = "abc.beanclass"%>
	<%@page import = "abc.ConDao"%>
	
	  <jsp:useBean id = "u" class = "abc.beanclass"/>
		<jsp:setProperty property="*" name="u"/>
		
		<%
			int status= ConDao.Teacher_login(u);
		String name = ConDao.Teacher_login_name(u);
		
		
  		 String email = request.getParameter("email");
   	
   	


		
		if(status>0)
		{
   			Cookie ck = new Cookie ("x" , email); 
   			response.addCookie(ck);
	   

								
%>
			<jsp:forward page="TeacherDashbord.jsp">
			
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
				response.setHeader("Refresh", "0; URL=teacherlogin.jsp");
		}
		
		%>
        
		
		

</body>
</html>