<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Setting</title>
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
    String UserID = request.getParameter("UserID"); 
    String UserName = request.getParameter("Username"); 
    String Email = request.getParameter("Email"); 
    String Role = request.getParameter("Role");
    %>
     <div class="form-container">
	    <form action="${pageContext.request.contextPath}/settingAccountServlet" method="post">
	    	  <div class="form__row">
	                <label class="form__label" for="txtUserID"><b>User ID:</b></label>
	                <input class="form__input" type="text" name="UserID" value="<%= UserID %>" readonly></input>
	            </div>
	            <div class="form__row">
	                <label class="form__label" for="txtUsername"><b>User Name:</b></label>
	               <input class="form__input" type="text" name="Username" value="<%= UserName %>" required>
	            </div>
	            <div class="form__row">
	                <label class="form__label" for="txtEmail"><b>Email:</b></label>
	              <input class="form__input" type="text" name="Email" maxlength="30" value="<%= Email %>" required>
	            </div>
	            <div class="form__row">
	                <label class="form__label" for="txtRole"><b>Role:</b></label>
	               <input class="form__input" type="text" name="Role" value="<%= Role %>" required>
	            </div>
	            <div class="form__row">
	                <input class="form__button" type="submit" value="Delete" name="delete">
	            </div>
	    </form>
	  </div>
</body>
</html>