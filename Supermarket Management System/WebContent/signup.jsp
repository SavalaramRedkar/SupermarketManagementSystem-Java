<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Sign-Up</title>
</head>
<body>
	<div id='container'>
		<div class='signup'>
			<form action="signupAction.jsp" method="post" autocomplete="off">
				<div class="imgcontainer">
					<img src="https://img.icons8.com/officel/2x/person-male.png"
						alt="Avatar" class="avatar">
				</div>
				<input type="text" name="name" placeholder="Enter Name" autocomplete="off" required>
				<input type="email" name="email" placeholder="Enter Email" autocomplete="off" required>
				<input type="number" name="mobilenumber"
					placeholder="Enter Mobile Number" autocomplete="off" required> <input
					type="password" name="password" placeholder="Enter Password" autocomplete="off"
					required> <input type="submit" value="Sign up">
			</form>
			<h3>
				<a href="login.jsp">Login</a>
			</h3>
		</div>

	</div>

</body>
</html>