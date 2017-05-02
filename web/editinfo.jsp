<%-- 
    Document   : editinfo
    Created on : Feb 28, 2016, 10:27:28 PM
    Author     : sachin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit_details</title>
        <link rel="stylesheet" type="text/css" href="login.css"/>
    </head>
    <body>
        <jsp:include page="header.jsp" />
                <div class="logindiv" align="center">
                <h2 style="font-family: Arial;font-weight: 400;">
                    <h2 align="center" style="font-weight: 400; font-size: 30px; margin-top: 0px;margin-bottom: 10px">Hey ${first_name}, Edit your information here</h2>
                </h2>
                <form action="login_servlet" method="post">
                    <input type="hidden" name="loginedit" value="edit"/>
                    <input type="text" name="first_name" placeholder="${first_name}">
                    <input type="text" name="last_name" placeholder="${last_name}"><br/><br/>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            ${email}
                        </div>                    
                    </div>
                    <input type="text" name="phone_no" placeholder="${phone_no}">
                    <input type="submit" value="Register">
                </form>
            </div>    
        
        <jsp:include page="footer.jsp" />
        <h1></h1>
    </body>
</html>
