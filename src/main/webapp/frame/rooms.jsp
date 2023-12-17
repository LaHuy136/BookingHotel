<%@ page import="java.util.ArrayList" %>
	<%@ page import="Model.Bean.Room" %>
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
						<h3>Room List</h3>
						<i class='bx bx-search' ></i>
						<i class='bx bx-filter' ></i>
					</div>
					<table>
						<thead>
							<tr>
								<th style="color: #ff0909;">Room ID</th>
                                <th style="color: #ff0909;">Room Name</th>
								<th style="color: #ff0909;">Type</th>
                                <th style="color: #ff0909;">Description</th>
                                <th style="color: #ff0909;">Price Per Night</th>
                                <th style="color: #ff0909;">Availability</th>
							</tr>
						</thead>
						<tbody>
						 <tr>
						 <% ArrayList<Room> roomArray = (ArrayList<Room>)session.getAttribute("roomArray"); 
						for(int i = 0; i < roomArray.size(); i++) {
							%>
                                <td><%= roomArray.get(i).getRoomID()%></td>
                                <td><%=roomArray.get(i).getName()%></td>
								<td><%=roomArray.get(i).getType()%></td>
                                <td><%=roomArray.get(i).getDescription()%></td>
                                <td><%=roomArray.get(i).getPrice() %>$</td>
								  <td><%=roomArray.get(i).getAvailability() %></td>
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