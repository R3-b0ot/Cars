<%@page import="backend.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% User user = (User) session.getAttribute("logUser");
    if (user == null) {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>About Us</title>
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
                        <li class="active">
                            <a href="about us.jsp">About</a>
                        </li>
                        <li>
                            <a href="Contact Us.jsp">Contact</a>
                        </li>
                        <li>
                            <a href="faq.jsp">FAQ</a>
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
                            <section>
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="full slider_cont_section">
                                                <h4>About</h4>
                                                <h3>Avalon</h3>
                                            </div>
                                        </div>
                                        <div class="col-md-7">
                                            <div id="slider_main" class="carousel slide" data-ride="carousel">
                                                <!-- The slideshow -->
                                                <div class="carousel-inner">
                                                    <div class="carousel-item active">
                                                        <img src="images/slider_1.png" alt="#" />
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="images/slider_2.png" alt="#" />
                                                    </div>
                                                </div>
                                                <div class="full center">
                                                    <a class="carousel-control-prev" href="#slider_main" data-slide="prev">
                                                        <i class="fa fa-angle-left" aria-hidden="true"></i>
                                                    </a>
                                                    <a class="carousel-control-next" href="#slider_main" data-slide="next">
                                                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <!-- end header -->
                        </div>
                    </div>
                </section>
                <!-- end section -->

                <!-- section --> 
                <div id="about" class="section layout_padding">
                    <div class="container">

                        <div class="row">

                            <div class="col-lg-4 margin_top_30 col-xl-12">
                                <div class="full margin_top_30">
                                    <h3 class="main_heading _left_side margin_top_30">Avalon</h3>
                                    <p class="large">Avalon, a pre-owned luxury car dealer deals with 24 brands. Avalon started in 2019 as a benchmark model for the Pre-Used, or how we prefer to see it as, Pre-Loved Car Brand. The mission was simple, direct and drove effect - delivering a new dimension of luxury while standardising & raising platforms for the used car market in India.
                                        <br><br>
                                        Since our inception our primary aim has been our passion for delivering excellence which became our mission. YOU (our patrons) are the driving force behind our company and making sure you get the best is what we thrive on.</p>
                                </div>
                            </div>
                        </div>
                        <!-- end section -->

                        <!-- section --> 
                        <div class="section layout_padding padding_top_0 ">
                            <div class="container">

                                <div class="row">
                                    <div class="col-lg-4 margin_top_30 col-xl-12">
                                        <div class="full margin_top_30">
                                            <h3 class="main_heading _left_side margin_top_30">Our Mission</h3>
                                            <p class="large">The journey began in 2019 when Avalon was founded in New Delhi, India. Since then our mission has been to provide quality exotic cars with highly personalized care at a competitive price. Creating a new benchmark for excellence in every aspect of our business.</p>
                                                                               
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end section -->
              
                <!-- section -->
                <section id="contact" class="dark_bg_blue layout_padding cross_layout padding_top_0">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="full center">
                                    <h2 class="heading_main orange_heading">Our USPS</h2>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="full">
                                    <div class="choose_blog text_align_center">
                                        <img src="images/c1_icon.png" />
                                        <h4>7600+ Happy Customers</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="full">
                                    <div class="choose_blog text_align_center">
                                        <img src="images/c2_icon.png" />
                                        <h4>Asia's Biggest Studio</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="full">
                                    <div class="choose_blog text_align_center">
                                        <img src="images/c3_icon.png" />
                                        <h4>151 Quality Checkpoints</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- end section -->

                <!-- footer -->
                <footer>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="full">
                                    <h3>AVALON MOTORS</h3>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="full">
                                    <ul class="social_links">
                                        <li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="full">
                                    <h4 class="widget_heading">Useful Links</h4>
                                </div>
                                <div class="full f_menu">
                                    <ul>
                                        <li><a href="welcome.jsp">Home</a></li>
                                        <li><a href="about us.jsp">About</a></li>
                                        <li><a href="store.jsp">Our Cars</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="full">
                                    <h4 class="widget_heading">Contact Details</h4>
                                    <div class="full cont_footer">
                                        <p><strong>AVALON Car : Address</strong><br><br>Mumbai 400 002, INDIA<br>Phone: +91 (766) 815 2456<br>avaloncontact2@gmail.com</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- end footer -->

                <!-- copyright -->

                <div class="cpy_right">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="full">
                                    <p>Designed by Abhishek Jain</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- right copyright -->

            </div>
        </div>

        <div class="overlay"></div>

        <!-- Javascript files-->
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

        <script>
            // This example adds a marker to indicate the position of Bondi Beach in Sydney,
            // Australia.
            function initMap() {
                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 11,
                    center: {lat: 40.645037, lng: -73.880224},
                });

                var image = 'images/location_point.png';
                var beachMarker = new google.maps.Marker({
                    position: {lat: 40.645037, lng: -73.880224},
                    map: map,
                    icon: image
                });
            }
        </script>
        <!-- google map js -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap"></script>
        <!-- end google map js -->
    </body>
</html>
