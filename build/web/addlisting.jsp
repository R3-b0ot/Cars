<%-- 
    Document   : Contact Us
    Created on : 26 Jan, 2022, 3:49:54 PM
    Author     : jaina
--%>
<%@page import="backend.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% User user = (User) session.getAttribute("logUser");
    if (user == null) {
        response.sendRedirect("index.jsp");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>Add Car</title>
        <meta name="keywords" content="Cars">
        <meta name="description" content="">
        <meta name="author" content="Abhishek Jain">
        <!-- bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style2.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- favicon -->
        <link rel="icon" href="" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- awesome fontfamily -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Tweaks for older IEs-->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    </head>
    <body class="main-layout">
        <div class="wrapper">

            <div class="sidebar">
                <!-- Sidebar  -->
                <nav id="sidebar">

                    <div id="dismiss">
                        <i class="fa fa-arrow-left"></i>
                    </div>

                    <ul class="list-unstyled components">

                        <li>
                            <a href="welcome.jsp">Home</a>
                        </li>
                        <li>
                            <a href="about us.jsp">About</a>
                        </li>
                        <li>
                            <a href="Contact Us.jsp">Contact</a>
                        </li>
                        <li>
                            <a href="LogoutServlet">Log Out</a>
                        </li>
                    </ul>

                </nav>
            </div>


            <div id="content">


                <!-- section -->
                <section id="home" class="top_section">
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- header -->
                            <header>
                                <!-- header inner -->
                                <div class="container">
                                    <div class="row">
                                        <div class="col-lg-3 logo_section">
                                            <div class="full">
                                                <div class="center-desk">
                                                    <div class="logo"> <a href="welcome.jsp"><img src="images/logo.png" alt="#"></a> </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-9">
                                            <div class="right_header_info">
                                                <ul>
                                                    <li><img style="margin-right: 15px;" src="images/phone_icon.png" alt="#" /><a href="tel:917668152456">7668152456</a></li>
                                                    <li><img style="margin-right: 15px;" src="images/mail_icon.png" alt="#" /><a href="mailto:avaloncontact2@gmail.com">Email Us!</a></li>
                                                    <li>
                                                        <button type="button" id="sidebarCollapse">
                                                            <img src="images/menu_icon.png" alt="#" />
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end header inner -->
                            </header>
                            <div class="col-md-6">
                                <div class="full">
                                    <div class="contact_form">
                                        <form action="AddListingServlet" method="post" enctype = "multipart/form-data">
                                            <fieldset class="row">
                                                <div class="col-md-12">
                                                    <div class="full field">
                                                        <input type="text" placeholder="Vehicle Name" name="name" />
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="full field">
                                                        <input type="text" placeholder="Total Miles" name="miles" />
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="full field">
                                                        <input type="text" placeholder="Vehicle Type" name="type" />
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="full field">
                                                        <textarea placeholder="About Car" name="about"></textarea>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="full field">
                                                        <input type="text" placeholder="Price" name="price" />
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="full field">
                                                        <input type="text" placeholder="MRP Price" name="mrp_price" />
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="full center">
                                                        <input type="radio" value="<%= user.getEmail()%>" name="email" checked> <label for="email"> Add Car as: <%= user.getEmail()%></label>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="full center">
                                                        <label>Attach Product Image</label> <input type="file" name="uploadLogo" required/>
                                                    </div>
                                                </div>  
                                                <div class="col-md-12">
                                                    <div class="full center">
                                                        <input type="submit" name="submit" value="Sell Car" id="send-message" style="clear: both;">
                                                    </div>
                                                </div>


                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>

        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <!-- Scrollbar Js Files -->
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js/custom.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#sidebar").mCustomScrollbar({
                    theme: "minimal"
                });

                $('#dismiss, .overlay').on('click', function () {
                    $('#sidebar').removeClass('active');
                    $('.overlay').removeClass('active');
                });

                $('#sidebarCollapse').on('click', function () {
                    $('#sidebar').addClass('active');
                    $('.overlay').addClass('active');
                    $('.collapse.in').toggleClass('in');
                    $('a[aria-expanded=true]').attr('aria-expanded', 'false');
                });
            });
        </script>
    </body>
</html>
