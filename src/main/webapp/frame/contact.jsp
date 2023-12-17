<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@ page import="java.util.ArrayList" %>
	<%@ page import="Model.Bean.Contact" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact</title>
<link rel="stylesheet" href="./css/bookings.css">
</head>
<body>
<section id="content">
        <main>
			<div class="table-data">
				<div class="order">
					<div class="head">
						<h3>Contact List</h3>
						<i class='bx bx-search' ></i>
						<i class='bx bx-filter' ></i>
					</div>
					<table>
						<thead>
							<tr>
								<th style="color: #ff0909;">Name</th>
                                <th style="color: #ff0909;">Email</th>
								<th style="color: #ff0909;">Phone Number</th>
                                <th style="color: #ff0909;">Message</th>
                                <th></th>
							</tr>
						</thead>
						<tbody>
						 <tr>
						 <% ArrayList<Contact> ctArray = (ArrayList<Contact>)session.getAttribute("ctArray"); 
						for(int i = 0; i < ctArray.size(); i++) {
							%>
                                <td><%=ctArray.get(i).getName()%></td>
                                <td><%=ctArray.get(i).getEmail()%></td>
								<td><%=ctArray.get(i).getPhone()%></td>
                                <td><%=ctArray.get(i).getMessage()%></td>
                                <td>
                                	<a href="editContact.jsp?
								&Name=<%= ctArray.get(i).getName()%>
								&Email=<%= ctArray.get(i).getEmail()%>
								&Phone=<%= ctArray.get(i).getPhone()%>
								&Message=<%= ctArray.get(i).getMessage()%>">
								Edit</a>
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