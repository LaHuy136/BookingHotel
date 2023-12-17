<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Request</title>
    <link rel="stylesheet" href="./css/bookings.css">
</head>
<style>
    .form-container {
        max-width: 660px;
        max-height: 500px;
        padding: 20px;
        margin: 30px auto 0 auto;
    }

    .form__row {
        padding: 8px 0;
        display: flex;
        justify-content: center;
    }

    .form__label {
        min-width: 130px;
        margin-top: 7px;
    }

    .form__input {
        flex: 1;
        padding: 5px;
    }

    .form__button {
        display: flex;
        padding: 12px;
        margin-left: 25px;
        background-color: #3b91d4;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .form__button:hover {
        color: #fff;
        background-color: #04528f;
    }

    .form-container h2,
    .form-container p {
        text-align: center;
    }
</style>
<body>
    <%
    String RoomID = request.getParameter("RoomID"); 
    String BookingID = request.getParameter("BookingID"); 
    String UserID = request.getParameter("UserID"); 
    String NumGuest = request.getParameter("NumGuest");
    String CheckInDate = request.getParameter("CheckInDate"); 
    String CheckOutDate = request.getParameter("CheckOutDate"); 
    String TotalPrice = request.getParameter("TotalPrice"); 
    String Status = request.getParameter("Status"); 
    %>
     <div class="form-container">
	    <form action="${pageContext.request.contextPath}/requestBKServlet" method="post">
	    	  <div class="form__row">
	                <label class="form__label" for="txtRoomID"><b>Room ID:</b></label>
	                <input class="form__input" type="text" name="RoomID" value="<%= RoomID %>" readonly></input>
	            </div>
	            <div class="form__row">
	                <label class="form__label" for="txtBookingID"><b>Booking ID:</b></label>
	               <input class="form__input" type="text" name="BookingID" value="<%= BookingID %>" readonly>
	            </div>
	            <div class="form__row">
	                <label class="form__label" for="txtUserID"><b>User ID:</b></label>
	              <input class="form__input" type="text" name="UserID" value="<%= UserID %>" readonly>
	            </div>
	            <div class="form__row">
	                <label class="form__label" for="txtNumGuest"><b>NumGuest:</b></label>
	               <input class="form__input" type="text" name="NumGuest" value="<%= NumGuest %>" readonly>
	            </div>
	             <div class="form__row">
	                <label class="form__label" for="txtCheckInDate"><b>Check-In Date:</b></label>
	               <input class="form__input" type="text" name="CheckInDate" value="<%= CheckInDate %>" readonly>
	            </div>
	             <div class="form__row">
	                <label class="form__label" for="txtCheckOutDate"><b>Check-Out Date:</b></label>
	               <input class="form__input" type="text" name="CheckOutDate" value="<%= CheckOutDate %>" readonly>
	            </div>
	             <div class="form__row">
	                <label class="form__label" for="txtTotalPrice"><b>Total Price:</b></label>
	               <input class="form__input" type="text" name="TotalPrice" value="<%= TotalPrice %>$" readonly>
	            </div>
	             <div class="form__row">
	                <label class="form__label" for="txtStatus"><b>Status:</b></label>
	               <input class="form__input" type="text" name="Status" value="<%= Status %>" required>
	            </div>
	            <div class="form__row">
	                <input class="form__button" type="submit" value="Update" name="update">
	                <input class="form__button" type="submit" value="Delete" name="delete">
	            </div>
	    </form>
	  </div>
</body>
</html>