<%-- 
    Document   : cart
    Created on : Mar 6, 2016, 1:20:08 AM
    Author     : sachin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="table.css"/>
        <title>my cart</title>          
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <jsp:useBean id="cart" scope="session" class="org.cart.cart_bean" />
        <h1 align="center" style="font-weight: 400;font-size: 50px;font-family: Arial;color: #990066">${first_name} ${last_name}, your Cart</h1>
            <form name="item" method="POST" action="cart_servlet">
                <table align="center" class="cart_table">
                    <tr class="cart_tr_td">
                        <th class="cart_tr_td">
                            Items
                        </th>
                        <th class="cart_tr_td">
                            Book Details
                        </th>
                        <th class="cart_tr_td">
                            Quantity
                        </th>
                        <th class="cart_tr_td">
                            Order Subtotal
                        </th>
                        <th class="cart_tr_td">
                            
                        </th>
                    </tr>
                    <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
                        <tr class="cart_tr_td">
                            <td class="cart_tr_td">
                                <h1 style="font-weight:300;font-size: 60px;">${counter.count}</h1>
                            </td>
                            <td class="cart_tr_td">
                                <p style="font-size: 26px;color:white"><c:out value="${cartItem.aa_name}"/></p>
                                <p style="color: white;font-weight:300;">ISBN:<c:out value="${cartItem.aa_isbn}"/></p>
                                <p style="color: white;font-weight:300;"><c:out value="${cartItem.aa_author}"/></p>
                                <p style="color: white;font-weight:300;">Each price:<c:out value="${cartItem.aa_price}"/></p>
                            </td>
                            <td class="cart_tr_td">
                                <input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'>
                                <input type='text' name="aa_quantity" value='<c:out value="${cartItem.aa_quantity}"/>' style="margin-bottom:10px;padding:8px 8px; width:10%;border:none;border-radius: 10px;"/> &emsp;
                                <input type="submit" name="action" value="Update" style="background-color: green;color:white;margin-bottom:10px;padding:8px 8px; width:20%;border:none;border-radius: 10px;"/>                                
                            </td>
                            <td class="cart_tr_td">
                                <h3 style="font-size: 22px;">$<c:out value="${cartItem.aa_totalcost}"/></h3>
                            </td>
                            <td class="cart_tr_td">
                                <input type="hidden" name="action" value="Delete"/>
                                <input type="submit" value="Delete Item" style="background-color: green;color:white;margin-bottom:10px;padding:8px 8px; width:80%;border:none;border-radius: 10px;"/>
                            </td>
                        </tr>                  
                    </c:forEach>                        
                </table>
                <h1 style="padding-left:76%;color: white;font-size: 30px;font-weight: 100;">Order Total: $<c:out value="${cart.getorder_total()}"/></h1>
                <br/><br/><br/><br/>
                <p align="center"><a href="checkout.jsp" style="text-decoration: none;color:white;font-size: 26px;border-radius: 20px;background-color: green;color: white;padding: 10px 10px 10px 10px">Proceed to payment</a></p>
            </form>                      
        <jsp:include page="footer.jsp"/>
    </body>
</html>
