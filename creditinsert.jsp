<%@page import="java.sql.*"%>
<%
String sdate=request.getParameter("sdate");
String invoice=request.getParameter("invoice");
String cemail=request.getParameter("cemail");
String net=request.getParameter("net");
String gst=request.getParameter("gst");
String gross=request.getParameter("gross");
String aemail=request.getParameter("aemail");
String tp=request.getParameter("tp");
String emi=request.getParameter("emi");
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/Material Sale";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
String sql="insert into credit (sdate,invoice,cemail,net,gst,gross,aemail,tp,emi) values (?,?,?,?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,sdate);
ps.setString(2,invoice);
ps.setString(3,cemail);
ps.setString(4,net);
ps.setString(5,gst);
ps.setString(6,gross);
ps.setString(7,aemail);
ps.setString(8,tp);
ps.setString(9,emi);
int x=ps.executeUpdate();
if(x!=0)
{
	response.sendRedirect("custbuyplots.jsp");
}
%>