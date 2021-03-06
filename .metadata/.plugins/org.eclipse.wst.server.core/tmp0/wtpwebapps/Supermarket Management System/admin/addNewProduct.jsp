<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<%@include file="../footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>

<style>
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

.alert-danger {
	color: #721c24;
	background-color: #f8d7da;
	border-color: #f5c6cb;
}

.alert-warning {
	color: #856404;
	background-color: #fff3cd;
	border-color: #ffeeba;
}
</style>

</head>
<body>
	<%
	String msg = request.getParameter("msg");
	if ("done".equals(msg)) {
	%>
	<h3 class="alert alert-success">Product Added Successfully!</h3>
	<%
	}
	%>
	<%
	if ("wrong".equals(msg)) {
	%>
	<h3 class="alert alert-danger">Some thing went wrong! Try Again!</h3>
	<%
	}
	%>
	<%
	int id = 1;
	try {
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select max(id) from product");
		while (rs.next()) {
			id = rs.getInt(1);
			id = id + 1;
		}
	} catch (Exception e) {
	}
	%>
	
	
	<div id='container'>
		<div class='add'>
			<form action="addNewProductAction.jsp" method="post">
				<input type="hidden" name="id" value="<%out.println(id);%>">
				<input type="text" name="name" autocomplete="off" placeholder="Enter Name" required>
				<input type="text" name="category" autocomplete="off" placeholder="Enter category" required>
				<input type="number" name="price" autocomplete="off" placeholder="Enter price" required>
				<input type="submit" value="Save">
			</form>
		</div>

	</div>
	
	
</body>
<br>
<br>
<br>
</body>
</html>