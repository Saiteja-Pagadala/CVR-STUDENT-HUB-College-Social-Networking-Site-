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
	Connection	con = DriverManager.getConnection("jdbc:mysql://localhost/Material Sale","root","root");
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
File savedFile = new File("C:\\tomcat\\webapps\\Material SalePro\\img\\"+itemName);
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
	String fno=(String)session.getAttribute("loc");
	Statement st=con.createStatement();
	
st.executeUpdate("update addplot set filepath='"+itemName+"' where loc='"+fno+"'");
 response.sendRedirect("agentpm.jsp?msg=upload success");
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