<%@page import="java.sql.*"%>
<%
String cemail=request.getParameter("cemail");
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/msale";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
String sql="select * from custreg where cemail=? and password=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,cemail);
ps.setString(2,password);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	session.setAttribute("cemail",cemail);
	response.sendRedirect("custoptions.jsp?login=success");
}
else
{
	response.sendRedirect("custlogin.jsp?login=failed");
}
%>