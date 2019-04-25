 <%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.*, java.io.*" %>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.File"%>
<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" %>
 <!-- to connect a database-->
 
<%

Class.forName("com.mysql.jdbc.Driver");
	Connection	con = DriverManager.getConnection("jdbc:mysql://localhost/msale","root","root");
int id=0;
String sql5="select id from product where filepath='unassign'";
Statement ps5=con.createStatement();
ResultSet rs5=ps5.executeQuery(sql5);
while(rs5.next())
{
	id = rs5.getInt(1);
}
try
{
String ImageFile="";
String itemName = "";
boolean isMultipart = ServletFileUpload.isMultipartContent(request);
if (!isMultipart)
{
}
else
{
FileItemFactory factory = new DiskFileItemFactory();
ServletFileUpload upload = new ServletFileUpload(factory);
List items = null;
try
{
items = upload.parseRequest(request);
}
catch (FileUploadException e)
{
e.getMessage();
}
 
Iterator itr = items.iterator();
while (itr.hasNext())
{
FileItem item = (FileItem) itr.next();
if (item.isFormField())
{
String name = item.getFieldName();
String value = item.getString();
if(name.equals("ImageFile"))
{
ImageFile=value;
}
 
}
else
{
try
{
itemName = item.getName();
File savedFile = new File("C:\\Tomcat\\webapps\\MaterialSale\\img\\"+itemName);
item.write(savedFile);
}
catch (Exception e)
{
out.println("Error"+e.getMessage());
}
}
}
try
{
	
	Statement st=con.createStatement();
	
int x1=st.executeUpdate("update product set filepath='"+itemName+"' where id='"+id+"'");
if(x1!=0)
{
	response.sendRedirect("agentsalesdata.jsp");
}
}
catch(Exception el)
{
out.println("Inserting error"+el.getMessage());
el.printStackTrace();
}
}
}
catch (Exception e){
out.println(e.getMessage());
}
%>