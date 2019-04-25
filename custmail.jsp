<%@page import="java.sql.*"%>
<%@page import="Mail.mail" %>
<%
    String id = request.getParameter("id");
	String buyeremail="";
	String selleremail="";
	String buyerphone="";
	String sellerphone="";
	
	

	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/msale";
	String name="root";
	String pwd="root";
	Connection con=DriverManager.getConnection(url,name,pwd);
	String sql="select agent,client,aphone,cphone from soldproducts where pid=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,id);

	ResultSet rs=ps.executeQuery();
	while(rs.next()){
		buyeremail=rs.getString("client");
		selleremail=rs.getString("agent");
		buyerphone=rs.getString("cphone");
		sellerphone=rs.getString("aphone");
	}
	
    String buyermsg = "New Booking Notification! The Product Seller details are EMAILID: " + selleremail + " PHONENO: " + sellerphone;
	String sellermsg = "New Booking Notification! The Product Buyer details are EMAILID: " + buyeremail + " PHONENO: " + buyerphone;


	mail.mailsend(sellermsg, selleremail); 

    mail.mailsend(buyermsg, buyeremail); 

    response.sendRedirect("custbuyplots.jsp");
     
%>
