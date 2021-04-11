<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<%@include file="../footer.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3 {
	color: yellow;
	text-align: center;
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

.edit {
	color: white;
	text-align: center;
	padding: 10px;
	text-decoration: none;
	font-size: 18px;
	line-height: 25px;
	border-radius: 4px;
	background-color: #007bff;
}
</style>
</head>
<body>
	<!-- <div style="color: white; text-align: center; font-size: 30px;">
		Edit Products <i class='fab fa-elementor'></i>
	</div> -->
	<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
	<h3 class="alert alert-success">Product Successfully Updated!</h3>
	<%} %>
	<%
if("wrong".equals(msg))
{
%>
	<h3 class="alert alert-danger">Some thing went wrong! Try again!</h3>
	<%} %>
	<table>
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Category</th>
				<th scope="col"><i class="fa fa-inr"></i> Price</th>
				<th scope="col">Edit <i class='fas fa-pen-fancy'></i></th>
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
				<td><a class="edit"
					href="editProduct.jsp?id=<%=rs.getString(1) %>">Edit <i
						class='fas fa-pen-fancy'></i>
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