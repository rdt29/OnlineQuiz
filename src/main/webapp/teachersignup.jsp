<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Teacher Signup</title>
        <link rel="stylesheet" href="teachersignup.css">
    </head>

    <body>
     
        
    <jsp:include page="header.html"></jsp:include>
  

        <section class="Login">

            <h2>Teacher Registation</h2>
            <form action="t_signup.jsp" method="POST">
                Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name" id="" required> <br><br>
                Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="email" name="email" id="" required> <br><br>
                Password &nbsp;<input type="password" name="password" id="" required>
                <br><br>
                
                <label for="u">UserId is same as Email id :</label>
                <input type="checkbox" name="Uid" id="u" required>
                <br><br>
                <input type="submit" Value="Register" id="">
                
                <br> <input type="reset" value="reset form">
            </form>
            <button class="back">
                <a href="index.html">Back</a>
            </button>
        </section>
         
       
        
        
        
       


    </body>

    </html>