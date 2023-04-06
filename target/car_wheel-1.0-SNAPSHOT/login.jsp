<%-- 
    Document   : login
    Created on : 11-Mar-2023, 7:30:41 PM
    Author     : HYPER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User login</title>
        <%@include  file="comp/cssl.jsp" %>

    </head>
    <body>
        <%@include file="comp/demonvbar.jsp" %>
        
        <!-- //////////////////////////////// -->

        <div class="wheel-start3">
            <img src="images/bg7.jpg" alt="" class="wheel-img">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 padd-lr0">
                        <div class="wheel-start3-body clearfix marg-lg-t200 marg-lg-b0 marg-sm-t10 marg-xs-b30">
                            <h3>Register</h3>
                            <ol class="breadcrumb">

                                <li class="active">Register</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ////////////////////Validation from alert message/////////////// -->


        <!-- /////////////////////////////////// -->
        <div class="wheel-register-block">
            <div class="container">
                <div class="row">
                    <!-- ////////////////////Validation from alert message/////////////// -->
                    <div class="marg-lg-t50 marg-lg-b10 alert "  id="validationMessages" role="alert"></div>
                  
                    
                    <!-- ////////////login-form/////////////////////// -->
                    <div class="col-md-5 padd-5">

                        <div class="wheel-register-log marg-lg-t10 marg-lg-b50 marg-sm-t100 marg-sm-b100">

                            <div class="wheel-header">
                                <h5>Have an account? Log In</h5>
                            </div>
                            <form action="loggin" method="post" id="login-form">
                                <label for="userName" class="fa fa-user">
                                    <input type="text" id="userName" name="username" required="required" placeholder='Username'>
                                </label>
                                <label for="userPass" class="fa fa-lock">
                                    <input type="password" id='userPass' required="required" name="password" placeholder='Passsword'>
                                </label>
                                <button type="submit" class="wheel-btn">Login Now</button>
                            </form>
                        </div>
                    </div>
                    
                    
                    
                    
                    <!<!-- register form  -->
                    <div class="col-md-7 padd-r0">
                        <div class="wheel-register-sign marg-lg-t10 marg-lg-b150 marg-sm-t100 marg-sm-b100">
                            <div class="wheel-header">
                                <h5>Sign up Now </h5>
                                <h3>Get <span>Registered</span></h3>
                            </div>

                            <form method="post" action="register" id="register-form" >
                                <input type="text" id="fn" name="name_n" placeholder="Enter Name">
                                <input type="text" id="un" name="user_n"  placeholder="Enter Username">
                                <input type="email" id="em" name="email_n" placeholder="Enter Email">
                                <input type="text" id="phn" name="phone_n" placeholder="Enter Phone">
                                <input type="password" id="fpass" name="pass_n" placeholder="Enter Password">
                                <input type="password" id="confpass" placeholder="Confirm Password">
                                <label for="input-val1">
                                    <input onclick=" return validateForm()" required="required" type="checkbox" id='input-val1'> <span>I agree with the </span>
                                    <a href="#">Terms and Conditions</a>
                                </label>
                                <button type="submit"  class="wheel-btn" >Sign Up</button>
                            </form>

                        </div>
                    </div>
                </div>



            </div>

        </div>
        <%@include file="comp/footer.jsp" %>
        <%@include file="comp/jsl.jsp" %>
    </body>
</html>
