<%-- 
    Document   : about
    Created on : 17-Mar-2023, 8:41:35 AM
    Author     : HYPER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="comp/meta.jsp" %>
        
        <title>JSP Page</title>
        <%@include file="comp/cssl.jsp" %>
    </head>
    <body>
        



<!-- MAIN -->
    <div class="load-wrap">
        <div class="wheel-load">
            <img src="images/loader.gif" alt="" class="image">
        </div>
    </div>
    <div class="wheel-menu-wrap ">
        <div class="container-fluid wheel-bg1">
            <div class="row">
                <div class="col-sm-3">
                    <div class="wheel-logo">
                        <a href="index.jsp"><img src="images/logo.png" alt=""></a>
                      
                    </div>
                </div>
                <div class="col-sm-9 col-xs-12 padd-lr0">
                    <div class="wheel-top-menu clearfix">
                        <div class="wheel-top-menu-info">
                            <div class="top-menu-item"><a href="contact.jsp"><i class="fa fa-phone"></i><span>
                                        1800-103-8545 </span></a></div>
                            <div class="top-menu-item"><a href="contact.jsp"><i
                                        class="fa fa-envelope"></i><span> query@drivewheel.hotmail.com</span></a>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="col-sm-9 ">
                    <div class="wheel-navigation">
                        <nav id="dl-menu">
                            <!-- class="dl-menu" -->
                            <ul class="main-menu dl-menu">
                                <li class="menu-item ">
                                    <a href="index.jsp">Home</a>
                                </li>
                                <li class="menu-item active-color ">
                                    <a href="about.jsp">About</a>
                                </li>
                                <li class="menu-item">
                                    <a href="#">Cars</a>
                                </li>
                                <li class="menu-item ">
                                    <a href="about.jsp">contact</a>
                                </li>
                                <li class="menu-item">
                                    <a href="#">Reservation</a>
                                </li>

                                <li class="menu-item ">
                                    <a href="#">News</a>
                                </li>
                            </ul>
                            <div class="nav-menu-icon"><i></i></div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
        
        <%@include file="comp/footer.jsp" %>
        <%@include file="comp/jsl.jsp" %>
    </body>
</html>
