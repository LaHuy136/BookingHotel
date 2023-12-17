<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
  <link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
  
<body>
	<div class="container" id="container">
		<div class="form-container log-in-container">
			<form action="registerServlet" method="post">
				<h1>Register</h1>
				<input type="text" name="username" placeholder="Name" />
				<input type="email" name="email" placeholder="Email" />
				<input type="password" name="password" placeholder="Password" />
				<input type="password" name="repassword" placeholder="Confirm Password" />
				<button type="submit" name="register">Register</button>
				<p id="already-account">Already have an account ? <a href="Login.jsp" >Login</a></p>
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-right">
					<img src="images/logo.png" alt="#" />
				</div>
			</div>
		</div>
	</div>
</body>
</html>