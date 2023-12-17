<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
    String Name = request.getParameter("Name"); 
    String Email = request.getParameter("Email"); 
    String Phone = request.getParameter("Phone"); 
    String Message = request.getParameter("Message");
    %>
     <div class="form-container">
	    <form action="${pageContext.request.contextPath}/handleContactServlet" method="post">
	    	  <div class="form__row">
	                <label class="form__label" for="txtName"><b>Name:</b></label>
	                <input class="form__input" type="text" name="Name" value="<%= Name %>" readonly>
	            </div>
	            <div class="form__row">
	                <label class="form__label" for="txtEmail"><b>Email:</b></label>
	               <input class="form__input" type="text" name="Email" value="<%= Email %>" readonly>
	            </div>
	             <div class="form__row">
	                <label class="form__label" for="txtPhone"><b>Phone Number:</b></label>
	               <input class="form__input" type="text" name="Phone" value="<%= Phone %>" readonly >
	            </div>
	            <div class="form__row">
	                <label class="form__label" for="txtMessage"><b>Message:</b></label>
	              <input class="form__input" type="text" name="Message" maxlength="50" value="<%= Message %>">
	            </div>
	            <div class="form__row">
	                <input class="form__button" type="submit" value="Update" name="update">
	                <input class="form__button" type="submit" value="Delete" name="delete">
	            </div>
	    </form>
	  </div>
</body>
</html>