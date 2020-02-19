<%@ page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
 <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <link href="css/theme.css" rel="stylesheet" media="all">
<title> JobSeeker - Profile </title>
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





 <div class="page-wrapper">
        <!-- HEADER DESKTOP-->
        <header class="header-desktop4">
            <div class="container">
                <div class="header4-wrap">
                    <div class="header__logo">
                        <a href="#">
                            <span class="logo_title"> JobSeeker</span>
                        </a>
                    </div>
                    <div class="header__tool">
                        
                       
                        <div class="account-wrap">
                            <div class="account-item account-item--style2 js-item-menu">
                                <div class="image">
                                    <img src="images/icon/avatar-01.jpg" alt="John Doe" />
                                </div>
                                <div class="content">
                                    <a class="js-acc-btn" href="#"><%=username %></a>
                                </div>
                                <div class="account-dropdown js-dropdown">
                                    
                                    <div class="account-dropdown__body">
                                        <div class="account-dropdown__item">
                                            <a href="jobseekerhome.jsp">
                                                <i class="zmdi zmdi-account"></i>Account</a>
                                        </div>
                                    </div>
                                    <div class="account-dropdown__footer">
                                        <a href="logout.jsp">
                                            <i class="zmdi zmdi-power"></i>Logout</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>





<jsp:include page="jobseekermenu.jsp"/>

 </div>
 <div class="col-xl-9">
<center>
<fieldset>
<legend>Profile Details</legend>
<table>
<%
Connection con=null;
Statement stmt=null;
ResultSet rs=null;

 Class.forName("com.mysql.jdbc.Driver");
 String url="jdbc:mysql://localhost:3306/ojp";
 
 con=DriverManager.getConnection(url,"root","");
 stmt=con.createStatement();
 
 rs=stmt.executeQuery("select * from jobseekerprofile where username='"+username+"'");
 while(rs.next())
 {
%>

<tr>
<td>Basic Details</td>
</tr>
<tr>
<td>Name</td>
<td><%=rs.getString("FNAME") %> <%=rs.getString("LNAME") %></td>
</tr>
<tr>
<td>Designation</td>
<td><%=rs.getString("DESIGNATION") %></td>
</tr>
<tr>
<td>Location</td>
<td><%=rs.getString("LOCATION") %></td>
</tr>
<tr>
<td>Experience</td>
<td><%=rs.getString("EXPERIENCE") %></td>
</tr>
<tr>
<td>Contact Details</td>
</tr>
<tr>
<td>Email</td>
<td><%=rs.getString("EMAIL") %></td>
</tr>
<tr>
<td>Mobile</td>
<td><%=rs.getString("MOBILE") %></td>
</tr>
<tr>
<td>Key Skills</td>
</tr>
<tr align=center>
<td colspan=2><%=rs.getString("KEYSKILLS") %></td>
</tr>
<tr>
<td>Projects</td>
</tr>
<tr align=center>
<td colspan=2><%=rs.getString("PROJECTS") %></td>
</tr>
<tr>
<td>IT Skills</td>
</tr>
<tr align=center>
<td colspan=2><%=rs.getString("ITSKILLS") %></td>
</tr>
<tr>
<td>Education</td>
</tr>
<tr align=center>
<td colspan=2><%=rs.getString("EDUCATION") %></td>
</tr>
<tr>
<td>Certifications</td>
</tr>
<tr align=center>
<td colspan=2><%=rs.getString("CERTIFICATIONS") %></td>
</tr>
<tr>
<td>Work Details</td>
</tr>
<tr align=center>
<td colspan=2><%=rs.getString("WORKDETAILS") %></td>
</tr>
<tr>
<td>Personal Details</td>
</tr>
<tr>
<td>DOB</td>
<td><%=rs.getString("DOB") %></td>
</tr>
<tr>
<td>Gender</td>
<td><%=rs.getString("GENDER") %></td>
</tr>
<tr>
<td>Hometown</td>
<td><%=rs.getString("HOMETOWN") %></td>
</tr>

<tr>
<td>Maritial Status</td>
<td><%=rs.getString("MARITIALSTATUS") %></td>
</tr>
<td>Languages Known</td>
<td><%=rs.getString("LANGUAGESKNOWN") %></td>
</tr>

<tr>
<td>&nbsp</td>
</tr>
<%
 }
 rs.close();
 stmt.close();
 con.close();
 %>
<tr>
<td colspan="2" align="center"><a href="jobseekerupdateprofile.jsp">Edit</a></td>
</tr>
</table>
</fieldset>
</center>


 </div>
                    </div>
                </div>
            </section>
        </div>
        <!-- END PAGE CONTENT  -->

    </div>














 <script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
  
 

    <!-- Main JS-->
    <script src="js/main.js"></script>

</body>

</html>