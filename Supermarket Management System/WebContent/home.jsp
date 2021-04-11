<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="preconnect" href="https://fonts.gstatic.com">
<title>Home</title>
<style>
h3 {
	color: yellow;
	text-align: center;
}

.cart {
	color: white;
	text-align: center;
	padding: 10px;
	text-decoration: none;
	font-size: 18px;
	line-height: 25px;
	border-radius: 4px;
	background-color: #28a745;
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
	<!-- <div style="color: white; text-align: center; font-size: 30px;">
		Home <i class="fa fa-institution"></i>
	</div> -->
	<%
String msg=request.getParameter("msg");
if("added".equals(msg))
{
%>
	<h3 class="alert alert-success">Product added successfully!</h3>
	<%} %>
	<%
if("exist".equals(msg))
{
%>
	<h3 class="alert alert-warning">Product already exist in you cart! Quantity
		increased!</h3>
	<%} %>
	<%
if("invalid".equals(msg))
{
%>
	<h3 class="alert alert-danger">Some thing went wrong! Try Again!</h3>
	<%} %>
	<table>
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Category</th>
				<th scope="col"><i class="fa fa-inr"></i> Price</th>
				<th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
			</tr>
		</thead>
		<tbody>
			<%
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from product");
	while(rs.next())
	{
%>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><i class="fa fa-inr"></i> <%=rs.getString(4) %></td>
				<td><a class="cart"
					href="addToCartAction.jsp?id=<%=rs.getString(1) %>">Add to cart
						<i class='fas fa-cart-plus'></i>
				</a></td>
			</tr>
			<%
	}
}
catch(Exception e)
{
System.out.println(e);	
}%>
		</tbody>
	</table>
	<br>
	<br>
	<br>

</body>
</html>