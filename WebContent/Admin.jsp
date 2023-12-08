<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AdminDashBoard</title>
</head>
<style>
    body{
    padding: 0;
    margin: 0;
    overflow: hidden;
    }

    .frame-container{
        display: flex;
        flex-direction: row;
    }

    .sub-container{
        display: flex;
        flex-direction: column;
    }

</style>
<body>
<% 
	String roomID = (String)request.getAttribute("roomid");
	String checkinDate = (String)request.getAttribute("checkinDate");
	String checkoutDate = (String)request.getAttribute("checkoutDate");
	int numberGuests = (int)request.getAttribute("numberGuests");
	int totalPrice = (int)request.getAttribute("totalprice");

	session.setAttribute("roomID", roomID);
	session.setAttribute("checkinDate", checkinDate);
	session.setAttribute("checkoutDate", checkoutDate);
	session.setAttribute("numberGuests", numberGuests);
	session.setAttribute("totalprice", totalPrice);
%>
    <div class="frame-container">
        <iframe src="./frame/side-bar.jsp" frameborder="0" name = "t2"
                style="height:100vh ; width: 280px "></iframe>
        <div class="sub-container">
            <iframe src="./frame/header.jsp" frameborder="0" 
                style="height:56px ;width: calc(100vw - 280px); "></iframe>
            <iframe src="./frame/dashboard.jsp" frameborder="0" name = "t3"
                style="height: 100vh ;width: calc(100vw - 280px); "></iframe>
        </div>
    </div>
</body>
</html>