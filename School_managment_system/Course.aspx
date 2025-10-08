<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="School_managment_system.Course" %>
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
        <style>
            .item {
    background: #fff;
    border-radius: 12px;
    box-shadow: 0 2px 6px rgba(0,0,0,0.1);
    padding: 10px;
    text-align: center;
    margin: 10px;
}

#courses .container .row .col-lg-12 {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 20px;
}

.item img {
    border-radius: 10px;
    object-fit: cover;
}

        </style>
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
                            <a href="index.html" class="logo">Unity Public School
                            </a>
                            <!-- ***** Logo End ***** -->
                            <!-- ***** Menu Start ***** -->
                            <ul class="nav">
                                <li><a href="Userhome.aspx">Home</a></li>
                                <li><a href="About.aspx">About</a></li>
                                <li><a href="admission.aspx">Admission</a></li>
                               

                                <li>
                                    <a href="javascript:void(0)">Gallary</a>
                                   <%-- <ul class="sub-menu">
                                        <li><a href="Userhome.aspx">Photo Gallary</a></li>
                                        <li><a href="Userhome.aspx">Video Gallary</a></li>

                                    </ul>--%>
                                </li>


                                <li class="has-sub">
                                    <a href="javascript:void(0)">Facilities</a>
                                    <ul class="sub-menu">
                                        <li><a href="Userhome.aspx">sports</a></li>
                                      <%--  <li><a href="Userhome.aspx">Library</a></li>--%>
                                        <li><a href="Userhome.aspx">smart Class Rooms</a></li>

                                        <li><a href="Userhome.aspx">Computer lab</a></li>

                                        <li><a href="Userhome.aspx">Transpotation</a></li>

                                    </ul>
                                </li>

                                <li><a href="Course.aspx">Courses</a></li>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <section class="our-courses" id="courses">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-heading">
                        <h2>Our Popular Courses</h2>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="owl-courses-item owl-carousel">
                        <div class="item">
                            <img src="images/gujrati.jpg" alt="Course One" height="200" width="100">
                            <div class="down-content">
                                <h4>Gujarati</h4>
                                <div class="info">
                                    <div class="row">
                                        <div class="col-8">
                                        </div>
                                        <div class="col-4">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/ba.jpg" alt="Course Two" height="200" width="100">
                            <div class="down-content">
                                <h4>Business Administrative</h4>
                                <div class="info">
                                    <div class="row">
                                        <div class="col-8">
                                        </div>
                                        <div class="col-4">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/bio.jpg" alt="" height="200" width="100">
                            <div class="down-content">
                                <h4>Biology</h4>
                                <div class="info">
                                    <div class="row">
                                        <div class="col-8">
                                        </div>
                                        <div class="col-4">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/chem.jpg" alt="" height="200" width="100">
                            <div class="down-content">
                                <h4>Chemistry</h4>
                                <div class="info">
                                    <div class="row">
                                        <div class="col-8">
                                        </div>
                                        <div class="col-4">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/comp.jpg" alt="" height="200" width="100">
                            <div class="down-content">
                                <h4>Computer</h4>
                                <div class="info">
                                    <div class="row">
                                        <div class="col-8">
                                        </div>
                                        <div class="col-4">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/draw.jpg" alt="" height="200" width="100">
                            <div class="down-content">
                                <h4>Drawing</h4>
                                <div class="info">
                                    <div class="row">
                                        <div class="col-8">
                                        </div>
                                        <div class="col-4">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/eco.jpg" alt="" height="200" width="100">
                            <div class="down-content">
                                <h4>Economics</h4>
                                <div class="info">
                                    <div class="row">
                                        <div class="col-8">
                                        </div>
                                        <div class="col-4">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/physics.jpg" alt="" height="200" width="100">
                            <div class="down-content">
                                <h4>Physics</h4>
                                <div class="info">
                                    <div class="row">
                                        <div class="col-8">
                                        </div>
                                        <div class="col-4">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/maths.jpg" alt="" height="200" width="100">
                            <div class="down-content">
                                <h4>Maths</h4>
                                <div class="info">
                                    <div class="row">
                                        <div class="col-8">
                                        </div>
                                        <div class="col-4">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/ss.jpg" alt="" height="200" width="100">
                            <div class="down-content">
                                <h4>Social Science</h4>
                                <div class="info">
                                    <div class="row">
                                        <div class="col-8">
                                        </div>
                                        <div class="col-4">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/state.jpg" alt="" height="200" width="100">
                            <div class="down-content">
                                <h4>Stastics</h4>
                                <div class="info">
                                    <div class="row">
                                        <div class="col-8">
                                        </div>
                                        <div class="col-4">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/state.jpg" alt="" height="200" width="100">
                            <div class="down-content">
                                <h4>Stastics</h4>
                                <div class="info">
                                    <div class="row">
                                        <div class="col-8">
                                        </div>
                                        <div class="col-4">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="item">
                            <img src="images/hin.jpg" alt="" height="200" width="100">
                            <div class="down-content">
                                <h4>Hindi</h4>
                                <div class="info">
                                    <div class="row">
                                        <div class="col-8">
                                        </div>
                                        <div class="col-4">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <!-- new -->

    <section class="our-courses" id="courses">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-heading">
                    <h2>Our Popular Courses</h2>
                </div>
            </div>
            <div class="col-lg-12">
                <!-- ASP.NET GridView -->
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
               <asp:Repeater ID="rptCourses" runat="server">
    <ItemTemplate>
        <div class="item">
            <img src='<%# Eval("Photo") %>' alt='<%# Eval("Subject") %>' height="200" width="100" />
            <div class="down-content">
                <h4><%# Eval("Subject") %></h4>
                 <div class="row">
     <div class="col-8">
     </div>
     <div class="col-4">
     </div>
 </div>
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>

            </div>
        </div>
    </div>
</section>


   

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="footer">
        <p>
            Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved. 
          <br>
            Design: <a href="https://templatemo.com" target="_parent" title="free css templates">TemplateMo</a>
        </p>
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
                    scrollTop: reqSectionPos
                },
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
