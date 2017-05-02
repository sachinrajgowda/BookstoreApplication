<%-- 
    Document   : login_page
    Created on : Feb 22, 2016, 3:08:34 PM
    Author     : sachin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="login.css"/>
        
        <title>login page</title>
    </head>
        <body>
            <jsp:include page="header.jsp"/>
            <div class="logindiv" align="center">
                <h2 style="font-family: Arial;font-weight: 400;">
                    <h2 style="font-weight: 400; font-size: 30px;float: left; margin-top: 0px;margin-bottom: 10px">Sign In |</h2>
                    <a href="register.jsp" class="logina">Create New Account</a>
                </h2>
                    <form action="login_servlet" method="post">
                        <input type="hidden" name="loginedit" value="login"/>
                        <input type="email" name="email" placeholder="Email Address"/>
                        <input type="password" name="password" placeholder="Password"/>
                        <input type="submit" value="Submit"/><br/>
                        <span style="color:red;font-family:Arial;">${errMsg}</span>
                    </form>
            </div>
            <jsp:include page="footer.jsp"/>
        </body>
</html>
