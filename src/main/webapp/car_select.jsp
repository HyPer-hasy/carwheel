


<%@page import="java.sql.*"%>


<!<!doctype html>
<html>
    <head>
        <%@include file="comp/meta.jsp" %>
        
        <%@include file="comp/cssl.jsp" %>
        <title>Drive-Wheel</title>
    </head>
    <body>
        <%@include file="comp/name.jsp" %>



<!-- MAIN nav-bar -->
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
                                        class="fa fa-envelope"></i><span> query@drive-wheel.hotmail.com</span></a>
                            </div>
                        </div>
                        <div class="wheel-top-menu-log">
                            <div class="top-menu-item">
                                <div class="dropdown wheel-user-ico ">
                                    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown"
                                        aria-haspopup="true" aria-expanded="true">
                                         
                                        <%= n%>
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="login.jsp">Logout</a></li>
                                         
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-9 ">
                    <div class="wheel-navigation">
                        <nav id="dl-menu">
                            <!-- class="dl-menu" -->
                            
                            
                            <ul class="main-menu dl-menu">
                                <li class="menu-item  ">
                                    <a href="index.jsp">Home</a>
                                </li>
                                <li class="menu-item ">
                                    <a href="about.jsp">About</a>
                                </li>
                                <li class="menu-item active-color">
                                    <a href="car_select.jsp">Cars</a>
                                </li>
                                <li class="menu-item ">
                                    <a href="contact.jsp">contact</a>
                                </li>
                                <li class="menu-item">
                                    <a href="reservation.jsp">Reservation</a>
                                </li>

                            </ul>
                            <div class="nav-menu-icon"><i></i></div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
                                         
     <!-- main body header code --> 
     
     <!--  1 upper banner with image and some text  --> 
     
     <div class="wheel-start3">
        <img src="images/bg7.jpg" alt="" class="wheel-img">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 padd-lr0">
                    <div class="wheel-start3-body clearfix marg-lg-t255 marg-lg-b75 marg-sm-t190 marg-xs-b30">
                        <h3>Car Selection</h3>    
                    </div>
                </div>
            </div>
        </div>
    </div>
     
     
     <!-- code for step one car selection --> 
     <div class="step-wrap">
        <!-- ////////////////////////////////////////// -->
        <div class="container padd-lr0">
            <div class="row">
                <div class="col-xs-12 padd-lr0">
                    <ul class="steps">
                        <li class="title-wrap active  ">
                            <div class="title">
                                <span>1.</span>Login to your  account
                            </div>
                        </li>
                        <li class="title-wrap active ">
                            <div class="title">
                                <span>2.</span>Select your car
                            </div>
                        </li>
                        <li class="title-wrap ">
                            <div class="title">
                                <span>3.</span>Information & Reviews
                            </div>
                        </li>
                        
                    </ul>
                </div>
            </div>
        </div>
        <!-- ////////////////////////////////////////// -->
    </div>
     
       <!-- ///////////////// car selcetion template design ///////////////////////// -->
       
    <div class="prosuct-wrap">
        <div class="container padd-lr0 xs-padd">
            <div class="product-list product-list2 wheel-bgt clearfix">
                <div class="row"> 
                    
                 

                    <%
  // Establish JDBC connection
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrent", "hyper", "hyper");

  // Execute SQL query
  PreparedStatement stmt1 = conn.prepareStatement("SELECT * FROM car");
  ResultSet rs = stmt1.executeQuery();

  // Iterate over ResultSet and display data
  while (rs.next()) {
%>
  <!-- 1 car show  -->  
                   <div class="col-xs-12">
                        <div class="product-elem-style1 product-elem-style  wheel-bg1 clearfix">
                            <div class="product-table2">
                                <div class="img-wrap img-wrap2 product-cell">
                                    <img src="<%=rs.getString("car_image")%>;" alt="img" class="img-responsive">
                                </div>
                            </div> 
                            <div class="product-table3  ">
                                <div class="text-wrap text-wrap2 product-cell">
                                    <div class="title"> <%=rs.getString("car_name")%></div> (<span><%=rs.getString("car_type")%></span>)
                                    <div class="price-wrap product-cell"> 
                                        <span>&#x20B9;<%=rs.getString("car_price")%></SPAN>/Day
                                    </div> 
                                     <ul class="metadata2 metadata ">
                                        <li><%=rs.getString("no_p")%> Seater </li>
                                        <li><%=rs.getString("no_d")%> Doors</li>
                                        <li><%=rs.getString("ac_no")%></li>
                                        <li><%=rs.getString("lug_no")%></li>
                                        <li><%=rs.getString("gear_t")%></li>
                                        <li><%=rs.getString("fuel_t")%></li>
                                    </ul>
                                     <a href="reservation.jsp?id=<%= rs.getString("car_no")%>;">
                                        <button class="btn1 ">
                                            Book 
                                        </button>
                                    </a>
                                </div>
                                <div class="img-wrap img-wrap3 product-cell">
                                    <img src="<%=rs.getString("car_image")%>;" alt="img" class="img-responsive">
                                </div>
                            </div>
                        </div>
                    </div>
                  <!-- show complete -->
<%
  }

  // Close JDBC objects
  rs.close();
  stmt1.close();
  con.close();
%>

                    
                    
                    
                    
                    
                    
                    
                  
                  
                  
                </div> 
            </div>
        </div>
    </div>
           
     
        <%@include file="comp/footer.jsp" %>
        
        <%@include file="comp/jsl.jsp" %>
    </body>
</html>
