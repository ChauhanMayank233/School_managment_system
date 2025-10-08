<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="School_managment_system.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
         <meta charset="utf-8" />
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
 <meta name="description" content="" />
 <meta name="author" content="TemplateMo" />
 <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet" />

 <title>Admission - Edu Meeting</title>

 <!-- Bootstrap core CSS -->
 <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

 <!-- Additional CSS Files -->
 <link rel="stylesheet" href="assets/css/fontawesome.css" />
 <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css" />
 <link rel="stylesheet" href="assets/css/owl.css" />
 <link rel="stylesheet" href="assets/css/lightbox.css" />

 <!-- Custom Styles for Header Background -->
 <%--<style>
     /* Make header background solid and visible */
     .header-area {
         background-color: lightgrey; /* Deep blue background */
         color: white;
     }

     /* Adjust navigation links */
     .header-area .nav a {
         color: white !important;
     }

     .header-area .nav a:hover {
         color: #ffd700 !important; /* Gold hover effect */
     }

     /* Sub-header style */
     .sub-header {
         background-color: #003680; /* Darker shade for top strip */
         color: white;
     }
 </style>--%>
    <style>
       body {
    margin: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(135deg, #e3f2fd, #bbdefb);
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

.contact-section {
    background: white;
    max-width: 1000px;
    width: 90%;
    padding: 30px;
    border-radius: 20px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.1);
    animation: fadeIn 1s ease-in-out;
}

contact-header {
    text-align: center;
    margin-bottom: 30px;
}

.contact-header h1 {
    font-size: 2.2rem;
    color: #0d47a1;
    margin-bottom: 10px;
}

.contact-header p {
    color: #555;
    font-size: 1rem;
}

.contact-container {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 30px;
}

.contact-form {
    background: #f9f9f9;
    padding: 20px;
    border-radius: 15px;
}

.form-group {
    position: relative;
    margin-bottom: 20px;
}

input, textarea {
    width: 100%;
    padding: 12px;
    border: none;
    border-bottom: 2px solid #ccc;
    background: none;
    outline: none;
    font-size: 1rem;
    transition: 0.3s;
}

input:focus, textarea:focus {
    border-color: #0d47a1;
}

label {
    position: absolute;
    top: 12px;
    left: 0;
    color: #777;
    transition: 0.3s;
    pointer-events: none;
}

input:focus + label,
input:valid + label,
textarea:focus + label,
textarea:valid + label {
    top: -10px;
    font-size: 0.8rem;
    color: #0d47a1;
}

textarea {
    resize: none;
    min-height: 120px;
}

.btn {
    background: #0d47a1;
    color: white;
    border: none;
    padding: 12px 20px;
    border-radius: 10px;
    font-size: 1rem;
    cursor: pointer;
    transition: 0.3s;
    width: 100%;
}

.btn:hover {
    background: #1565c0;
}

.contact-info {
    background: #f1f8ff;
    padding: 20px;
    border-radius: 15px;
}

.contact-info h2 {
    color: #0d47a1;
    margin-bottom: 15px;
}

.contact-info p {
    margin: 8px 0;
    font-size: 0.95rem;
    color: #444;
}

@keyframes fadeIn {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}

@media (max-width: 768px) {
    .contact-container {
        grid-template-columns: 1fr;
    }
}

    </style>
    <html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" href="contact.css">
</head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="Userhome.aspx" class="logo">Unity Public School</a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="Userhome.aspx" class="active">Home</a></li>
                        <li><a href="About.aspx">About</a></li>
                        <li><a href="admission.aspx">Admission</a></li>
                        <li>
                            <a href="#">Gallery</a>
                           <%-- <ul class="sub-menu">
                                <li><a href="Userhome.aspx">Photo Gallery</a></li>
                                <li><a href="Userhome.aspx">Video Gallery</a></li>
                            </ul>--%>
                        </li>
                        <li class="has-sub">
                            <a href="#">Facilities</a>
                            <ul class="sub-menu">
                                <li><a href="Userhome.aspx">Sports</a></li>
                                <%--<li><a href="Userhome.aspx">Library</a></li>--%>
                                <li><a href="Userhome.aspx">Smart Classrooms</a></li>
                                <li><a href="Userhome.aspx">Computer Lab</a></li>
                                <li><a href="Userhome.aspx">Transportation</a></li>
                            </ul>
                        </li>
                        <li><a href="Course.aspx">Courses</a></li>
                        <li><a href="#contact">Contact Us</a></li>
                    </ul>
                    <a class='menu-trigger'><span>Menu</span></a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
</header>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <body>

    <section class="contact-section">
        <div class="contact-header">
            <h1>Get in Touch</h1>
            <p>We’d love to hear from you! Fill out the form and we’ll respond quickly.</p>
        </div>

        <div class="contact-container">
            <div class="contact-form">
                <form action="#" method="post">
                    <div class="form-group">
                        <input type="text" id="name" name="name" required>
                        <label for="name">Full Name</label>
                    </div>

                    <div class="form-group">
                        <input type="email" id="email" name="email" required>
                        <label for="email">Email Address</label>
                    </div>

                    <div class="form-group">
                        <textarea id="message" name="message" required></textarea>
                        <label for="message">Your Message</label>
                    </div>

                    <button type="submit" class="btn">Send Message</button>
                </form>
            </div>

            <div class="contact-info">
                <h2>Contact Information</h2>
                <p>📍 123 School Road, Your City, State</p>
                <p>📞 +91 98765 43210</p>
                <p>📧 contact@school.com</p>
                <iframe 
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.086284654595!2d-122.41941568468142!3d37.774929779759424!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80858064e7f7b22f%3A0x18cbf6e3b51a9d5!2sSchool!5e0!3m2!1sen!2sin!4v1612452645239" 
                    width="100%" 
                    height="200" 
                    style="border:0;" 
                    allowfullscreen="" 
                    loading="lazy">
                </iframe>
            </div>
        </div>
    </section>

</body>
</html>
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

