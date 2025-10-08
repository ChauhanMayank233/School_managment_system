<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userhome.aspx.cs" Inherits="School_managment_system.Userhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="TemplateMo">
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <title>Education Meeting HTML5 Template</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/lightbox.css">
        <!--

TemplateMo 569 Edu Meeting

https://templatemo.com/tm-569-edu-meeting

-->
    </head>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>

        <!-- ***** Header Area Start ***** -->
        <header class="header-area header-sticky">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="main-nav">
                            <!-- ***** Logo Start ***** -->
                            <a href="index.html" class="logo">Unity Public School</a>
                            <!-- ***** Logo End ***** -->
                            <!-- ***** Menu Start ***** -->
                            <ul class="nav">
                                <li class="scroll-to-section"><a href="Userhome.aspx" class="active">Home</a></li>
                                <li><a href="About.aspx">About</a></li>
                                <li><a href="admission.aspx">Admission</a></li>
                                
                                <li>
                                    <a href="javascript:void(0)">Gallary</a>
                                  <%--  <ul class="sub-menu">
                                        <li><a href="Userhome.aspx">Photo Gallary</a></li>
                                        <li><a href="Userhome.aspx"> Video Gallary</a></li>

                                    </ul>--%>
                                </li>


                                <li class="has-sub">
                                    <a href="javascript:void(0)">Facilities</a>
                                    <ul class="sub-menu">
                                        <li><a href="Userhome.aspx">sports</a></li>
                                       <%-- <li><a href="Userhome.aspx">Library</a></li>--%>
                                        <li><a href="Userhome.aspx">smart Class Rooms</a></li>

                                        <li><a href="Userhome.aspx">Computer lab</a></li>

                                        <li><a href="Userhome.aspx">Transpotation</a></li>

                                    </ul>
                                </li>

                                <li><a href="Course.aspx">Course</a></li>
                                <li><a href="Contact.aspx">Contact Us</a></li>

                            </ul>
                            <a class='menu-trigger'>
                                <span>Menu</span>
                            </a>
                            <!-- ***** Menu End ***** -->
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <section class="section main-banner" id="top" data-section="section1">
            <video autoplay muted loop id="bg-video">
                <source src="assets/images/course-video.mp4" type="video/mp4" />
            </video>

            <div class="video-overlay header-text">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="caption">
                                <h6>Hello Students</h6>
                                <h2>Welcome to Education</h2>
                                <p>This is an edu meeting HTML CSS template provided by <a rel="nofollow" href="https://templatemo.com/page/1" target="_blank">TemplateMo website</a>. This is a Bootstrap v5.1.3 layout. The video background is taken from Pexels website, a group of young people by <a rel="nofollow" href="https://www.pexels.com/@pressmaster" target="_blank">Pressmaster</a>.</p>
                                <div class="main-button-red">
                                    <div class="scroll-to-section"><a href="#contact">Join Us Now!</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Main Banner Area End ***** -->

        <section class="services">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="owl-service-item owl-carousel">

                            <div class="item">
                                <div class="icon">
                                    <img src="assets/images/service-icon-01.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>Best Education</h4>
                                    <p>Suspendisse tempor mauris a sem elementum bibendum. Praesent facilisis massa non vestibulum.</p>
                                </div>
                            </div>

                            <div class="item">
                                <div class="icon">
                                    <img src="assets/images/service-icon-02.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>Best Teachers</h4>
                                    <p>Suspendisse tempor mauris a sem elementum bibendum. Praesent facilisis massa non vestibulum.</p>
                                </div>
                            </div>

                            <div class="item">
                                <div class="icon">
                                    <img src="assets/images/service-icon-03.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>Best Students</h4>
                                    <p>Suspendisse tempor mauris a sem elementum bibendum. Praesent facilisis massa non vestibulum.</p>
                                </div>
                            </div>

                            <div class="item">
                                <div class="icon">
                                    <img src="assets/images/service-icon-02.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>Online Meeting</h4>
                                    <p>Suspendisse tempor mauris a sem elementum bibendum. Praesent facilisis massa non vestibulum.</p>
                                </div>
                            </div>

                            <div class="item">
                                <div class="icon">
                                    <img src="assets/images/service-icon-03.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>Best Networking</h4>
                                    <p>Suspendisse tempor mauris a sem elementum bibendum. Praesent facilisis massa non vestibulum.</p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <div class="footer">
      <p>Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved. 
          <br>Design: <a href="https://templatemo.com" target="_parent" title="free css templates">TemplateMo</a></p>
    </div>
  </section>

  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/isotope.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/lightbox.js"></script>
    <script src="assets/js/tabs.js"></script>
    <script src="assets/js/video.js"></script>
    <script src="assets/js/slick-slider.js"></script>
    <script src="assets/js/custom.js"></script>
    <script>
        //according to loftblog tut
        $('.nav li:first').addClass('active');

        var showSection = function showSection(section, isAnimate) {
          var
          direction = section.replace(/#/, ''),
          reqSection = $('.section').filter('[data-section="' + direction + '"]'),
          reqSectionPos = reqSection.offset().top - 0;

          if (isAnimate) {
            $('body, html').animate({
              scrollTop: reqSectionPos },
            800);
          } else {
            $('body, html').scrollTop(reqSectionPos);
          }

        };

        var checkSection = function checkSection() {
          $('.section').each(function () {
            var
            $this = $(this),
            topEdge = $this.offset().top - 80,
            bottomEdge = topEdge + $this.height(),
            wScroll = $(window).scrollTop();
            if (topEdge < wScroll && bottomEdge > wScroll) {
              var
              currentId = $this.data('section'),
              reqLink = $('a').filter('[href*=\\#' + currentId + ']');
              reqLink.closest('li').addClass('active').
              siblings().removeClass('active');
            }
          });
        };

        $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function (e) {
          e.preventDefault();
          showSection($(this).attr('href'), true);
        });

        $(window).scroll(function () {
          checkSection();
        });
    </script>
</body>

</body>
</html>
</asp:Content>

