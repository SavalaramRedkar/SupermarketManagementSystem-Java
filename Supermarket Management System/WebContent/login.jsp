<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
	<div id='container'>
		<div class='signup'>
			<form action="loginAction.jsp" method="post">
				<div class="imgcontainer">
					<img src="https://img.icons8.com/officel/2x/person-male.png"
						alt="Avatar" class="avatar">
				</div>
				<input type="email" name="email" placeholder="Enter Email"
					autocomplete="off" required> <input type="password"
					name="password" placeholder="Enter Password" autocomplete="off"
					required> <input type="submit" value="Login">
			</form>
			<h3>
				<a href="signup.jsp">Sign Up</a>
			</h3>
			<h3>
				<a href="forgotPassword.jsp">Forgot Password?</a>
			</h3>
		</div>

	</div>

</body>
</html>