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
								<td>
									<p><%= (String)session.getAttribute("roomID")%></p>
								</td>
                                <td>BK001</td>
								<td><%= (String)session.getAttribute("checkinDate")%></td>
                                <td><%= (String)session.getAttribute("checkoutDate")%></td>
                                <td><%= (int)session.getAttribute("numberGuests")%></td>
                                <td><%= (int)session.getAttribute("totalprice")%>$</td>
								<td><span class="status pending">Pending</span></td>
							</tr>
                            <tr>
								<td>
									<p>ID01</p>
								</td>
                                <td>BK001</td>
								<td>06-12-2023</td>
                                <td>08-12-2023</td>
                                <td>1000$</td>
								<td><span class="status process">Process</span></td>
							</tr>
                            <tr>
								<td>
									<p>ID01</p>
								</td>
                                <td>BK001</td>
								<td>06-12-2023</td>
                                <td>08-12-2023</td>
                                <td>1000$</td>
								<td><span class="status pending">Pending</span></td>
							</tr>

                            <tr>
								<td>
									<p>ID01</p>
								</td>
                                <td>BK001</td>
								<td>06-12-2023</td>
                                <td>08-12-2023</td>
                                <td>1000$</td>
								<td><span class="status completed">Completed</span></td>
							</tr>
                            <tr>
								<td>
									<p>ID01</p>
								</td>
                                <td>BK001</td>
								<td>06-12-2023</td>
                                <td>08-12-2023</td>
                                <td>1000$</td>
								<td><span class="status process">Process</span></td>
							</tr>
                            <tr>
								<td>
									<p>ID01</p>
								</td>
                                <td>BK001</td>
								<td>06-12-2023</td>
                                <td>08-12-2023</td>
                                <td>1000$</td>
								<td><span class="status pending">Pending</span></td>
							</tr>

                            <tr>
								<td>
									<p>ID01</p>
								</td>
                                <td>BK001</td>
								<td>06-12-2023</td>
                                <td>08-12-2023</td>
                                <td>1000$</td>
								<td><span class="status completed">Completed</span></td>
							</tr>
                            <tr>
								<td>
									<p>ID01</p>
								</td>
                                <td>BK001</td>
								<td>06-12-2023</td>
                                <td>08-12-2023</td>
                                <td>1000$</td>
								<td><span class="status process">Process</span></td>
							</tr>
                            <tr>
								<td>
									<p>ID01</p>
								</td>
                                <td>BK001</td>
								<td>06-12-2023</td>
                                <td>08-12-2023</td>
                                <td><input type="checkbox" name="append" id=""></td>
                                <td><input type="checkbox" name="breakfast" id=""></td>
                                <td>1000$</td>
								<td><span class="status pending">Pending</span></td>
							</tr>

                            <tr>
								<td>
									<p>ID01</p>
								</td>
                                <td>BK001</td>
								<td>06-12-2023</td>
                                <td>08-12-2023</td>
                                <td><input type="checkbox" name="append" id=""></td>
                                <td><input type="checkbox" name="breakfast" id=""></td>
                                <td>1000$</td>
								<td><span class="status completed">Completed</span></td>
							</tr>
                            <tr>
								<td>
									<p>ID01</p>
								</td>
                                <td>BK001</td>
								<td>06-12-2023</td>
                                <td>08-12-2023</td>
                                <td><input type="checkbox" name="append" id=""></td>
                                <td><input type="checkbox" name="breakfast" id=""></td>
                                <td>1000$</td>
								<td><span class="status process">Process</span></td>
							</tr>
                            <tr>
								<td>
									<p>ID01</p>
								</td>
                                <td>BK001</td>
								<td>06-12-2023</td>
                                <td>08-12-2023</td>
                                <td><input type="checkbox" name="append" id=""></td>
                                <td><input type="checkbox" name="breakfast" id=""></td>
                                <td>1000$</td>
								<td><span class="status pending">Pending</span></td>
							</tr>

                            <tr>
								<td>
									<p>ID01</p>
								</td>
                                <td>BK001</td>
								<td>06-12-2023</td>
                                <td>08-12-2023</td>
                                <td><input type="checkbox" name="append" id=""></td>
                                <td><input type="checkbox" name="breakfast" id=""></td>
                                <td>1000$</td>
								<td><span class="status completed">Completed</span></td>
							</tr>
                            <tr>
								<td>
									<p>ID01</p>
								</td>
                                <td>BK001</td>
								<td>06-12-2023</td>
                                <td>08-12-2023</td>
                                <td><input type="checkbox" name="append" id=""></td>
                                <td><input type="checkbox" name="breakfast" id=""></td>
                                <td>1000$</td>
								<td><span class="status process">Process</span></td>
							</tr>
                            <tr>
								<td>
									<p>ID01</p>
								</td>
                                <td>BK001</td>
								<td>06-12-2023</td>
                                <td>08-12-2023</td>
                                <td><input type="checkbox" name="append" id=""></td>
                                <td><input type="checkbox" name="breakfast" id=""></td>
                                <td>1000$</td>
								<td><span class="status pending">Pending</span></td>
							</tr>
                            
							
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