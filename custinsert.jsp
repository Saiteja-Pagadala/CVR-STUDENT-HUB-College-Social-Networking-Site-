<%@page import="java.sql.*"%>
<%
String cname=request.getParameter("cname");
String cemail=request.getParameter("cemail");
String password=request.getParameter("password");
String phone=request.getParameter("phone");
String gender=request.getParameter("gender");


Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/msale";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
String sql="insert into custreg (cname,cemail,password,phone,gender) values (?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,cname);
ps.setString(2,cemail);
ps.setString(3,password);
ps.setString(4,phone);
ps.setString(5,gender);
int x=ps.executeUpdate();
if(x!=0)
{
	response.sendRedirect("custlogin.jsp");
}
%>