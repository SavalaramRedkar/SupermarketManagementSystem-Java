<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<style>
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: 'Roboto Mono', monospace;
}

.header {
	overflow: hidden;
	background-color: black;
	padding: 20px 10px;
}

.header a {
	float: left;
	color: white;
	text-align: center;
	padding: 12px;
	text-decoration: none;
	font-size: 18px;
	line-height: 25px;
	border-radius: 4px;
}

.header a.logo {
	font-size: 25px;
}

.header a:hover {
	background-color: #ddd;
	color: black;
}

.header a.active {
	background-color: dodgerblue;
	color: white;
}

.header-right {
	float: right;
}

@media screen and (max-width: 500px) {
	.header a {
		float: none;
		display: block;
		text-align: left;
	}
	.header-right {
		float: none;
	}
}
</style>

</head>


<div class="header">
	<%
	String email = session.getAttribute("email").toString();
	%>
	<a href="home.jsp" class="logo">Supermarket Management System</a>
	<div class="header-right">
		<a style="text-decoration: none;"> <% out.println(email); %>&nbsp;<i
			class='fas fa-user-alt'></i>
		</a> 
		<a href="home.jsp">Home&nbsp;<i class="fa fa-institution"></i></a> 
		<a href="myCart.jsp">My Cart&nbsp;<i class='fas fa-cart-arrow-down'></i></a>
		<a href="myOrders.jsp">My Orders&nbsp;<i class='fab fa-elementor'></i></a>
		<a href="logout.jsp">Logout&nbsp;<i class='fas fa-share-square'></i></a>
	</div>
</div>

<br>