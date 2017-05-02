<%-- 
    Document   : unregister
    Created on : Feb 29, 2016, 6:12:18 PM
    Author     : sachin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>unregister</title>
        <link rel="stylesheet" type="text/css" href="login.css"/>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="logindiv" align="center">
            <h2 align="center" style="font-weight: 400; font-size: 30px; margin-top: 0px;margin-bottom: 10px">Enter Email address to Unregister</h2>
                    <form action="login_servlet" method="post">
                        <input type="email" name="email" placeholder="Email Address"/>
                        <input type="submit" value="Unregister"/><br/>
                    </form>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
