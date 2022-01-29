<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
			body {
				margin: 0cm;
				border: 0cm;
				//height: 20cm;
				//background-image: url("celebration.jpg");
				background-repeat: no-repeat;
				background-size: 100%;
			}
			h1
			{
			color:Black;
			}
				h4
			{
			color:Black;
			}
		</style>
</head>
<body>

<jsp:include page="header.html"></jsp:include>
<%

String name=request.getParameter("name"); 
out.print("<div class='welcome'> Welcome " + name+ "</div>");


int count1=0;
String noofquestions= request.getParameter("count");
int noq= Integer.parseInt(noofquestions);
noq=noq-1; //4
for(int i=1; i<=noq;i++ )
{
	String op= request.getParameter("op"+i);
	String ans= request.getParameter("a"+i);
	
	if(op.equals(ans))
	{
		count1=count1+1;
	}
	
}
out.print("<h1>congrats "+name+" you have scored "+count1 +" out of "+ noq+ "</h1>");
out.print("<h4>Redirecting to Main page in 10 second.....</h4>");

response.setHeader("Refresh", "10; URL=studentlogin.jsp");


%>
</body>
</html>
</body>
</html>