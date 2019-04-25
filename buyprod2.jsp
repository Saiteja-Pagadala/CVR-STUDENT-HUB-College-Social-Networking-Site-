<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String agent=request.getParameter("agent");
String pname=request.getParameter("pname");
String quantity=request.getParameter("quantity");
String ordquantity=request.getParameter("ordquantity");
String cemail=(String)session.getAttribute("cemail");
String aphone="";
String cphone="";
int quan=0;
int ordquan=0;
int updquan=0;
System.out.print(quantity);

System.out.print(ordquantity);

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/msale";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);

String sql1="select phone from areg where aemail='"+agent+"'";
Statement ps1=con.createStatement();
ResultSet rs1=ps1.executeQuery(sql1);
while(rs1.next())
{
	aphone=rs1.getString(1);
}

String sql2="select phone from custreg where cemail='"+cemail+"'";
Statement ps2=con.createStatement();
ResultSet rs2=ps2.executeQuery(sql2);
while(rs2.next())
{
	cphone=rs2.getString(1);
}

String sql3="insert into soldproducts (pname,agent,client,aphone,cphone,quantity,pid) values (?,?,?,?,?,?,?)";
PreparedStatement ps3=con.prepareStatement(sql3);
ps3.setString(1,pname);
ps3.setString(2,agent);
ps3.setString(3,cemail);
ps3.setString(4,aphone);
ps3.setString(5,cphone);
ps3.setString(6,ordquantity);
ps3.setString(7,id);


ps3.executeUpdate();

String sql4="update product set status='sold' where id=?";
PreparedStatement ps4=con.prepareStatement(sql4);
ps4.setString(1,id);
ps4.executeUpdate();


quan = Integer.parseInt(quantity);
ordquan = Integer.parseInt(ordquantity);
updquan = quan-ordquan;

String sql6="update product set quantity='"+updquan+"' where id=?";
PreparedStatement ps6=con.prepareStatement(sql6);
ps6.setString(1,id);
int x1=ps6.executeUpdate();
if(x1!=0)
{
	response.sendRedirect("custmail.jsp?id="+id+"&email="+agent+"'");
}
%>