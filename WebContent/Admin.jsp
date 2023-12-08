<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 	<%@ page import="java.sql.Date" %>
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