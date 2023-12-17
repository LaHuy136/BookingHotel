<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<!-- My CSS -->
	<link rel="stylesheet" href="./css/header.css">

	<title>AdminHub</title>
</head>
<body>
	
	<!-- CONTENT -->
	<section id="content">
		<nav>
            
			<form action="#">
				<div class="form-input">
					<input type="search" placeholder="Search...">
					<button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
				</div>
			</form>

			
			<%String UserName = (String) session.getAttribute("UserName"); %>
				<figure class="profile">
						<span><%= UserName %></span>
						<img src="img/boy.jpg">
				</figure>
			
		</nav>
	</section>
	<!-- CONTENT -->
	

</body>
</html>