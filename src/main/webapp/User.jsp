<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %>
 	<%@ page import="Model.Bean.Room" %>
<!DOCTYPE html>
<html lang="en">
<title>User</title>
<head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>keto</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
      <style>
	      .header__navbar-item {
		    margin: 0 8px;
		    position: relative;
		    min-height: 26px;
		  }

		.header__navbar-user {
		    display: flex;
		    justify-content: center;
		    position: relative;
		}

.header__navbar-user-img {
    width: 26px;
    height: 26px;
    border-radius: 50%;
    border: 1px solid rgba(0, 0, 0, 0.1);
}

.header__navbar-user-name {
    margin-left: 4px;
    font-size: 20px;
    font-weight: 400;
}

.header__navbar-user:hover .header__navbar-user-menu {
    display: block;
}


.header__navbar-user-menu {
    position: absolute;
    padding-left: 0;
    top: calc(100% - 16px);
    right: 0;
    width: 160px;
    border-radius: 2px;
    background-color: #ff0909;
    color: #fff;
    list-style: none;
    z-index: 2;
    display: none;
    margin-left: 10px;
}

.header__navbar-user-menu::before {
    content: "";
    position: absolute;
    right: 4px;
    top: -29px;
}

.header__navbar-user-item--separate {
    border-top: 1px solid rgba(0, 0, 0, 0.05);
}

.header__navbar-user-item a {
    text-decoration: none;
    color: #fff;
    background-color: #ff090;
    font-size: 14px;
    padding: 10px 16px;
    display: block;
}

.header__navbar-user-item a:hover {
	color: #ff0909;
	background-color: #fff;
}

.header__navbar-user-item a:first-child {
    border-top-left-radius: 2px;
    border-top-right-radius: 2px;
}

.header__navbar-user-item a:last-child {
    border-bottom-left-radius: 2px;
    border-bottom-right-radius: 2px;
}

.header__navbar-user-item a:hover {
    background-color: #FAFAFA;
}
   
   </style>
  	</head>
<!-- body -->

