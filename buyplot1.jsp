<%@page import="java.sql.*"%>
<%
String cemail=(String)session.getAttribute("cemail");
String id=request.getParameter("id");
String aemail=request.getParameter("aemail");
String loc=request.getParameter("loc");
String area=request.getParameter("area");
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/Material Sale";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
String sql="update addplot set status='sold', cemail='"+cemail+"' where aemail='"+aemail+"' and loc='"+loc+"' and area='"+area+"'";
Statement st=con.createStatement();
int x=st.executeUpdate(sql);
if(x!=0){
	response.sendRedirect("custoptions.jsp");
}
%>