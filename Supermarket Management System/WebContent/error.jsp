<%@page isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
* {
	transition: all 0.6s;
}

html {
	height: 100%;
}

body {
	font-family: 'Lato', sans-serif;
	color: #888;
	margin: 0;
}

#main {
	display: table;
	width: 100%;
	height: 100vh;
	text-align: center;
}

.fof {
	display: table-cell;
	vertical-align: middle;
}

.fof h1 {
	font-size: 50px;
	display: inline-block;
	padding-right: 12px;
	animation: type .5s alternate infinite;
}


.login {
	color: white;
	text-align: center;
	padding: 15px;
	text-decoration: none;
	font-size: 18px;
	line-height: 25px;
	border-radius: 4px;
	background-color: #28a745;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error</title>
</head>
<body>
	<div id="main">
		<div class="fof">
			<h1>Error 404</h1>
			<p><a class="login" href="login.jsp">Login</a></p>
		</div>
	</div>
	
</body>
</html>