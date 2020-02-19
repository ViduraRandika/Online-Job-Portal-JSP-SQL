<%@ page import="java.sql.*" %>
<html>
<head>
<title>Admin Remove Action</title>
</head>
<body>
<%
String username=(String)session.getAttribute("username");
String usertype=(String)session.getAttribute("usertype");
if(username==null || usertype!="admin") //to check user is logged in, if user is not logged username will be null and page will redirect to index.jsp
{
	 response.sendRedirect("index.jsp");
}
%>
<% 
String user=request.getParameter("user");
String type=request.getParameter("type");

 Connection con=null;
 Statement stmt=null;

 
  Class.forName("com.mysql.jdbc.Driver");
  String url="jdbc:mysql://localhost:3306/ojp";

  con=DriverManager.getConnection(url,"root","");
  stmt=con.createStatement();
  
  if(type.equals("jobseeker"))
  {
 
	  int i=stmt.executeUpdate("delete from jobseekerprofile where username='"+user+"' ");
	  int j=stmt.executeUpdate("delete from login where username='"+user+"' and usertype='"+type+"' ");
	 
	  stmt.close();
	  con.close();
          if(i>0 && j>0){
          response.sendRedirect("adminrecruiterreport.jsp");
          }
  }
  
  
  if(type=="recruiter")
  {	  
  
	  
	  int i= stmt.executeUpdate("delete from recruiterprofile where username='"+user+"' ");
	  int j= stmt.executeUpdate("delete from login where username='"+user+"' and usertype='"+type+"' ");
	 
	  stmt.close();
	  con.close();
          
          if(i>0 && j>0){
           response.sendRedirect("adminrecruiterreport.jsp");
          }
  
 
  }
  
%>
</body>
</html>