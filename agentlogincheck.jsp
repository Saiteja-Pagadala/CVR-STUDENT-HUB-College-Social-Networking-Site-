<%@page import="java.sql.*"%>
<%
String aemail=request.getParameter("aemail");
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/msale";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
String sql="select * from areg where aemail=? and password=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,aemail);
ps.setString(2,password);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	session.setAttribute("aemail",aemail);
	response.sendRedirect("agentoptions.jsp?login=success");
}
else
{
	response.sendRedirect("agentlogin.jsp?login=failed");
}
%>