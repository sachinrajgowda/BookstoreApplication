<%-- 
    Document   : register
    Created on : Feb 22, 2016, 7:43:32 PM
    Author     : sachin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="login.css"/>
        <title>register page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="logindiv" align="center">
                <h2 style="font-family: Arial;font-weight: 400;">
                    <h2 style="font-weight: 400; font-size: 30px;float: left; margin-top: 0px;margin-bottom: 10px">Create New Account |</h2>
                    <a href="login_page.jsp" class="logina">Sign In</a>
                </h2>
               
                <form action="register_servlet" method="post">
                    <input type="text" name="first_name" placeholder="First Name" required/>
                    <input type="text" name="last_name" placeholder="Last Name" required/>
                    <input type="email" name="email" placeholder="Email Address" required/>
                    <input type="text" name="phone_no" placeholder="Phone Number" required/>
                    <input type="password" name="password" placeholder="Password" required/>
                    <input type="submit" value="Register">
                </form>
        </div>          
        <jsp:include page="footer.jsp"/>
    </body>
</html>
