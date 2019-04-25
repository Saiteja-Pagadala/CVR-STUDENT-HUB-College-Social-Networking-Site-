<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String sname=request.getParameter("sname");
String loc=request.getParameter("loc");
String area=request.getParameter("area");
String amount=request.getParameter("amount");
String phone=request.getParameter("phone");
String status=request.getParameter("status");
String aemail=(String)session.getAttribute("aemail");
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/Material Sale";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
String sql="update addplot set area=?,amount=?,status=? where id=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,area);
ps.setString(2,amount);
ps.setString(3,status);
ps.setString(4,id);
int x=ps.executeUpdate();
if(x!=0)
{
	response.sendRedirect("agentpm.jsp");
}
%>