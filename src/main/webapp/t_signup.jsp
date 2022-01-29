<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

  
        <%@page import ="abc.beanclass" %>
        <%@page import= "abc.ConDao"%>
        
       <jsp:useBean id = "u" class = "abc.beanclass"/>
		<jsp:setProperty property="*" name="u"/>
		<%
			int i = ConDao.Add_Teacher(u);
		
		if(i>0)
		{


%>
			<script>
			
			  alert("Sucessfully");
			
				</script>
<%
				response.setHeader("Refresh", "0; URL=index.html");

			
		}
		else 
		{
%>
			<script>
			
			  alert("Fail");
			
				</script>
	<%
	response.setHeader("Refresh", "0; URL=index.html");
		}
		
		%>
        
</body>
</html>