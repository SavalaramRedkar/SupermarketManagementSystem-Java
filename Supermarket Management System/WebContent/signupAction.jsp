<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%String name = request.getParameter("name");
String email = request.getParameter("email");
String mobilenumber = request.getParameter("mobilenumber");
String password = request.getParameter("password");

try {
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into users (name,email,mobilenumber,password) values(?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, mobilenumber);
	ps.setString(4, password);
	ps.executeUpdate();
	response.sendRedirect("login.jsp?msg=valid");
} catch (Exception e) {
	System.out.println(e);
	response.sendRedirect("signup.jsp?msg=invalid");
}%>