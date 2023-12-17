<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ page import="java.util.ArrayList" %>
	<%@ page import="Model.Bean.Booking" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<!-- My CSS -->
	<link rel="stylesheet" href="./css/bookings.css">

	<title>AdminHub</title>
</head>
<body>

	<section id="content">
        <main>
			<div class="table-data">
				<div class="order">
					<div class="head">
						<h3>Booking List</h3>
						<i class='bx bx-search' ></i>
						<i class='bx bx-filter' ></i>
					</div>
					<table>
						<thead>
							<tr>
								<th style="color: #ff0909;">Room ID</th>
                                <th style="color: #ff0909;">Booking ID</th>
                                <th style="color: #ff0909;">User ID</th>
								<th style="color: #ff0909;">Check In Date</th>
                                <th style="color: #ff0909;">Check Out Date</th>
                                <th style="color: #ff0909;">Number Guests</th>
                                <th style="color: #ff0909;">Price</th>
								<th style="color: #ff0909;">Status</th>
								<th style="color: #ff0909;">Confirm</th>
								<th style="color: #ff0909;">Delete</th>
							</tr>
						</thead>
						<tbody>
						 <tr>
						 	<% ArrayList<Booking> bkArray = (ArrayList<Booking>)session.getAttribute("bkArray"); 
						for(int i = 0; i < bkArray.size(); i++) {
							%>
								<td>
									<p><%= bkArray.get(i).getRoomID() %></p>
								</td>
                                <td><%= bkArray.get(i).getBookingID()%></td>
                                <td><%=bkArray.get(i).getUserID()%></td>
								<td><%=bkArray.get(i).getCheckInDate()%></td>
                                <td><%=bkArray.get(i).getCheckOutDate()%></td>
                                <td><%=bkArray.get(i).getNumGuest()%></td>
                                 <td><%=bkArray.get(i).getTotalPrice()%>$</td>
								<td class="status process"><%=bkArray.get(i).getStatus()%></td>
								<td><a href="requests.jsp?
								RoomID=<%= bkArray.get(i).getRoomID()%>
								&BookingID=<%= bkArray.get(i).getBookingID()%>
								&UserID=<%= bkArray.get(i).getUserID()%>
								&CheckInDate=<%= bkArray.get(i).getCheckInDate()%>
								&CheckOutDate=<%= bkArray.get(i).getCheckOutDate()%>
								&NumGuest=<%= bkArray.get(i).getNumGuest()%>
								&TotalPrice=<%= bkArray.get(i).getTotalPrice()%>
								&Status=<%= bkArray.get(i).getStatus()%>">
								
								Click</a>
								</td>
								<td>
									<a href="requests.jsp?
								RoomID=<%= bkArray.get(i).getRoomID()%>
								&BookingID=<%= bkArray.get(i).getBookingID()%>
								&UserID=<%= bkArray.get(i).getUserID()%>
								&CheckInDate=<%= bkArray.get(i).getCheckInDate()%>
								&CheckOutDate=<%= bkArray.get(i).getCheckOutDate()%>
								&NumGuest=<%= bkArray.get(i).getNumGuest()%>
								&TotalPrice=<%= bkArray.get(i).getTotalPrice()%>
								&Status=<%= bkArray.get(i).getStatus()%>">
								
								Click</a>
								</td>
							</tr> 
                           <%} %>
                     
						</tbody>
					</table>
				</div>
				
			</div>
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->
    

</body>
</html>