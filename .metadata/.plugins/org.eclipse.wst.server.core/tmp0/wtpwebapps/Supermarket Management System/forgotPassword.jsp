<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Forgot Password</title>
</head>
<body>
	<div id='container'>
		<div class='signup'>
			<form action="forgotPasswordAction.jsp" method="post">
				<div class="imgcontainer">
					<img src="https://img.icons8.com/officel/2x/person-male.png"
						alt="Avatar" class="avatar">
				</div>
				<input type="email" name="email" placeholder="Enter Email"
					autocomplete="off" required> <input type="number"
					name="mobilenumber" placeholder="Enter Mobile Number"
					autocomplete="off" required> <input type="password"
					name="newPassword" placeholder="Enter your new password to set"
					autocomplete="off" required> <input type="submit"
					value="Save">
			</form>
			<h3>
				<a href="">Login</a>
			</h3>
		</div>

	</div>
</body>
</html>