<body class="main-layout">
   <!-- loader  -->
   <div class="loader_bg">
      <div class="loader"><img src="images/loading.gif" alt="#" /></div>
   </div>
   <!-- end loader -->
   <!-- header -->
   <header>
      <!-- header inner -->
      <div class="header">
         <div class="container">
            <div class="row">
               <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                  <div class="full">
                     <div class="center-desk">
                        <div class="logo">
                           <a href="Index.jsp"><img src="images/logo.png" alt="#" /></a>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                  <nav class="navigation navbar navbar-expand-md navbar-dark ">
                     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04"
                        aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                     </button>
                     <div class="collapse navbar-collapse" id="navbarsExample04">
                        <ul class="navbar-nav mr-auto">
                           <li class="nav-item active">
                              <a class="nav-link" href="Index.jsp">Home</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link" href="About.jsp">About</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link" href="Room.jsp">Our room</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link" href="Gallery.jsp">Gallery</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link" href="Blog.jsp">Blog</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link" href="ContactUs.jsp">Contact Us</a>
                           </li>
                           <li class="nav-item header__navbar-item header__navbar-user">
                           		<img src="https://files.fullstack.edu.vn/f8-prod/user_photos/250234/632bc0883a40a.jpg" alt="" class="header__navbar-user-img">
                            	<span class="header__navbar-user-name">
                            		 <%String UserName = (String)session.getAttribute("UserName"); %>
							  		 <%= UserName %>		
                            	</span>

                            	<ul class="header__navbar-user-menu">
	                                <li class="header__navbar-user-item header__navbar-user-item--separate">
	                                    <a href="Index.jsp">Sign out</a>
	                                </li>
                            	</ul>
                        	</li>
                        </ul>
                       
                     </div>
                  </nav>
               </div>
            </div>
         </div>
      </div>
   </header>
   <!-- end header inner -->
   <!-- end header -->
   <!-- banner -->
   <section class="banner_main">
      <div id="myCarousel" class="carousel slide banner" data-ride="carousel">
         <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
         </ol>
         <div class="carousel-inner">
            <div class="carousel-item active">
               <img class="first-slide" src="images/banner1.jpg" alt="First slide">
               <div class="container">
               </div>
            </div>
            <div class="carousel-item">
               <img class="second-slide" src="images/banner2.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
               <img class="third-slide" src="images/banner3.jpg" alt="Third slide">
            </div>
         </div>
         <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
         </a>
         <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
         </a>
      </div>
      
   </section>
   <!-- end banner -->
   <!-- about -->
   <div class="about">
      <div class="container-fluid">
         <div class="row">
            <div class="col-md-5">
               <div class="titlepage">
                  <h2>About Us</h2>
                  <p>The passage experienced a surge in popularity during the 1960s when Letraset used it on their
                     dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their
                     software. Today it's seen all around the web; on templates, websites, and stock designs. Use our
                     generator to get your own, or read on for the authoritative history of lorem ipsum. </p>
                  <a class="read_more" href="Javascript:void(0)"> Read More</a>
               </div>
            </div>
            <div class="col-md-7">
               <div class="about_img">
                  <figure><img src="images/about.png" alt="#" /></figure>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- end about -->
   <!-- our_room -->
   <div class="our_room">
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="titlepage">
                  <h2>Our Room</h2>
                  <p>Lorem Ipsum available, but the majority have suffered </p>
               </div>
            </div>
         </div>
        
         <div class="row">
    <% 
        ArrayList<Room> roomArray = (ArrayList<Room>)request.getAttribute("roomArray");
        for(int i = 0; i < roomArray.size(); i++) {
    %>
    <div class="col-md-3 col-sm-6">
        <div id="serv_hover" class="room">
            <div class="room_img">
                <figure><img src="images/room2.jpg" alt="#" /></figure>
            </div>
            <div class="bed_room">
                <h3>
                    <a href="RoomDetail.jsp?
         			RoomName=<%=roomArray.get(i).getName()%>
                    &RoomID=<%=roomArray.get(i).getRoomID()%>
                    &Price=<%=roomArray.get(i).getPrice()%>">
                    	<%= roomArray.get(i).getName() %>
                    </a>
                </h3>
                <p><b>Type:</b> <%= roomArray.get(i).getType() %></p>
                <p><b>Price:</b> <%= roomArray.get(i).getPrice() %>$</p>
                <p>
                <b>
                Description: <br>
                </b>
                <%= roomArray.get(i).getDescription() %>
                </p>
                <p><b>Available:</b> <%= roomArray.get(i).getAvailability() %></p>
            </div>
        </div>
    </div>
    <% } %>
	</div>
      </div>
   </div>
   
   <!-- end our_room -->
   <!-- gallery -->
   <div class="gallery">
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="titlepage">
                  <h2>gallery</h2>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-md-3 col-sm-6">
               <div class="gallery_img">
                  <figure><img src="images/gallery1.jpg" alt="#" /></figure>
               </div>
            </div>
            <div class="col-md-3 col-sm-6">
               <div class="gallery_img">
                  <figure><img src="images/gallery2.jpg" alt="#" /></figure>
               </div>
            </div>
            <div class="col-md-3 col-sm-6">
               <div class="gallery_img">
                  <figure><img src="images/gallery3.jpg" alt="#" /></figure>
               </div>
            </div>
            <div class="col-md-3 col-sm-6">
               <div class="gallery_img">
                  <figure><img src="images/gallery4.jpg" alt="#" /></figure>
               </div>
            </div>
            <div class="col-md-3 col-sm-6">
               <div class="gallery_img">
                  <figure><img src="images/gallery5.jpg" alt="#" /></figure>
               </div>
            </div>
            <div class="col-md-3 col-sm-6">
               <div class="gallery_img">
                  <figure><img src="images/gallery6.jpg" alt="#" /></figure>
               </div>
            </div>
            <div class="col-md-3 col-sm-6">
               <div class="gallery_img">
                  <figure><img src="images/gallery7.jpg" alt="#" /></figure>
               </div>
            </div>
            <div class="col-md-3 col-sm-6">
               <div class="gallery_img">
                  <figure><img src="images/gallery8.jpg" alt="#" /></figure>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- end gallery -->
   <!-- blog -->
   <div class="blog">
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="titlepage">
                  <h2>Blog</h2>
                  <p>Lorem Ipsum available, but the majority have suffered </p>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <div class="blog_box">
                  <div class="blog_img">
                     <figure><img src="images/blog1.jpg" alt="#" /></figure>
                  </div>
                  <div class="blog_room">
                     <h3>Pool View</h3>
                     <span>The standard pool </span>
                     <p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything
                        embarrassing hidden in the middle of text. All the Lorem Ipsum generatorsIf you are </p>
                  </div>
               </div>
            </div>
            <div class="col-md-4">
               <div class="blog_box">
                  <div class="blog_img">
                     <figure><img src="images/blog2.jpg" alt="#" /></figure>
                  </div>
                  <div class="blog_room">
                     <h3>Hall View</h3>
                     <span>The standard hall </span>
                     <p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything
                        embarrassing hidden in the middle of text. All the Lorem Ipsum generatorsIf you are </p>
                  </div>
               </div>
            </div>
            <div class="col-md-4">
               <div class="blog_box">
                  <div class="blog_img">
                     <figure><img src="images/blog3.jpg" alt="#" /></figure>
                  </div>
                  <div class="blog_room">
                     <h3>Room View</h3>
                     <span>The standard room </span>
                     <p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything
                        embarrassing hidden in the middle of text. All the Lorem Ipsum generatorsIf you are </p>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- end blog -->
   <!--  contact -->
   <div class="contact">
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="titlepage">
                  <h2>Contact Us</h2>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-md-6">
               <form id="request" class="main_form" action="${pageContext.request.contextPath}/handleContactServlet" method="post">
                  <div class="row">
                     <div class="col-md-12 ">
                        <input class="contactus" placeholder="Name" type="text" name="Name">
                     </div>
                     <div class="col-md-12">
                        <input class="contactus" placeholder="Email" type="text" name="Email">
                     </div>
                     <div class="col-md-12">
                        <input class="contactus" placeholder="Phone Number" type="text" maxlength="11" name="Phone Number">
                     </div>
                     <div class="col-md-12">
                        <textarea class="textarea" placeholder="Message" type="text" name="Message">Message</textarea>
                     </div>
                     <div class="col-md-12">
                        <button class="send_btn" name="sendMessage" type="submit">Send</button>
                     </div>
                  </div>
               </form>
            </div>
            <div class="col-md-6">
               <div class="map_main">
                  <div class="map-responsive">
                     <iframe
                        src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0s1a7phLN0iaD6-UE7m4qP-z21pH0eSc&amp;q=Eiffel+Tower+Paris+France"
                        width="600" height="400" frameborder="0" style="border:0; width: 100%;"
                        allowfullscreen=""></iframe>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- end contact -->
  <!--  footer -->
   <footer>
      <div class="footer">
         <div class="container">
            <div class="row">
               <div class=" col-md-4">
                  <h3>Contact US</h3>
                  <ul class="conta">
                     <li><i class="fa fa-map-marker" aria-hidden="true"></i> Address</li>
                     <li><i class="fa fa-mobile" aria-hidden="true"></i> +01 1234569540</li>
                     <li> <i class="fa fa-envelope" aria-hidden="true"></i><a href="#"> demo@gmail.com</a></li>
                  </ul>
               </div>
               <div class="col-md-4">
                  <h3>Menu Link</h3>
                  <ul class="link_menu">
                     <li class="active"><a href="Index.jsp">Home</a></li>
                     <li><a href="About.jsp">About</a></li>
                     <li><a href="Room.jsp">Our Room</a></li>
                     <li><a href="Gallery.jsp">Gallery</a></li>
                     <li><a href="Blog.jsp">Blog</a></li>
                     <li><a href="ContactUs.jsp">Contact Us</a></li>
                  </ul>
               </div>
              <div class="col-md-4">
              		<div class="logo">
                           <a href="Index.jsp"><img src="images/logo.png" alt="#" /></a>
                    </div>
                 <!--     <h3>News letter</h3>
                  <form class="bottom_form">
                     <input class="enter" placeholder="Enter your email" type="text" name="Enter your email">
                     <button class="sub_btn">Subscribe</button>
                  </form> -->
                  <ul class="social_icon">
                     <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                     <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                     <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                     <li><a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                  </ul>
               </div> 
            </div>
         </div>
         <div class="copyright">
            <div class="container">
               <div class="row">
                  <div class="col-md-10 offset-md-1">

                     <p>
                        2023 All Rights Reserved. Design by <a href="https://html.design/">Free Design</a>
                        <br><br>
                        Distributed by <a href="https://w3schools.com/" target="_blank">Jack Sparrow</a>
                     </p>

                  </div>
               </div>
            </div>
         </div>
      </div>
   </footer>
   <!-- end footer -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
     
</body>

</html>