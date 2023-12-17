<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ page import="java.util.ArrayList" %>
	<%@ page import="Model.Bean.Booking" %>
	<%@ page import="Model.Bean.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<link rel="stylesheet" href="./css/dashboard.css">
	<title>AdminHub</title>
</head>
<body>
	<!-- CONTENT -->
	<section id="content">
		
		<!-- MAIN -->
		<main>
			<ul class="box-info">
				<% 
				ArrayList<Booking> bkArray = (ArrayList<Booking>)session.getAttribute("bkArray"); 
				ArrayList<User> userArray = (ArrayList<User>)session.getAttribute("userArray");
				int newOrderCount = 0;
				int totalUser = 0;
				int totalPrice = 0;
						for(int i = 0; i < bkArray.size(); i++) {
							 String Status = bkArray.get(i).getStatus();
							 int Price = bkArray.get(i).getTotalPrice();
							 if ("Pending".equalsIgnoreCase(Status)) {
							        newOrderCount++;
							        totalPrice += Price;
							    } 
						}
						for(int i = 0; i < userArray.size(); i++) {
							 String Role = userArray.get(i).getRole();
							 if ("Admin".equalsIgnoreCase(Role) || "User".equalsIgnoreCase(Role)) {
								 totalUser++;
							 }
						}
				%>
				<li>
					<i class='bx bxs-calendar-check' ></i>
					<span class="text">
						<h3> <%= newOrderCount %></h3>
						<p>New Order</p>
					</span>
				</li>
				 
				<li>
					<i class='bx bxs-group' ></i>
					<span class="text">
						<h3><%= totalUser %></h3>
						<p>User</p>
					</span>
				</li>
				
				<li>
					<i class='bx bxs-dollar-circle' ></i>
					<span class="text">
						<h3>$<%= totalPrice %></h3>
						<p>Total</p>
					</span>
				</li>
				
			</ul>
		
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->
	

	<script src="./script/script.js"></script>
</body>
</html>