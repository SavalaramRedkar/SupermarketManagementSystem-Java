<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Cart</title>
<style>
h3 {
	color: yellow;
	text-align: center;
}

.remove {
	color: white;
	text-align: center;
	padding: 10px;
	text-decoration: none;
	font-size: 18px;
	line-height: 25px;
	border-radius: 4px;
	background-color: #dc3545;
}

.order {
	color: white;
	text-align: center;
	padding: 10px;
	text-decoration: none;
	font-size: 18px;
	line-height: 25px;
	border-radius: 4px;
	background-color: #28a745;
	float: right;
	margin-right: 40px;
	border: 1px solid transparent;
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

.proceed {
	color: white;
	text-align: center;
	padding: 10px;
	text-decoration: none;
	font-size: 18px;
	line-height: 25px;
	border-radius: 4px;
	background-color: #28a745;
	float: right;
	margin-right: 40px;
	border: 1px solid transparent;
}
</style>
</head>
<body>
	<div style="color: white; text-align: center; font-size: 30px;">
		My Cart <i class='fas fa-cart-arrow-down'></i>
	</div>
	<%
	String msg = request.getParameter("msg");
	if ("notPossible".equals(msg)) {
	%>
	<h3 class="alert alert-warning">There is only one Quantity! So
		click on remove!</h3>
	<%
	}
	%>
	<%
	if ("inc".equals(msg)) {
	%>
	<h3 class="alert alert-success">Quantity Increased Successfully!</h3>
	<%
	}
	%>
	<%
	if ("dec".equals(msg)) {
	%>
	<h3 class="alert alert-danger">Quantity Decreased Successfully!</h3>
	<%
	}
	%>
	<%
	if ("remove".equals(msg)) {
	%>
	<h3 class="alert alert-danger">Product Successfully Removed!</h3>
	<%
	}
	%>
	<table>
		<thead>
			<%
			int total = 0;
			int sno = 0;
			try {
				Connection con = ConnectionProvider.getCon();
				Statement st = con.createStatement();
				ResultSet rs1 = st.executeQuery("select sum(total) from cart where email='" + email + "' and address is NULL");
				while (rs1.next()) {
					total = rs1.getInt(1);
				}
			%>
			<tr>
				<th scope="col" style="background-color: #28a745;">Total:&nbsp;<i
					class="fa fa-inr"></i>&nbsp;<% out.println(total); %>
				</th>
				<%
				// if(total>0){
				%>
				<%
				// }
				%>
			</tr>
		</thead>
		<thead>
			<tr>
				<th scope="col">S.No</th>
				<th scope="col">Product Name</th>
				<th scope="col">Category</th>
				<th scope="col"><i class="fa fa-inr"></i> price</th>
				<th scope="col">Quantity</th>
				<th scope="col">Sub Total</th>
				<th scope="col">Remove <i class='fas fa-trash-alt'></i></th>
			</tr>
		</thead>
		<tbody>
			<%
			ResultSet rs = st.executeQuery("select * from product inner join cart on product.id=cart.product_id and cart.email='"
					+ email + "' and cart.address is NULL");
			while (rs.next()) {
			%>
			<tr>
				<%
				sno = sno + 1;
				%>
				<td>
					<%
					out.println(sno);
					%>
				</td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><i class="fa fa-inr"></i>&nbsp;<%=rs.getString(4)%></td>
				<td><a style="color: black;"
					href="incDecQuantityAction.jsp?id=<%=rs.getString(1)%>&quantity=inc">
						<i class='fas fa-plus-circle'></i>
				</a> &nbsp;<%=rs.getString(8)%>&nbsp; <a style="color: black;"
					href="incDecQuantityAction.jsp?id=<%=rs.getString(1)%>&quantity=dec">
						<i class='fas fa-minus-circle'></i>
				</a></td>
				<td><i class="fa fa-inr"></i>&nbsp;<%=rs.getString(10)%></td>
				<td><a class="remove"
					href="removeFromCart.jsp?id=<%=rs.getString(1)%>">Remove <i
						class='fas fa-trash-alt'></i>
				</a></td>
			</tr>
			<%
			}

			} catch (Exception e) {
			}
			%>
		</tbody>
	</table>
	<br>
	<br>
	<!-- <button class="order">Proceed to order</button> -->
	<a class="proceed" href="proceedOrder.jsp?">Proceed to order</a>

</body>
</html>