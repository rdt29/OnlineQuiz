<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Login</title>
<link rel="stylesheet" href="T_and_S_Login.css">
</head>
<body>
	<jsp:include page="header.html"></jsp:include>
    <section class="Login">

        <h2>Student Login</h2>
        <form action="s_login.jsp" method="POST">
           
            Rollno &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="rollno" id="" required> <br><br>
            Password &nbsp;<input type="password" name="password" id="" required>
            <br><br>
           
            <input type="submit" Value="Login" id="">
            
            <br> <input type="reset" value="reset form">
        </form>
        <button class="back">
            <a href="index.html">Back</a>
        </button> <br>
        
        <button class="registered">
            <a href="index.html">Not Registered?</a>
        </button>
    </section>

</body>
</html>