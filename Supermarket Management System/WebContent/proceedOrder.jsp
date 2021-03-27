<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Placed Order</title>
<style>
h1 {
	color: black;
	text-align: center;
	font-size: 40px;
}

.alert {
	position: relative;
	padding: .75rem 1.25rem;
	margin: auto;
	border: 1px solid transparent;
	border-radius: .25rem;
	width: 800px;
}

.alert-success {
	color: #155724;
	background-color: #d4edda;
	border-color: #c3e6cb;
}
</style>
</head>
<body>
	<%
	try {
		Connection con=ConnectionProvider.getCon();
		PreparedStatement ps=con.prepareStatement("INSERT INTO confirm_orders (email, orderDate) VALUES ('"+email+"', now())");
		ps.executeUpdate();
	%>

	<h1 class="alert alert-success">Your order has been placed
		successfully!</h1>

	<%
	} catch (Exception e) {
		System.out.println(e);	
	}

	%>
</body>
</html>