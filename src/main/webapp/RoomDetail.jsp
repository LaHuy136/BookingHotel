<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>Room Detail</title>
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
<body>
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
                             <!--  <li class="nav-item header__navbar-item header__navbar-user">
                           		<img src="https://files.fullstack.edu.vn/f8-prod/user_photos/250234/632bc0883a40a.jpg" alt="" class="header__navbar-user-img">
                            	<span class="header__navbar-user-name">
                            		
                            	</span>

                            	<ul class="header__navbar-user-menu">
	                                <li class="header__navbar-user-item">
	                                    <a href="ManageAccount.jsp">Manage account</a>
	                                </li>
	                                <li class="header__navbar-user-item header__navbar-user-item--separate">
	                                    <a href="Index.jsp">Sign out</a>
	                                </li>
                            	</ul>
                        	</li> --> 
                        	
                        </ul>
                       
                     </div>
                  </nav>
               </div>
            </div>
         </div>
      </div>
   </header>
   <!-- end header -->
  <div class="our_room_detail">
      <div class="container">
         <div class="row">
            <div class="col-md-5">
               <div class="book_room">
               	<%String RoomID = request.getParameter("RoomID");
               	String Price = request.getParameter("Price");
               	String RoomName = request.getParameter("RoomName");
               	%>
                  <h1><%=RoomID%></h1>
                  <form class="book_now" method="post" action="bookRoomServlet">
                        <div class="row">
                           <div class="col-md-12">
                              <span>Arrival</span>
                              <input class="online_book" placeholder="dd/mm/yyyy" type="date" name="checkindate" required>
                           </div>
                           <div class="col-md-12">
                              <span>Departure</span>
                              <input class="online_book" placeholder="dd/mm/yyyy" type="date" name="checkoutdate" required>
                           </div>
                           <div class="col-md-12">
                              <div class="row">
									<div class="col-md-4">
										<span class="book_append">Adult guests</span>
										<input class="book_append_service" type="text" placeholder="2" name="adultguest" required>
									</div>  
									<div class="col-md-4">
										<span class="book_append">Children</span>
										<input class="book_append_service" type="text" placeholder="2" name="children" required>
									</div>         
									<div class="col-md-4">
										<span class="book_append">Nights in hotel</span>
										<input class="book_append_service" type="text" placeholder="6" name="night" readonly>
									</div>       
									<input style="display: none" type="text" name="roomid" value="<%=RoomID%>">                  
                              </div>
                           </div>
                            <div class="col-md-12">
                              <span>Price</span>
                              <input class="online_book" type="text" name="price" readonly value="<%=Price%>$">
                           </div>
                           <div class="col-md-12">
                              <button class="book_btn" type="submit">Book Now</button>
                           </div>
                        </div>
                     </form>
               </div>
            </div>
         <div class="col-md-7">
         	<div class="row">
         		 <div class="col-md-6 col-sm-6">
	               <div id="serv_hover" class="room">
	                  <div class="room_img">
	                     <figure><img src="images/room1.jpg" alt="#" /></figure>
	                  </div>
	               </div>
           	 	</div>
	            <div class="col-md-6 col-sm-6">
	               	<div id="serv_hover" class="room">
	                  <div class="room_img">
	                     <figure><img src="images/gallery1.jpg" alt="#" /></figure>
	                  </div>
               		</div>
            	</div>
         	</div>
          	<div class="row">
         		 <div class="col-md-6 col-sm-6">
	               <div id="serv_hover" class="room">
	                  <div class="room_img">
	                     <figure><img src="images/blog1.jpg" alt="#" /></figure>
	                  </div>
	               </div>
           	 	</div>
	            <div class="col-md-6 col-sm-6">
	               	<div id="serv_hover" class="room">
	                  <div class="room_img">
	                     <figure><img src="images/blog2.jpg" alt="#" /></figure>
	                  </div>
               		</div>
            	</div>
         	</div> 
         </div>
      </div>
   </div>
</div>
</body>
   <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
      <script>
    	document.addEventListener('DOMContentLoaded', function() {
        var checkinInput = document.querySelector('input[name="checkindate"]');
        var checkoutInput = document.querySelector('input[name="checkoutdate"]');
        var nightsInput = document.querySelector('input[name="night"]');

        checkinInput.addEventListener('change', updateNumberOfNights);
        checkoutInput.addEventListener('change', updateNumberOfNights);

        checkinInput.addEventListener('change', function () {
        	 var currentDate = new Date();
             var selectedDate = new Date(checkinInput.value);

             if (selectedDate <= currentDate) {
                 checkinInput.valueAsDate = currentDate;
                 nightsInput.value = 0;
             }
        	
        	
            checkoutInput.min = checkinInput.value;
            if (checkinInput.value > checkoutInput.value) {
                checkoutInput.value = checkinInput.value;
                nightsInput.value = 0;
            }
        });

        checkoutInput.addEventListener('change', function () {
            if (checkoutInput.value < checkinInput.value) {
                checkoutInput.value = checkinInput.value;
            }
        });
        
        
        function updateNumberOfNights() {
            var checkinDate = new Date(checkinInput.value);
            var checkoutDate = new Date(checkoutInput.value);

            if (!isNaN(checkinDate.getTime()) && !isNaN(checkoutDate.getTime())) {
                var timeDiff = checkoutDate.getTime() - checkinDate.getTime();
                var numberOfNights = Math.ceil(timeDiff / (1000 * 3600 * 24));
                if(numberOfNights <= 0) {
                	alert("Select Suitable Day !!!");
                }
                else {
                	 nightsInput.value = numberOfNights;
                }
            }
        }
    });
</script>
</html>