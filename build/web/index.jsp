<%-- 
    Document   : index
    Created on : Feb 21, 2016, 5:07:50 PM
    Author     : sachin
--%>

<%@page contentType="text/HTML" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="modal.css"/>
    </head>
    
    <body>
        <jsp:include page="header.jsp"/>
        <h1 align="center" style="font-weight: 400;font-size: 50px;font-family: Arial;color: #990066">WELCOME TO BOOK STORE</h1>
        <table align="center">     
            <tr>
                <th><br/>Bestsellers in Literature & Fiction</th>
                <th><pre>           </pre></th>
                <th><br/>Bestsellers in Literature & Fiction</th>
            </tr>  
            
            <tr>
                <td style="width: 500px">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel" align="center">
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="best_seller_literature/best_seller_1.jpg" width="146" height="260">
                            </div>
                            <div class="item">
                                <img src="best_seller_literature/best_seller_2.jpg" >
                            </div>
                            <div class="item">
                                <img src="best_seller_literature/best_seller_3.jpg" >
                            </div>
                            <div class="item">
                                <img src="best_seller_literature/best_seller_4.jpg" >
                            </div>
                            <div class="item">
                                <img src="best_seller_literature/best_seller_5.jpg" >
                            </div>
                            <div class="item">
                                <img src="best_seller_literature/best_seller_6.jpg" >
                            </div>
                        </div>
                        <!-- Left and right controls style="width: 50px;height: 50px;left:200px;top:250px" style="width: 50px;height: 50px;right:200px;top:250px"-->
                        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only"><</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next" >
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">></span>
                        </a>
                    </div>
                </td>
                <td>
                    <pre>           </pre>
                </td>
                <td style="width: 500px">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel" align="center">
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="best_seller_adventure/a_1.jpg">
                        </div>
                        <div class="item">
                            <img src="best_seller_adventure/a_2.jpg">
                        </div>
                        <div class="item">
                            <img src="best_seller_adventure/a_3.jpg">
                        </div>
                        <div class="item">
                            <img src="best_seller_adventure/a_4.jpg">
                        </div>
                        <div class="item">
                            <img src="best_seller_adventure/a_5.jpg">
                        </div>
                        <div class="item">
                            <img src="best_seller_adventure/a_6.jpg">
                        </div>
                    </div>
                        <!-- Left and right controls style="width: 50px;height: 50px;left:200px;top:250px" style="width: 50px;height: 50px;right:200px;top:250px"-->
                        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only"><</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next" >
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">></span>
                        </a>
                    </div>
                </td>          
            </tr>
            <tr><pre>               </pre></tr>
            <tr>
                <th><br/>Bestsellers in Nepal</th>
                <th><pre>           </pre></th>
                <th><br/>Bestsellers in Child Abuse</th>
            </tr>
            <tr>
                <td style="width: 500px">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel" align="center">
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="best_seller_nepal/n_1.jpg">
                            </div>
                            <div class="item">
                                <img src="best_seller_nepal/n_2.jpg">
                            </div>
                            <div class="item">
                                <img src="best_seller_nepal/n_3.jpg">
                            </div>
                            <div class="item">
                                <img src="best_seller_nepal/n_4.jpg">
                            </div>
                            <div class="item">
                                <img src="best_seller_nepal/n_5.jpg">
                            </div>
                            <div class="item">
                                <img src="best_seller_nepal/n_6.jpg">
                            </div>
                        </div>
                            <!-- Left and right controls style="width: 50px;height: 50px;left:200px;top:250px" style="width: 50px;height: 50px;right:200px;top:250px"-->
                            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only"><</span>
                            </a>
                            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next" >
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">></span>
                            </a>
                    </div>
                </td>
                <td><pre>           </pre></td>
                <td style="width: 500px">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel" align="center">
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="best_seller_child_abuse/c_1.jpg">
                        </div>
                        <div class="item">
                            <img src="best_seller_child_abuse/c_2.jpg">
                        </div>
                        <div class="item">
                            <img src="best_seller_child_abuse/c_3.jpg">
                        </div>
                        <div class="item">
                            <img src="best_seller_child_abuse/c_4.jpg">
                        </div>
                        <div class="item">
                            <img src="best_seller_child_abuse/c_5.jpg">
                        </div>
                        <div class="item">
                            <img src="best_seller_child_abuse/c_6.jpg">
                        </div>
                    </div>
                    <!-- Left and right controls style="width: 50px;height: 50px;left:200px;top:250px" style="width: 50px;height: 50px;right:200px;top:250px"-->
                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only"><</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next" >
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">></span>
                    </a>
                </div>
                </td>
            </tr>
        </table>
        <jsp:include page="footer.jsp"/>
    </body>
</html>

