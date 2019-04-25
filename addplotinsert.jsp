<%@page import="java.sql.*"%>

<%
String pname=request.getParameter("pname");
String ptype=request.getParameter("ptype");
String pdes=request.getParameter("pdes");
String price=request.getParameter("price");
String quantity=request.getParameter("quantity");
String agent=(String)session.getAttribute("aemail");
String status="unsold";
String filepath="unassign";

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/msale";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
String sql="insert into product (pname,ptype,pdes,price,agent,quantity,status,filepath) values (?,?,?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,pname);
ps.setString(2,ptype);
ps.setString(3,pdes);
ps.setString(4,price);
ps.setString(5,agent);
ps.setString(6,quantity);
ps.setString(7,status);
ps.setString(8,filepath);

int x=ps.executeUpdate();
if(x!=0)
{
	response.sendRedirect("uploadimg.jsp");
}
else
{
	response.sendRedirect("addplotinsert.jsp");

}
%>