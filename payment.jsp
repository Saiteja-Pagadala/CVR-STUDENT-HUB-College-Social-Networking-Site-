<%@page import="java.sql.*"%>
<%
String agent=request.getParameter("agent");
String id=request.getParameter("id");
String pname=request.getParameter("pname");
String client=(String)session.getAttribute("cemail");
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/msale";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
String sql="insert into soldproducts (pname,agent,client) values (?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,pname);
ps.setString(2,agent);
ps.setString(3,client);
int x=ps.executeUpdate();

String sql1="update product set status='sold' where id=?";
PreparedStatement ps1=con.prepareStatement(sql1);
ps1.setString(1,id);
int x1=ps1.executeUpdate();
if(x1!=0)
{
	response.sendRedirect("custbuyplots.jsp");
}
%>