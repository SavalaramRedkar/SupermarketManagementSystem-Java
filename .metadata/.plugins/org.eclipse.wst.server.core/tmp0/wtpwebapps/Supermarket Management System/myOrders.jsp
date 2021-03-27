<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
	<div style="color: white; text-align: center; font-size: 30px;">
		My Orders <i class='fab fa-elementor'></i>
	</div>

	<%
try {
	
	Connection con = ConnectionProvider.getCon();
	Statement st1 = con.createStatement();
	ResultSet rs1 = st1.executeQuery("select * from confirm_orders where email = '"+email+"' ");
	if (rs1.next()) {
	%>

	<table>
		<thead>
			<tr>
				<th scope="col">S.No</th>
				<th scope="col">Product Name</th>
				<th scope="col">category</th>
				<th scope="col"><i class="fa fa-inr"></i> Price</th>
				<th scope="col">Quantity</th>
				<th scope="col"><i class="fa fa-inr"></i> Sub Total</th>

			</tr>
		</thead>
		<tbody>
			<%
			int sno=0;
			Statement st=con.createStatement();
	      	ResultSet rs=st.executeQuery("select * from product inner join cart on product.id=cart.product_id and cart.email='"+email+"' and cart.address is NULL");
			while(rs.next())
			{
			%>
			<tr>
				<%sno=sno+1; %>
				<td>
					<%out.println(sno); %>
				</td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(8) %></td>
				<td><%=rs.getString(10) %></td>
			</tr>
			<%
	      }
	      
	%>

		</tbody>
	</table>

	<%
	}
	
	
} catch (Exception e) {
	System.out.println(e);	
}

%>

<br>
<br>

</body>
</html>