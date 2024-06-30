<%-- 
    Document   : login
    Created on : Mar 4, 2024, 5:24:43 PM
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Login</title>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400" rel="stylesheet" />
        <link href="css/all.min.css" rel="stylesheet" />
        <link href="css/templatemo-style.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
            <!-- Top box -->
            <!-- Logo & Site Name -->
            <div class="placeholder">
                <div class="parallax-window" data-parallax="scroll" data-image-src="img/cuahang.jpg">
                    <div class="tm-header">
                        <div class="row tm-header-inner">
                            <div class="col-md-6 col-12">
                                <img src="img/logo.jpg" alt="Logo" class="tm-site-logo" /> 
                                <div class="tm-site-text-box">
                                    <h1 class="tm-site-title">Master Chef LinhZD</h1>
                                    <h6 class="tm-site-description">Best for family in HaNoi</h6>		
                                </div>
                            </div>
                            <nav class="col-md-6 col-12 tm-nav">
                                <ul class="tm-nav-ul">
                                    <li class="tm-nav-li"><a href="${a.role == 1 && a.id!=null ? "" : "shophome"}" class="tm-nav-link  ">${a.role == 1 && a.id!=null ? "" : "Home"}</a></li>
                                    <li class="tm-nav-li"><a href="list" class="tm-nav-link">Shop</a></li>
                                    <c:set var="size" value="${sessionScope.size}"/>
                                    <li class="tm-nav-li"><a href="cart.jsp" class="tm-nav-link ">Cart  ${size}</a></li>
                                    <li class="tm-nav-li"><a href="login.jsp" class="tm-nav-link active">Login</a></li>
                                </ul>
                            </nav>	
                        </div>
                    </div>
                </div>
            </div>

            <main>
                <header class="row tm-welcome-section">
                    <h2 class="col-12 text-center tm-section-title"> Login your account</h2>                   
                </header>
                <h3 style="color: red; text-align: center">${requestScope.ms}</h3>
                <div class="tm-container-inner-2 tm-contact-section">
                    <div class="row">
                        <div class="col-md-6">
                            <form action="login" method="POST" class="tm-contact-form">
                                <h3 style="color: red">${requestScope.error}</h3>

                                <div class="form-group">
                                    <input type="text" name="name"  class="form-control" placeholder="Username" required="" />
                                </div>

                                <div class="form-group">
                                    <input type="password" name="pass"  class="form-control" placeholder="Password" required="" />
                                </div>

                                <!--					        <div class="form-group">
                                                                                  <textarea rows="5" name="message" class="form-control" placeholder="Message" required=""></textarea>
                                                                                </div>-->
                                <input type="checkbox" name="remember me" ${(cookie.crem.value!=null?'checked':'')} value="on"/> Remember me <br/>
                                <h3></h3>
                                <div class="form-group tm-d-flex">

                                    <input type="submit" class="tm-btn tm-btn-success tm-btn" value="Login">


                                </div>

                                <!--<h5.5>Haven't have account yet?</h5.5>--> 
                                <!--                                <form action="login" method="POST">
                                                                <div class="form-group tm-d-flex">
                                                                    <button type="submit" class="tm-btn tm-btn-success tm-btn-left">
                                                                        Register
                                                                    </button>
                                                                </div> -->
                            </form>
                            <!--                            <form action="register" method="POST">
                                                            <a href="register.jsp" class="tm-register">
                                                                <i>Haven't have account yet?</i>
                                                            </a>
                                                            </form>-->

                            <h3></h3>
                            <a href="register.jsp" class="tm-register">
                                <i>Haven't have account yet?</i>
                            </a>

                        </div>


                        <!-- How to change your own map point
                                1. Go to Google Maps
                                2. Click on your location point
                                3. Click "Share" and choose "Embed map" tab
                                4. Copy only URL and paste it within the src="" field below
                        -->

                        <div class="tm-container-inner-2 tm-map-section">

                            <div class="row">
                                <div class="col-6">
                                    <div class="tm-map">
                                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d232.8988338118206!2d105.82830014490078!3d20.937195656287596!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ad766da5c653%3A0x6eb082f154d19f76!2zVsSpbmggTmluaCwgVsSpbmggUXXhu7NuaCwgVGhhbmggVHLDrCwgSGFub2ksIFZpZXRuYW0!5e0!3m2!1sen!2s!4v1709554543517!5m2!1sen!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                </div>
                            </div>
                        </div>

                        </main>

                        <div class="tm-container-inner tm-featured-image">
                            <div class="row">
                                <div class="col-12">
                                    <div class="placeholder-2">
                                        <div class="parallax-window-2" data-parallax="scroll" data-image-src="img/simple-house-01.jpgz"></div>		
                                    </div>
                                </div>
                            </div>
                        </div>
                        <footer class="tm-footer">
                <div class="tm-address">
                    <h4 class="tm-info-title tm-text-success">Our Address</h4>
                    <address>
                        Somewhere in HaNoi
                    </address>
                    <a href="tel:0393314726" class="tm-contact-link">
                        <i class="fas fa-phone tm-contact-icon"></i>0393314726
                    </a>
                    <a href="mailto:nguyendinhlinh19062003@gmail.com" class="tm-contact-link">
                        <i class="fas fa-envelope tm-contact-icon"></i>nguyendinhlinh19062003@gmail.com
                    </a>
                    <div class="tm-contact-social">
                        <a href="https://www.facebook.com/linh.nguyendinh.5249" class="tm-social-link"><i class="fab fa-facebook tm-social-icon"></i></a>
                        <a href="https://www.instagram.com/ndl1906.coder/" class="tm-social-link"><i class="fab fa-instagram tm-social-icon"></i></a>
                    </div>
                </div>
            </footer>
                    </div>
                    <script src="js/jquery.min.js"></script>
                    <script src="js/parallax.min.js"></script>
                    <script>
                        $(document).ready(function () {
                            var acc = document.getElementsByClassName("accordion");
                            var i;

                            for (i = 0; i < acc.length; i++) {
                                acc[i].addEventListener("click", function () {
                                    this.classList.toggle("active");
                                    var panel = this.nextElementSibling;
                                    if (panel.style.maxHeight) {
                                        panel.style.maxHeight = null;
                                    } else {
                                        panel.style.maxHeight = panel.scrollHeight + "px";
                                    }
                                });
                            }
                        });
                    </script>



                    </body>
                    </html>
