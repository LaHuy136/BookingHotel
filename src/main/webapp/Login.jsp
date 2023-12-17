<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/main.css">
<title>Login</title>
</head>
<body>
<div class="container" id="container">
		<div class="form-container log-in-container">
			<form action="checkLoginServlet" method="post">
				<h1>Login</h1>
				<span>or use your account</span>
				<input type="email" name="email" placeholder="Email" />
				<input type="password" name="password" placeholder="Password" />
				<a href="ForgotPw.jsp">Forgot your password?</a>
				<button type="submit" name="login">Log In</button>
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