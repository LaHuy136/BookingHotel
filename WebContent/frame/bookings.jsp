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
								<th>Room ID</th>
                                <th>Booking ID</th>
								<th>Check In Date</th>
                                <th>Check Out Date</th>
                                <th>Number Guests</th>
                                <th>Price</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
						 <tr>
						 	<% ArrayList<Booking> bkArray = (ArrayList<Booking>)request.getAttribute("bkArray"); 
						for(int i = 0; i < bkArray.size(); i++) {
							%>
								<td>
									<p>bkArray.get(i).getRoomID()</p>
								</td>
                                <td><%= bkArray.get(i).getBookingID()%></td>
                                <td><%=bkArray.get(i).getUserID()%></td>
								<td><%=bkArray.get(i).getCheckInDate()%></td>
                                <td><%=bkArray.get(i).getCheckOutDate()%></td>
                                <td><%=bkArray.get(i).getNumGuest()%></td>
                                 <td><%=bkArray.get(i).getTotalPrice()%>$</td>
								<td><span class="status process"><%=bkArray.get(i).getStatus()%></span></td>
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