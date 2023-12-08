<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
        integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
        crossorigin="anonymous" />
	<link rel="stylesheet" href="css/main.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">

    <title>Forgot Password</title>
</head>

<body>
<div class="container" id="container">
		<div class="form-container reset-container">
			<form action="resetPasswordServlet" method="post">
				<h1>Forgot Password?</h1>
				<p class="lock-icon"><i class="fas fa-lock"></i></p>
				<span>You can reset your Password here</span>
				<input type="text" name="email" placeholder="Email address">
				<input type="password" name="password" placeholder="New password" />
				<button type="submit" name="reset">Reset My Password</button>
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-right">
					<h1>Booking hotel login form</h1>
					<p>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
				</div>
			</div>
		</div>
	</div>
</body>

</html>