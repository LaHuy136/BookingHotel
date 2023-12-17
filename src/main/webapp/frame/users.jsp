<%@ page import="java.util.ArrayList" %>
	<%@ page import="Model.Bean.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
  	<link rel="stylesheet" href="./css/bookings.css">
</head>
<body>
    <section id="content">
        <main>
			<div class="table-data">
				<div class="order">
					<div class="head">
						<h3>User List</h3>
						<i class='bx bx-search' ></i>
						<i class='bx bx-filter' ></i>
					</div>
					<table>
						<thead>
							<tr>
								<th style="color: #ff0909;">User ID</th>
                                <th style="color: #ff0909;">User Name</th>
								<th style="color: #ff0909;">Email</th>
                                <th style="color: #ff0909;">Role</th>
							</tr>
						</thead>
						<tbody>
						 <tr>
						 <% ArrayList<User> userArray = (ArrayList<User>)session.getAttribute("userArray"); 
						for(int i = 0; i < userArray.size(); i++) {
							%>
                                <td><%= userArray.get(i).getUserID()%></td>
                                <td><%=userArray.get(i).getUsername()%></td>
								<td><%=userArray.get(i).getEmail()%></td>
                                <td><%=userArray.get(i).getRole()%></td>
								<td><a href="updateAccount.jsp?
								&UserID=<%= userArray.get(i).getUserID()%>
								&Email=<%= userArray.get(i).getEmail()%>
								&Role=<%= userArray.get(i).getRole()%>
								&Username=<%= userArray.get(i).getUsername()%>">
								Update</a>
								</td>
								<td><a href="deleteAccount.jsp?
								&UserID=<%= userArray.get(i).getUserID()%>
								&Email=<%= userArray.get(i).getEmail()%>
								&Role=<%= userArray.get(i).getRole()%>
								&Username=<%= userArray.get(i).getUsername()%>">
								Delete</a>
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