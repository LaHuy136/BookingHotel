<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<!-- My CSS -->
	<link rel="stylesheet" href="./css/side-bar.css">

	<title>AdminHub</title>
</head>
<body>


	<!-- SIDEBAR -->
	<section id="sidebar">
		<a href="#" class="brand">
			<i class='bx bxs-smile'></i>
			<span class="text">AdminHub</span>
		</a>
		<ul class="side-menu top">
			<li class="active">
				<a href="./dashboard.jsp" target="t3">
					<i class='bx bxs-dashboard' ></i>
					<span class="text">Dashboard</span>
				</a>
			</li>
			<li>
				<a href="./bookings.jsp" target="t3">
					<i class='bx bx-list-plus'></i>
					<span class="text">Bookings</span>
				</a>
			</li>
			<li>
				<a href="./rooms.jsp" target="t3">
					<i class='bx bx-building-house'></i>
					<span class="text">Rooms</span>
				</a>
			</li>
			<li>
				<a href="./users.jsp" target="t3">
					<i class='bx bx-user-circle'></i>
					<span class="text">User</span>
				</a>
			</li>
			<li>
				<a href="./requests.jsp" target="t3">
					<i class='bx bx-mail-send'></i>
					<span class="text">Requests</span>
				</a>
			</li>
			<li>
				<a href="./team.jsp" target="t3">
					<i class='bx bxs-group' ></i>
					<span class="text">Team</span>
				</a>
			</li>
		</ul>
		<ul class="side-menu">
			<li>
				<a href="#" class="setting" target="t3">
					<i class='bx bx-cog'></i>
					<span class="text">Setting</span>
				</a>
			</li>
			<li>
				<a href="#" class="logout">
					<i class='bx bx-log-out'></i>
					<span class="text">Logout</span>
				</a>
			</li>
		</ul>
	</section>
	<!-- SIDEBAR -->
	<script src="./script/side-bar.js"></script>
</body>
</html>