<%@page import="java.sql.*"%>
<%
String aname=request.getParameter("aname");
String password=request.getParameter("password");
//step 1 
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/msale";
String name="root";
String pwd="root";
//step 2
Connection con=DriverManager.getConnection(url,name,pwd);
if(aname.equals("admin") && password.equals("admin"))
{
	
	response.sendRedirect("aoptions.jsp?login=success");
}
else
{
	
	response.sendRedirect("adminlogin.jsp?login=failed");
}
%>