<%-- 
    Document   : index
    Created on : Feb 21, 2016, 5:07:50 PM
    Author     : sachin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="dropdown.css"/>
        <link rel="stylesheet" type="text/css" href="modal.css"/>
        <link rel="stylesheet" type="text/css" href="table.css"/>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>        
    </head>
    <body background="background.jpg">
        <div id="main">
            <ul>
                <li><a class="fa fa-home" href="index.jsp"></a></li>
                <li class="dropdown"><a href="#" class="dropbtn">LITERATURE</a>
                    <div class="dropdown-content" align="center">
                        <img src="dropdown_pic/literature.jpg">
                        <a href="action_adventure.jsp" style="padding: 0.6em 0.6em">Action & Adventure</a>
                        <a href="#" style="padding: 0.6em 0.6em">Literary Collections</a>
                        <a href="#" style="padding: 0.6em 0.6em">Fantasy</a>
                        <a href="#" style="padding: 0.6em 0.6em">Comics & Graphic Novels</a>
                        <a href="#" style="padding: 0.6em 0.6em">Indian Writing</a>
                    </div>
                </li>                
                <li class="dropdown"><a href="#" class="dropbtn">NON FICTION</a>
                    <div class="dropdown-content" align="center">
                        <img src="dropdown_pic/nonfiction.jpg">
                        <a href="#" style="padding: 0.6em 0.6em">Autobiographies</a>
                        <a href="#" style="padding: 0.6em 0.6em">Business & Investing</a>
                        <a href="#" style="padding: 0.6em 0.6em">Health & Fitness</a>
                        <a href="#" style="padding: 0.6em 0.6em">History & Politics</a>
                        <a href="#" style="padding: 0.6em 0.6em">Self Help</a>
                    </div>
                </li>
                <li class="dropdown"><a href="#" class="dropbtn">ACADEMIC</a>
                    <div class="dropdown-content" align="center">
                        <img src="dropdown_pic/academic.jpg">
                        <a href="#" style="padding: 0.6em 0.6em">Entrance Exams</a>
                        <a href="#" style="padding: 0.6em 0.6em">School Books</a>
                        <a href="#" style="padding: 0.6em 0.6em">Engineering</a>
                        <a href="#" style="padding: 0.6em 0.6em">Medicine</a>
                        <a href="#" style="padding: 0.6em 0.6em">Commerce</a>
                    </div>
                </li>
                <li class="dropdown"><a href="#" class="dropbtn">CHILDREN & TEENS</a>
                    <div class="dropdown-content" align="center">
                        <img src="dropdown_pic/children.jpg">
                        <a href="#" style="padding: 0.6em 0.6em">Action & Adventure</a>
                        <a href="#" style="padding: 0.6em 0.6em">Fantasy</a>
                        <a href="#" style="padding: 0.6em 0.6em">Romance</a>
                        <a href="#" style="padding: 0.6em 0.6em">Knowledge & Learning</a>
                        <a href="#" style="padding: 0.6em 0.6em">Early Skill Building</a>
                    </div>
                </li>
                <li style="float:right">
                    <form action="search_servlet" method="post">
                        <input type="text" name="search" placeholder="Search . . ." class="header"/>
                    </form>
                </li>
                <li style="float:right">
                        <a class="edit-button fa fa-shopping-cart" type="button" data-toggle="modal" data-target="#shoppingcart"></a>
                </li>
                <li style="float:right"><span><a class="fa fa-sign-in" href="login_page.jsp"></a></li>
                <li style="float: right;color:white">
                    <span style="font-family:Arial;position:relative;top:12px;" onclick="openNav()">
                            ${username}
                    </span>
                </li>
            </ul>
        </div>
            <!-- side navigation -->
            
            <div id="mySidenav" class="sidenav">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">x</a>
                <form action="login_servlet" method="post" style="color:white">
                    <table style="padding-left: 20px;">
                        <h3 align="center">PERSONAL DETAILS</h3>
                        <tr>
                            <td>First Name:</td><td>${first_name}</td>
                        </tr>
                        <tr></tr><tr></tr><tr></tr><tr></tr>
                        <tr></tr><tr></tr><tr></tr><tr></tr>
                        <tr>
                            <td>Last Name:</td><td>${last_name}</td>
                        </tr>
                        <tr></tr><tr></tr><tr></tr><tr></tr>
                        <tr></tr><tr></tr><tr></tr><tr></tr>
                        <tr>
                            <td>Email ID:</td><td>${email}</td>
                        </tr>
                        <tr></tr><tr></tr><tr></tr><tr></tr>
                        <tr></tr><tr></tr><tr></tr><tr></tr>
                        <tr>
                            <td>Phone Number:</td><td>${phone_no}</td>
                        </tr>
                    </table>
                        <br/>
                        <h3 align="center" style="font-size: 30px;"><a href="editinfo.jsp">Edit Information</a></h3>
                        <br/>
                        <h3 align="center" style="font-size: 30px;"><a href="unregister.jsp">Un Register</a></h3>
                        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                        <p align="center">
                            <input type="hidden" name="loginedit" value="logout"/>
                            <input type="submit" value="Log Out" style=" color: red; background-color: white;padding: 8px 8px 8px 8px; border-radius: 10px;"/>
                        </p>
                </form>			
            </div>
                 
            <!-- Modal -->
            <div class="modal fade" id="shoppingcart" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h3 align="center">BOOK STORE : CART</h3>
                    <h4 class="modal-title" align="center">${username}</h4>
                  </div>
                  <div align="center" class="modal-body">
                    <jsp:useBean id="cart" scope="session" class="org.cart.cart_bean" />
                    <c:if test="${cart.lineItemCount == 0}">
                        Cart is currently empty
                    </c:if>
                    <form name="item" method="POST" action="cart.jsp">    
                        <table class="cart_table">
                            <tr class="cart_tr_td">
                                <th class="cart_tr_td">
                                    Book Name
                                </th>
                                <th class="cart_tr_td">
                                    ISBN
                                </th>
                                <th class="cart_tr_td">
                                    AUTHOR
                                </th>
                                <th class="cart_tr_td">
                                    QUANTITY
                                </th>
                                <th class="cart_tr_td">
                                    TOTAL COST
                                </th>
                            </tr>
                            <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter"> 
                                <tr class="cart_tr_td">
                                <td class="cart_tr_td">
                                    <c:out value="${cartItem.aa_name}"/>
                                </td>
                                <td class="cart_tr_td">
                                    <c:out value="${cartItem.aa_isbn}"/>
                                </td>
                                <td class="cart_tr_td">
                                    <c:out value="${cartItem.aa_author}"/> 
                                </td>
                                <td class="cart_tr_td">
                                    <c:out value="${cartItem.aa_quantity}"/>
                                </td>
                                <td class="cart_tr_td">
                                    $<c:out value="${cartItem.aa_totalcost}"/>
                                </td>
                            </tr>
                            </c:forEach>
                        </table>
                    </div>
                    <div class="modal-footer">
                        Total Amount: $<c:out value="${cart.getorder_total()}"/><br/><br/>
                        <input type="submit" value="proceed" style="width: 20%;background-color: #4CAF50;color: white;padding: 10px 10px;border: none;border-radius: 10px;"/>
                    </div>
                    </form>
                </div>
              </div>
            </div>         
    <br/>
    <script>
        function openNav() {
            document.getElementById("mySidenav").style.width = "350px";
            document.getElementById("main").style.marginRight = "350px";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
            document.getElementById("main").style.marginRight= "0";
            document.body.style.backgroundColor = "white";
        }
    </script>
    
    
    
    
    </body>
</html>

