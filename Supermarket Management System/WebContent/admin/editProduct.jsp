<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<%@include file="../footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>
<style>
.back {
	color: white;
	margin-left: 2.5%
}
</style>
</head>
<body>
	
	<%
	String id = request.getParameter("id");
	try {
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from product where id='" + id + "'");
		while (rs.next()) {
	%>
	

	<div id='container'>
		<div class='add'>
			<form action="editProductAction.jsp" method="post">
				<input type="hidden" name="id" value="<%out.println(id);%>">
				<input type="text" name="name" autocomplete="off" value="<%=rs.getString(2)%>" required> 
				<input type="text" name="category" autocomplete="off" value="<%=rs.getString(3)%>" required> 
				<input type="number" name="price" autocomplete="off" value="<%=rs.getString(4)%>" required>
				<input type="submit" value="Save">
			</form>
		</div>
	</div>

	<%
	}
	} catch (Exception e) {
	System.out.println(e);
	}
	%>

</body>
<br>
<br>
<br>
</body>
</html>