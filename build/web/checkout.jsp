<%-- 
    Document   : checkout
    Created on : Mar 7, 2016, 10:30:53 PM
    Author     : sachin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check out</title>
        <link rel="stylesheet" type="text/css" href="login.css"/>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="logindiv" align="center" >
                    <h2 style="font-weight: 400;font-family: Arial; font-size: 40px;margin-top: 30px;margin-bottom: 30px">Total Amount:$ ${cart.getorder_total()}</h2>
                    <form action="#"  method="post" ENCTYPE="text/plain">
                    <input type="text" name="credit_card_no" placeholder="Enter Credit card number"/>
                    <input type="text" name="card_name" placeholder="Enter Card Name"/>
                    <input type="text" name="cvv" placeholder="enter CVV Number"/>
                    <input type="email" name="email" placeholder="Enter email address"/>
                    <select style="width:20%;">
                        <option value="month">month</option>
                        <option value="01">01</option>
                        <option value="02">02</option>
                        <option value="03">03</option>
                        <option value="04">04</option>
                        <option value="05">05</option>
                        <option value="06">06</option>
                        <option value="07">07</option>
                        <option value="08">08</option>
                        <option value="09">09</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                    </select>
                    &emsp;
                    <select style="width:20%;">
                        <option value="year">year</option>
                        <option value="2010">2010</option>
                        <option value="2011">2011</option>
                        <option value="2012">2012</option>
                        <option value="2013">2013</option>
                        <option value="2014">2014</option>
                        <option value="2015">2015</option>
                    </select>
                    <br/><br/>
                    <input style="width: 20%;font-size: 25px;float: left;margin-left: 150px;" type="submit" value="Submit">
                </form>
                    <form action="cart.jsp" method="post">
                        <input style="width: 20%;font-size: 25px;" type="submit" value="Back">&emsp;
                    </form>
        </div>          
        <jsp:include page="footer.jsp"/>
    </body>
</html>
