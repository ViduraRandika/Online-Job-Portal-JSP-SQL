<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.*" %>
<html>
<head>
<title>JobSeeker- Send Message Action</title>
</head>
<body>
<%
String username=(String)session.getAttribute("username");
String usertype=(String)session.getAttribute("usertype");
if(username==null || usertype!="jobseeker") //to check user is logged in, if user is not logged username will be null and page will redirect to index.jsp
{
	 response.sendRedirect("index.jsp");
}
%>
<% 
Date dnow=new Date();
SimpleDateFormat ft=new SimpleDateFormat("E dd.MM.yyyy 'at' hh:mm:ss");
String user=request.getParameter("user");
String jobid=request.getParameter("jobid");
String message="Applied for ";

 Connection con=null;
 Statement stmt=null;
 
 
  Class.forName("com.mysql.jdbc.Driver");
  String url="jdbc:mysql://localhost:3306/ojp";

  con=DriverManager.getConnection(url,"root","");
  stmt=con.createStatement();
  
  stmt.executeUpdate("insert into message values('"+username+"','"+user+"','"+message+"','"+jobid+"','"+ft.format(dnow)+"')");
    
	  
	  stmt.close();
	  con.close();
  
  response.sendRedirect("jobseekersearchresult.jsp?message=success");
  
%>

</body>
</html>